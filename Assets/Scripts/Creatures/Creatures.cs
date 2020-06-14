using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public enum CreatureType { Turtle, Chicken };

public class Creatures : MonoBehaviour
{
    
    public enum ElementalState { Normal, Elemental};
    public enum MovementType { Stationary, Mobile };

    [Header("Types")]
    public CreatureType creature;
    public ElementalState elementState;
    public ElementalState prevElementState;

    [SerializeField] protected MovementType movementType;

    [Header("Movement")]
    public float movementSpeed = 1f;
    protected float minRotationSpeed = 360f;
    protected float maxRotationSpeed = 1440f;
    [SerializeField] protected float degreeRotationSpeed = 1440f;
    [SerializeField] protected float stunDuration = 3f;

    protected int currentNode = 0;
    protected bool nodeDirection = true;

    [Range(0,100)]
    [SerializeField] protected int idleChance;
    [SerializeField] protected float idlePathDist = 8f;
    protected float idleDestroyTimer = 0;
    private float idleDestroyTimeLimit = 15f;
    [SerializeField] protected float deathVelocity = 15f;
    [SerializeField] protected bool grounded = false;
    protected bool prevGrounded = false;
    [SerializeField] protected bool stunned = false;

    [Header("Sounds")]
    [SerializeField] protected float footstepRepeatRate = 0.75f;
    protected float wingFlapRate = 0.5f;

    [Header("References")]
    [SerializeField] protected Animator anim;
    [SerializeField] protected LayerMask groundedMask;
    protected EffectsPoint ePoint;

    protected NodePathing path;
    protected Transform mesh;
    protected Vector3 targetPos;

    protected bool nesting = false;
    protected bool idling;
    protected float idleTimer = 3f;
    protected float timer = 0f;

    [SerializeField] protected Rigidbody rb;
    protected Coroutine co;
    protected Coroutine footstepsCo;
    protected Coroutine wingFlapCo;

    public event EventHandler OnElementStateHandler;

    /// <summary>
    /// Finds the creature's mesh transform for rotation.
    /// </summary>
    protected void GetMeshTransform()
    {
        mesh = transform.Find("Mesh");
    }

    /// <summary>
    /// Finds the creature's EffectsPoint script attached to the object.
    /// </summary>
    protected void GetEffectsPoint()
    {
        ePoint = GetComponent<EffectsPoint>();
    }

    /// <summary>
    /// Finds the closest node path in the scene and sets it to this creature's path.
    /// </summary>
    protected void FindClosestPath()
    {
        GameObject[] creaturesPaths = GameObject.FindGameObjectsWithTag(creature.ToString() + "_Path");
        if(creaturesPaths.Length > 0)
        {
            float distance = Vector3.Distance(creaturesPaths[0].transform.position, transform.position);
            GameObject currentPath = creaturesPaths[0];

            foreach (GameObject p in creaturesPaths)
            {
                float dist = Vector3.Distance(p.transform.position, transform.position);

                if (dist < distance)
                {
                    currentPath = p;
                }
            }

            path = currentPath.GetComponent<NodePathing>();
        }        
    }

    /// <summary>
    /// Finds the closest node on the node path and sets it as initial destination.
    /// </summary>
    protected void InitializeClosestNode()
    {
        if(path != null)
        {
            if (path.pathType == NodePathing.PathingType.Line)
            {
                int closest = 0;
                if (path.pathNodes.Count > 1)
                {
                    float closestDist = Vector3.Distance(path.pathNodes[closest].position, transform.position);

                    for (int i = 1; i < path.pathNodes.Count; i++)
                    {
                        float nodeDist = Vector3.Distance(path.pathNodes[i].position, transform.position);

                        if (nodeDist < closestDist)
                        {
                            closest = i;
                        }
                    }

                    currentNode = closest;

                    targetPos = path.pathNodes[currentNode].position;
                }
            }
            else
            {
                NewDestination();
            }
        }
    }

    /// <summary>
    /// Gets the next position for the creature to move towards.
    /// </summary>
    protected void NewDestination()
    {
        if (path != null)
        {
            if (path.pathType == NodePathing.PathingType.Line) //Node based movement
            {
                if (path.pathNodes.Count > 1) //If there is more than 1 node
                {
                    if (nodeDirection) //Increased index
                    {
                        if (!path.loopPathing && currentNode == path.pathNodes.Count - 1)
                        {
                            nodeDirection = false;
                            return;
                        }

                        currentNode = (currentNode + 1 > path.pathNodes.Count - 1 ? 0 : currentNode + 1);
                    }

                    else //Decreased index
                    {
                        if (!path.loopPathing && currentNode == 0)
                        {
                            nodeDirection = true;
                            return;
                        }

                        currentNode = (currentNode - 1 < 0 ? path.pathNodes.Count - 1 : currentNode - 1);
                    }
                }

                targetPos = path.pathNodes[currentNode].position;
            }

            else if (path.pathType == NodePathing.PathingType.Area) //Area based movement
            {
                Vector3 min = path.BoundsMin();
                Vector3 max = path.BoundsMax();

                targetPos = new Vector3(UnityEngine.Random.Range(min.x, max.x), path.transform.position.y, UnityEngine.Random.Range(min.z, max.z));
            }
        }
    }

    /// <summary>
    /// Determines if the creature has reached its destination, sets a new destination, and checks if it will idle.
    /// </summary>
    protected void ReachedDestination()
    {
        if (Vector3.Distance(transform.position, targetPos) < 0.6f)
        {
            NewDestination();

            if (UnityEngine.Random.value <= (idleChance / 100f))
            {
                Idle();
                return;
            }
        }
    }

    /// <summary>
    /// Starts the creature idle timer.
    /// </summary>
    protected void Idle()
    {
        StartCoroutine(IdleCreature());
    }

    /// <summary>
    /// Sends an event when this creature changes its elemental state.
    /// </summary>
    protected void ElementStateChange()
    {
        if(prevElementState != elementState)
        {
            OnElementStateHandler?.Invoke(this, null);
            prevElementState = elementState;
        }        
    }

    /// <summary>
    /// Sets the movement and rotation of the turtle based on elemental state.
    /// </summary>
    protected void CreatureMovement()
    {
        if (path != null)
        {
            if (elementState == ElementalState.Normal) //Normal state
            {
                if(movementType == MovementType.Mobile) //Moving
                {
                    if (!stunned && grounded && !idling && !nesting)
                    {

                        NormalMovement();
                        NormalMeshRotation();

                        if(anim != null)
                        {
                            anim.SetBool("walking", true);
                        }
                        
                        return;
                    }
                }
            }
            else //Elemental state
            {
                if (movementType == MovementType.Mobile)
                {
                    if (!stunned && grounded && !idling && !nesting)
                    {

                        ElementalMovement();
                        ElementalMeshRotation();

                        if (anim != null)
                        {
                            anim.SetBool("walking", true);
                        }
                        
                        return;
                    }
                }
                else
                {
                    ElementalMeshRotation();
                }
            }
        }

        if (anim != null)
        {
            anim.SetBool("walking", false);
        }        
    }

    /// <summary>
    /// Moves the creature towards target position. 
    /// </summary>
    protected void NormalMovement()
    {
        transform.position = Vector3.MoveTowards(transform.position, new Vector3(targetPos.x, transform.position.y, targetPos.z), movementSpeed * Time.deltaTime);
    }

    /// <summary>
    /// Rotates the creature's mesh to look towards the target position.
    /// </summary>
    protected void NormalMeshRotation()
    {
        Vector3 dirToTarget = targetPos - transform.position;

        Quaternion lookRotation = Quaternion.LookRotation(dirToTarget, Vector3.up);

        mesh.transform.rotation = Quaternion.Lerp(mesh.transform.rotation, lookRotation, Time.deltaTime * (degreeRotationSpeed / 360.0f));
    }

    /// <summary>
    /// Moves the elemental creature towards target position. Defaults to normal movement style until overridden.
    /// </summary>
    protected virtual void ElementalMovement()
    {
        transform.position = Vector3.MoveTowards(transform.position, new Vector3(targetPos.x, transform.position.y, targetPos.z), movementSpeed * Time.deltaTime);
    }

    /// <summary>
    /// Rotates the elemental creature's mesh to look towards the target position.
    /// </summary>
    protected virtual void ElementalMeshRotation()
    {
        Vector3 dirToTarget = targetPos - transform.position;

        Quaternion lookRotation = Quaternion.LookRotation(dirToTarget, Vector3.up);

        mesh.transform.rotation = Quaternion.Lerp(mesh.transform.rotation, lookRotation, Time.deltaTime * (degreeRotationSpeed / 360.0f));
    }

    /// <summary>
    /// Makes sure the creature only rotations on the Y axis.
    /// </summary>
    protected void MeshRotationCorrection()
    {
        mesh.transform.localEulerAngles = new Vector3(0f, mesh.transform.localEulerAngles.y, 0f);
    }

    /// <summary>
    /// Checks if the creature is currently grounded.
    /// </summary>
    protected void IsGrounded()
    {
        prevGrounded = grounded;
        grounded = Physics.BoxCast(transform.position + (Vector3.up * 0.15f), new Vector3(0.5f, 0.1f, 0.5f), -Vector3.up, out RaycastHit hit, Quaternion.identity, 0.45f, groundedMask);
    }

    /// <summary>
    /// If creature velocity is greater than death velocity, damages creature.
    /// </summary>
    protected void FallDamage()
    {
        if(!prevGrounded && grounded && rb.velocity.magnitude >= deathVelocity)
        {
            IDamagable damagable = GetComponent<IDamagable>();

            if(damagable != null)
            {
                damagable.HealthChange(-10);
            }
        }

        else if(!prevGrounded && grounded)
        {
            //Debug.Log(rb.velocity.magnitude);
        }
    }

    /// <summary>
    /// Sets the creatures animation to flying if it isn't grounded.
    /// </summary>
    protected void IsFlying()
    {
        if (anim != null)
        {
            anim.SetBool("flying", !grounded);
        }     
        
        if(creature == CreatureType.Chicken)
        {
            if(!grounded && !ePoint.Frozen)
            {
                if (wingFlapCo == null)
                {
                    wingFlapCo = StartCoroutine(WingFlap());
                }
            }
        }
    }

    /// <summary>
    /// Sets the creature's animation speed based on frozen state.
    /// </summary>
    protected void IsFrozen()
    {
        if (anim != null)
        {
            anim.speed = ePoint.Frozen ? 0f : 1f;
        }        
    }

    /// <summary>
    /// If the creature is idle for too long, despawns the creature.
    /// </summary>
    protected void IsIdle()
    {
        if(idling)
        {
            idleDestroyTimer += Time.deltaTime;

            if(idleDestroyTimer >= idleDestroyTimeLimit)
            {
                Destroy(this.gameObject);
            }
        }
        else
        {
            idleDestroyTimer = 0f;
        }
    }

    /// <summary>
    /// Plays creature's footstep sounds.
    /// </summary>
     virtual protected void CreatureFootsteps()
    {
        if(!stunned && !idling && grounded)
        {
            if(footstepsCo == null)
            {
                footstepsCo = StartCoroutine(Footsteps());
            }
        }  
    }

    /// <summary>
    /// Gets this creature's foodstep sounds.
    /// </summary>
    /// <returns></returns>
    private string FootstepsType()
    {
        switch (creature)
        {
            case CreatureType.Chicken:
                return AudioEvents.Instance.chicken.chickenFootsteps;
            case CreatureType.Turtle:
                return AudioEvents.Instance.turtle.turtleFootsteps;
            default:
                return null;
        }
    }

    /// <summary>
    /// Calls creature stun coroutine.
    /// </summary>
    public void CreatureStunned()
    {
        if(co != null)
        {
            StopCoroutine(co);
        }

        co = StartCoroutine(Stunned(stunDuration));
    }

    /// <summary>
    /// Sets how long the creature will idle for.
    /// </summary>
    /// <returns></returns>
    protected IEnumerator IdleCreature()
    {
        idling = true;
        yield return new WaitForSeconds(idleTimer);
        idling = false;
    }

    /// <summary>
    /// Sets how long the creature is stunned for.
    /// </summary>
    /// <param name="duration"></param>
    /// <returns></returns>
    protected virtual IEnumerator Stunned(float duration)
    {
        stunned = true;
        yield return new WaitUntil(() => grounded);
        yield return new WaitForSeconds(duration);
        stunned = false;

        if (path != null)
        {
            float pathDist = path.GetClosestDistance(transform.position);
            Debug.Log("Path Dist: " + pathDist);

            if (pathDist > idlePathDist)
            {
                idling = true;
            }
            else
            {
                NewDestination();
                idling = false;
            }
        }

        co = null;
    }

    protected IEnumerator Footsteps()
    {
        FMODUnity.RuntimeManager.PlayOneShotAttached(FootstepsType(), gameObject);
        yield return new WaitForSeconds(footstepRepeatRate);
        footstepsCo = null;
    }

    private IEnumerator WingFlap()
    {
        FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.chicken.chickenWingFlap, gameObject);
        yield return new WaitForSeconds(wingFlapRate);
        wingFlapCo = null;
    }
}
