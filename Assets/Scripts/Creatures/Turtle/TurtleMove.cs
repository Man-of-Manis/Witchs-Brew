using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurtleMove : Creatures
{
    public Transform target;
    public Transform iceBeamSpawnPoint;
    public Transform turtleHeadPivot;

    public LayerMask detectionLayer;

    public float dist;
    private const float detectionDist = 4.75f;
    private bool playerDetected;
    private bool prevPlayerDetected;

    void Start()
    {
        GetEffectsPoint();

        GetMeshTransform();

        FindClosestPath();

        InitializeClosestNode();

        if (target != GameManager.Instance.player.transform.Find("COM_Target"))
        {
            target = GameManager.Instance.player.transform.Find("COM_Target");
        }
    }

    void Update()
    {
        ReachedDestination();

        MeshRotationCorrection();

        IsGrounded();

        FallDamage();

        dist = Vector3.Distance(target.position, turtleHeadPivot.position);

        PlayerDetected();

        IsIdle();
    }

    void FixedUpdate()
    {
        if (!ePoint.Frozen)
        {
            CreatureMovement();
        }
    }

    protected override void ElementalMovement()
    {
        float targetDist = Vector3.Distance(target.position, iceBeamSpawnPoint.position);

        Vector3 targetDirection = (target.position - iceBeamSpawnPoint.position).normalized;

        if (targetDist < detectionDist && elementState == ElementalState.Elemental) //Player Detected
        {
            if (Physics.Raycast(iceBeamSpawnPoint.position, targetDirection, out RaycastHit hit, detectionDist, detectionLayer))
            {
                if (hit.collider.CompareTag("Player"))
                {
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
            NormalMovement();
        }
    }

    protected override void ElementalMeshRotation()
    {
        if (dist < detectionDist)
        {
            Vector3 dirToTarget = target.position - iceBeamSpawnPoint.position;

            Quaternion lookRotation = Quaternion.LookRotation(dirToTarget, Vector3.up);

            mesh.transform.rotation = Quaternion.Lerp(mesh.transform.rotation, lookRotation, Time.deltaTime * (degreeRotationSpeed / 360.0f));
        }

        else
        {
            if(movementType == MovementType.Mobile)
            {
                NormalMeshRotation();
            }            
        }
    }

    private void PlayerDetected()
    {
        if(dist < detectionDist)
        {
            playerDetected = true;
        }
        else
        {
            playerDetected = false;
        }

        if (playerDetected && !prevPlayerDetected && elementState == ElementalState.Elemental)
        {
            GetComponent<IceTurtleAttack>().EnableBeam = true;
            prevPlayerDetected = playerDetected;
        }
        else if(!playerDetected && prevPlayerDetected)
        {
            GetComponent<IceTurtleAttack>().EnableBeam = false;
            prevPlayerDetected = playerDetected;
        }
    }
}
