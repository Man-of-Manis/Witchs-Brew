using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurtleMovement : MonoBehaviour
{
    public enum TurtleTypes { NormalTurtle, IceTurtle };
    public enum MovementType { Stationary, Mobile };
    [SerializeField] private TurtleTypes turtleType;
    [SerializeField] private TurtleTypes prevTurtleType;
    [SerializeField] private MovementType movementType;

    public TurtleTypes CurrentTurtleType
    {
        get { return turtleType; }
        set { turtleType = value; }
    }

    public float movementSpeed = 1f;

    private float minRotationSpeed = 360f;
    private float maxRotationSpeed = 1440f;
    [SerializeField] private float degreeRotationSpeed = 1440f;

    [SerializeField] private Transform turtleHeadPivot;
    private NodePathing path;

    private Transform target;

    private Transform mesh;

    int destinationIndex = 0;

    private Vector3 lastKnownTargetPosition;

    [SerializeField] private Transform spawnPoint;

    [SerializeField] private float detectionDist = 10f;

    [SerializeField] private LayerMask detectionLayer;

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

    // Start is called before the first frame update
    void Start()
    {
        attack = GetComponent<IceTurtleAttack>();
        ePoint = GetComponent<EffectsPoint>();
        mesh = transform.Find("Mesh");

        target = GameManager.Instance.player.transform;

        FindClosestPath();

        if (path != null)
        {
            InitializeClosestNode();
        }

        maxRotationSpeed = degreeRotationSpeed;
        minRotationSpeed = degreeRotationSpeed / 4;

        prevTurtleType = turtleType;
        SetColor();
    }



    private void Update()
    {
        if(prevTurtleType != turtleType)
        {
            SetColor();
            prevTurtleType = turtleType;
        }

        if (path != null)
        {
            if (turtleType == TurtleTypes.NormalTurtle)
            {
                if (path != null)
                {
                    if (movementType == MovementType.Stationary)
                    {

                    }
                    else
                    {
                        if (!stunned && grounded)
                        {
                            SetNextDestination();
                            SetNodeTarget();
                        }
                    }
                }
            }
        }

        //Sets the mesh's Euler X to always be 0.
        mesh.transform.localEulerAngles = new Vector3(0f, mesh.transform.localEulerAngles.y, 0f);
        dist = Vector3.Distance(target.position, turtleHeadPivot.position);

        
        IsGrounded();
    }

    void FixedUpdate()
    {
        TurtleBehavior();
    }

    private void SetColor()
    {
        if (turtleType == TurtleTypes.NormalTurtle)
        {
            TurtleColor(Color.green);
        }
        else
        {
            TurtleColor(Color.cyan);
        }
    }

    private void TurtleColor(Color color)
    {
        MeshRenderer[] rends = GetComponentsInChildren<MeshRenderer>();

        foreach (MeshRenderer m in rends)
        {
            m.material.SetColor("_BaseColor", color);
        }
    }

    /// <summary>
    /// Sets the movement and rotation of the turtle based on current element state.
    /// </summary>
    private void TurtleBehavior()
    {
        if (turtleType == TurtleTypes.NormalTurtle)
        {
            if (path != null)
            {
                if (movementType == MovementType.Stationary)
                {

                }
                else
                {
                    if (!stunned && grounded)
                    {
                        
                        NormalMovement();
                        NormalMeshRotation();
                    }
                }
            }

            attack.EnableBeam = false;
        }

        else //Ice Turtle
        {
            if (movementType == MovementType.Stationary)
            {

            }
            else
            {
                if (!stunned && grounded)
                {
                    SetIceTarget();
                    IceMovement();
                    IceMeshRotation();
                    //PredictiveIceRotation();
                }
            }
        }
    }

    /// <summary>
    /// Finds the closest node path in the scene and sets it to this turtle's path.
    /// </summary>
    private void FindClosestPath()
    {
        GameObject[] turtlePaths = GameObject.FindGameObjectsWithTag("Turtle_Path");

        float distance = Vector3.Distance(turtlePaths[0].transform.position, transform.position);
        GameObject currentPath = turtlePaths[0];

        foreach (GameObject p in turtlePaths)
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
        float closestDist = Vector3.Distance(path.nodePath[closest].position, transform.position);

        for (int i = 1; i < path.nodePath.Length; i++)
        {
            float nodeDist = Vector3.Distance(path.nodePath[i].position, transform.position);

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
        if (path.nodePath[destinationIndex] != target)
        {
            target = path.nodePath[destinationIndex];
        }
    }

    /// <summary>
    /// Sets the creature's position bases on destination position.
    /// </summary>
    void NormalMovement()
    {
        transform.position = Vector3.MoveTowards(transform.position, target.position, movementSpeed * Time.deltaTime);

        //transform.position = Vector3.MoveTowards(transform.position, transform.position + mesh.forward, movementSpeed * Time.deltaTime);
    }

    /// <summary>
    /// Sets the creature's mesh rotation to look towards the destination.
    /// </summary>
    void NormalMeshRotation()
    {
        Vector3 dirToTarget = target.position - transform.position;

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
            destinationIndex = (destinationIndex + 1 > path.nodePath.Length - 1 ? 0 : destinationIndex + 1);
        }
    }

    /// <summary>
    /// Sets the target for the turtle while in ice Form.
    /// </summary>
    void SetIceTarget()
    {
        if (target != GameManager.Instance.player.transform.Find("COM_Target"))
        {
            target = GameManager.Instance.player.transform.Find("COM_Target");
        }
    }

    /// <summary>
    /// Turtle movement while in ice form.
    /// </summary>
    void IceMovement()
    {
        float targetDist = Vector3.Distance(target.position, spawnPoint.position);

        Vector3 targetDirection = (target.position - spawnPoint.position).normalized;

        if (targetDist < detectionDist)
        {
            if (Physics.Raycast(spawnPoint.position, targetDirection, out RaycastHit hit, detectionDist, detectionLayer))
            {
                if (hit.collider.CompareTag("Player"))
                {
                    attack.EnableBeam = true;

                    if (targetDist > 7f)
                    {
                        transform.position = Vector3.MoveTowards(transform.position, target.position, movementSpeed * Time.deltaTime);
                    }

                    else if (targetDist < 2f)
                    {
                        Vector3 oppositePosition = -targetDirection * targetDist;
                        transform.position = Vector3.MoveTowards(transform.position, oppositePosition, movementSpeed * Time.deltaTime);
                    }
                }
            }
        }

        else
        {
            attack.EnableBeam = false;
        }
    }

    /// <summary>
    /// Rotation of the turtle's mesh.
    /// </summary>
    void IceMeshRotation()
    {
        if (dist < detectionDist)
        {
            Vector3 dirToTarget = target.position - spawnPoint.position;

            Quaternion lookRotation = Quaternion.LookRotation(dirToTarget, Vector3.up);

            mesh.transform.rotation = Quaternion.Lerp(mesh.transform.rotation, lookRotation, Time.deltaTime * (degreeRotationSpeed / 360.0f));
        }
    }

    void PredictiveIceRotation()
    {
        Vector3 dirToTarget = target.position - turtleHeadPivot.position;

        postionDiff = target.position - lastFramePosition;

        targetVelocity = postionDiff.magnitude / Time.deltaTime;

        //targetDirection = postionDiff.normalized;

        targetDirection = GameManager.Instance.player.transform.forward.normalized;

        timeToTarget = dist / 15f;

        predictedPosition = target.position + (targetDirection * (targetVelocity) * timeToTarget);


        Vector3 dirToPrediction = predictedPosition - turtleHeadPivot.position;

        Quaternion lookRotation = Quaternion.LookRotation(dirToPrediction, Vector3.up);

        rotation = degreeRotationSpeed / dist;

        rotation = Mathf.Clamp(rotation, minRotationSpeed, maxRotationSpeed);

        turtleHeadPivot.rotation = Quaternion.Lerp(turtleHeadPivot.rotation, lookRotation, Time.deltaTime * (rotation / 360.0f));

        lastFramePosition = target.position;
    }


    public void TurtleKnockback()
    {
        co = StartCoroutine(Stunned(2f));
    }

    IEnumerator Stunned(float duration)
    {
        stunned = true;
        yield return new WaitForSeconds(duration);
        stunned = false;
    }

    private void IsGrounded()
    {
        grounded = Physics.BoxCast(transform.position, new Vector3(0.8f, 0.05f, 1f), -Vector3.up, out RaycastHit hit, Quaternion.identity, 0.25f, groundedMask);
    }

    private void IceState()
    {
        turtleType = TurtleTypes.IceTurtle;
        TurtleColor(Color.cyan);
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Ice_Crystal"))
        {
            if(ePoint.OnFire && !ePoint.Frozen)
            {
                BluePotionEffect eff = new BluePotionEffect();
                eff.IceBlock = attack.iceBlock;
                eff.SmallEffect(gameObject);
                Destroy(eff);
                ePoint.OnFire = false;
            }
            else if(!ePoint.OnFire && !ePoint.Frozen)
            {
                ePoint.Frozen = true;
                IceState();
            }
            
        }
    }
}
