using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChickenMovement : MonoBehaviour
{
    public enum ChickenTypes { NormalChicken, PhoenixChicken };
    public enum MovementType { Stationary, Mobile };

    [SerializeField] public ChickenTypes chickenType;
    [SerializeField] private ChickenTypes prevChickenType;
    [SerializeField] private MovementType movementType;

    public ChickenTypes CurrentTurtleType
    {
        get { return chickenType; }
        set { chickenType = value; }
    }

    public float movementSpeed = 1f;

    private float minRotationSpeed = 360f;
    private float maxRotationSpeed = 1440f;
    [SerializeField] private float degreeRotationSpeed = 1440f;
    [SerializeField] private float stunDuration = 3f;

    private NodePathing path;
    private BoxCollider chickenBounds;

    private Transform target;
    private Vector3 chickenTargetPos;

    private bool nesting = false;
    private bool idling;
    private float idleTimer = 3f;
    private float timer = 0f;

    private Transform mesh;

    int destinationIndex = 0;

    private Vector3 lastKnownTargetPosition;

    private Vector3 lastFramePosition;
    private Vector3 postionDiff;
    float targetVelocity;
    Vector3 targetDirection;
    float dist;
    float timeToTarget;
    private Vector3 predictedPosition;
    private float rotation;

    private IceTurtleAttack attack;
    private EffectsPoint ePoint;

    [SerializeField] private bool grounded = false;
    [SerializeField] private bool stunned = false;
    [SerializeField] private LayerMask groundedMask;

    private Coroutine co;
    [SerializeField] private Animator anim;

    // Start is called before the first frame update
    void Start()
    {
        ePoint = GetComponent<EffectsPoint>();
        mesh = transform.Find("Mesh");

        maxRotationSpeed = degreeRotationSpeed;
        minRotationSpeed = degreeRotationSpeed / 4;

        prevChickenType = chickenType;

        GetBounds(false);
        NewDestination();
        //SetColor();
    }


    // Update is called once per frame
    void Update()
    {
        if (prevChickenType != chickenType)
        {
            //SetColor();
            prevChickenType = chickenType;
        }

        if (chickenBounds != null)
        {
            if (chickenType == ChickenTypes.NormalChicken)
            {
                if (chickenBounds != null)
                {
                    if (movementType == MovementType.Stationary)
                    {

                    }
                    else
                    {
                        if (!stunned && grounded)
                        {
                            ReachedDestination();
                            //SetNextDestination();
                            //SetNodeTarget();
                        }
                    }
                }
            }

            else
            {
                if (chickenBounds != null)
                {
                    if (movementType == MovementType.Stationary)
                    {

                    }
                    else
                    {
                        if (!stunned && grounded)
                        {
                            ReachedDestination();
                            //SetNextDestination();
                            //SetNodeTarget();
                        }
                    }
                }
            }
        }

        //Sets the mesh's Euler X to always be 0.
        mesh.transform.localEulerAngles = new Vector3(0f, mesh.transform.localEulerAngles.y, 0f);


        IsGrounded();

        anim.SetBool("flying", !grounded);

        anim.speed = ePoint.Frozen ? 0f : 1f;
    }

    void FixedUpdate()
    {
        if (!ePoint.Frozen)
        {
            ChickenBehavior();
        }
    }

    /// <summary>
    /// Sets the movement and rotation of the turtle based on current element state.
    /// </summary>
    private void ChickenBehavior()
    {
        if (chickenType == ChickenTypes.NormalChicken)
        {
            if (chickenBounds != null)
            {
                if (movementType == MovementType.Stationary)
                {
                    anim.SetBool("walking", false);
                }
                else
                {
                    if (!stunned && grounded && !idling && !nesting)
                    {

                        NormalMovement();
                        NormalMeshRotation();
                        anim.SetBool("walking", true);
                    }
                    else
                    {
                        anim.SetBool("walking", false);
                    }
                }
            }

            else
            {
                anim.SetBool("walking", false);
            }
        }

        else //Phoenix Turtle
        {
            if (chickenBounds != null)
            {
                if (movementType == MovementType.Stationary)
                {
                    anim.SetBool("walking", false);
                }
                else
                {
                    if (!stunned && grounded && !idling && !nesting)
                    {

                        NormalMovement();
                        NormalMeshRotation();
                        anim.SetBool("walking", true);
                    }
                    else
                    {
                        anim.SetBool("walking", false);
                    }
                }
            }

            else
            {
                anim.SetBool("walking", false);
            }
        }
    }

    /// <summary>
    /// Finds the closest node path in the scene and sets it to this turtle's path.
    /// </summary>
    private void FindClosestPath()
    {
        GameObject[] chickenPaths = GameObject.FindGameObjectsWithTag("Turtle_Path");

        float distance = Vector3.Distance(chickenPaths[0].transform.position, transform.position);
        GameObject currentPath = chickenPaths[0];

        foreach (GameObject p in chickenPaths)
        {
            float dist = Vector3.Distance(p.transform.position, transform.position);

            if (dist < distance)
            {
                currentPath = p;
                //path = p.GetComponent<NodePathing>();
            }
        }

        path = currentPath.GetComponent<NodePathing>();
    }

    /// <summary>
    /// Finds the closest node on node path and sets it as initial destination.
    /// </summary>
    void InitializeClosestNode()
    {
        int closest = 0;
        float closestDist = Vector3.Distance(path.pathNodes[closest].position, transform.position);

        for (int i = 1; i < path.pathNodes.Count; i++)
        {
            float nodeDist = Vector3.Distance(path.pathNodes[i].position, transform.position);

            if (nodeDist < closestDist)
            {
                closest = i;
            }
        }

        destinationIndex = closest;
    }

    /// <summary>
    /// Sets current target based on destination index.
    /// </summary>
    void SetNodeTarget()
    {
        if (path.pathNodes[destinationIndex] != target)
        {
            target = path.pathNodes[destinationIndex];
        }
    }

    private void GetBounds(bool debug)
    {
        GameObject[] chickenPaths = GameObject.FindGameObjectsWithTag("Chicken_Path");

        BoxCollider currentBounds = chickenPaths[0].GetComponent<BoxCollider>();
        float distance = Vector3.Distance(currentBounds.ClosestPoint(transform.position), transform.position);

        foreach (GameObject p in chickenPaths)
        {
            float dist = Vector3.Distance(p.GetComponent<BoxCollider>().ClosestPoint(transform.position), transform.position);

            if(debug)
            {
                GameObject pos = new GameObject("Transform");
                pos.transform.position = transform.position;

                GameObject obj = new GameObject("Path");
                obj.transform.position = p.GetComponent<BoxCollider>().ClosestPoint(transform.position);

                Debug.Log(gameObject.name + " distance of " + currentBounds.gameObject.name + " = " + dist);
            }            

            if (dist < distance)
            {
                currentBounds = p.GetComponent<BoxCollider>();

                //Debug.Log(currentBounds.gameObject.name + " = " + dist);

                distance = dist;
            }
        }

        chickenBounds = currentBounds.GetComponent<BoxCollider>();
    }

    void ReachedDestination()
    {
        if (Vector3.Distance(transform.position, chickenTargetPos) < 0.6f)
        {
            NewDestination();

            if (Random.value > 0.66f)
            {
                Idle();
            }
        }
    }

    void Idle()
    {
        StartCoroutine(IdleChicken());
    }

    void NewDestination()
    {
        Vector3 Max = BoundsMax();
        Vector3 Min = BoundsMin();

        chickenTargetPos = new Vector3(Random.Range(Min.x, Max.x), Random.Range(Min.y, Max.y), Random.Range(Min.z, Max.z));
    }

    Vector3 BoundsMax()
    {
        return chickenBounds.transform.position - chickenBounds.size / 2;
    }

    Vector3 BoundsMin()
    {
        return chickenBounds.transform.position + chickenBounds.size / 2;
    }

    /// <summary>
    /// Sets the creature's position bases on destination position.
    /// </summary>
    void NormalMovement()
    {
        transform.position = Vector3.MoveTowards(transform.position, new Vector3(chickenTargetPos.x, transform.position.y, chickenTargetPos.z), movementSpeed * Time.deltaTime);

        //transform.position = Vector3.MoveTowards(transform.position, transform.position + mesh.forward, movementSpeed * Time.deltaTime);
    }

    /// <summary>
    /// Sets the creature's mesh rotation to look towards the destination.
    /// </summary>
    void NormalMeshRotation()
    {
        Vector3 dirToTarget = chickenTargetPos - transform.position;

        Quaternion lookRotation = Quaternion.LookRotation(dirToTarget, Vector3.up);

        mesh.transform.rotation = Quaternion.Lerp(mesh.transform.rotation, lookRotation, Time.deltaTime * (degreeRotationSpeed / 360.0f));
    }

    /// <summary>
    /// If the creature is close enough to the destination, updates the destination index to next available node.
    /// </summary>
    void SetNextDestination()
    {
        if (Vector3.Distance(transform.position, target.position) < 0.6f)
        {
            destinationIndex = (destinationIndex + 1 > path.pathNodes.Count - 1 ? 0 : destinationIndex + 1);
        }
    }

    public void ChickenKnockback()
    {
        co = StartCoroutine(Stunned(stunDuration));
    }

    public void ChickenNesting(bool state)
    {
        nesting = state;
    }

    IEnumerator Stunned(float duration)
    {
        stunned = true;
        yield return new WaitUntil(() => grounded);
        yield return new WaitForSeconds(duration);
        stunned = false;

        

        GetBounds(false);

        if (Vector3.Distance(transform.position, chickenBounds.ClosestPoint(transform.position)) > 5f)
        {
            idling = true;
        }

        else
        {
            NewDestination();
            idling = false;
        }
    }

    IEnumerator IdleChicken()
    {
        idling = true;
        yield return new WaitForSeconds(idleTimer);
        idling = false;
    }

    private void IsGrounded()
    {
        grounded = Physics.BoxCast(transform.position, new Vector3(0.5f, 0.05f, 0.5f), -Vector3.up, out RaycastHit hit, Quaternion.identity, 0.45f, groundedMask);
    }
}
