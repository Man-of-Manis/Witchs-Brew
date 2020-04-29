using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CorruptionBeing : MonoBehaviour
{
    public CorruptionArea currentArea;

    [Header("Movement")]
    public float movementSpeed = 5f;
    public float degreeRotationSpeed = 1440f;
    private Vector3 target;

    [Header("Actions")]
    public float actionCDTime = 30f; //Teleport, Desaturate
    public float actionTimer = 0f;

    [Range(0f, 1f)]
    public float teleportChance = 0.8f;

    [Header("Attack")]
    public Transform attackPoint;
    public bool canAttack = true;
    public int attackDamage = 1;
    public float attackRange = 2f;
    public float attackCDDuration = 1f;
    public float attackWindUp = 0.05f;
    public float attackSpeed = 1.5f;
    public float attackTimer = 0f;

    [Header("Split")]
    public float splitCDTime = 60f;
    public float splitTimer = 0f;

    [Header("Player")]
    public bool FacingTarget;
    public float playerDistance;
    public float playerProximity = 10f;

    private void OnValidate()
    {
        attackTimer = attackSpeed;
    }

    void Start()
    {
        GetNextPosition();
    }

    void Update()
    {
        GetPlayerDistance();

        if(playerDistance <= playerProximity)
        {
            GetClosePosition();
            AttackPlayer();
        }

        else
        {
            ActionTime();
            SetNextDestination();
        }        
    }

    private void FixedUpdate()
    {
        if(canAttack)
        {
            NormalMovement();

            if (playerDistance <= playerProximity)
            {
                MeshRotation(GameManager.Instance.player.transform.position);
            }

            else
            {
                MeshRotation(target);
            }
        }              
    }

    void ActionTime()
    {
        if(!currentArea.FacingTarget)
        {
            actionTimer += Time.deltaTime;

            if(actionTimer >= actionCDTime)
            {
                PerformAction();

                actionTimer = 0f;
            }
        }
    }

    void PerformAction()
    {
        if(Random.value <= teleportChance)
        {
            Teleport();
        }

        else
        {

        }
    }

    void Teleport()
    {
        currentArea = currentArea.corruptMan.GetClosestArea(GameManager.Instance.player.transform.position);

        transform.position = currentArea.transform.position;

        GetNextPosition();
    }

    void AttackPlayer()
    {
        attackTimer += Time.deltaTime;

        if (Physics.Raycast(attackPoint.position, transform.forward, out RaycastHit hit, attackRange, (LayerMask)~0))
        {
            if (hit.collider.CompareTag("Player"))
            {
                if (attackTimer >= attackSpeed && canAttack)
                {
                    StartCoroutine(AttackWindUp());
                }
            }
        }        
    }

    void Attack()
    {
        Debug.DrawRay(attackPoint.position, transform.forward * attackRange, Color.red);

        if(Physics.Raycast(attackPoint.position, transform.forward, out RaycastHit hit, attackRange, (LayerMask)~0))
        {
            if(hit.collider.CompareTag("Player"))
            {
                hit.collider.GetComponent<IDamagable>().HealthChange(-attackDamage, 
                    Witch.GetFlatDirection(transform.position, transform.position), false);
            }
        }

        StartCoroutine(AttackCD());
    }

    /// <summary>
    /// Gets the distance from the player to the center of the corruption area.
    /// </summary>
    void GetPlayerDistance()
    {
        playerDistance = Vector3.Distance(GameManager.Instance.player.transform.position, currentArea.transform.position);
    }

    /// <summary>
    /// Sets the movement behavior of the being.
    /// </summary>
    void NormalMovement()
    {
        transform.position = Vector3.MoveTowards(transform.position, target, movementSpeed * Time.deltaTime);
    }

    /// <summary>
    /// Sets the beings's rotation to look towards the destination.
    /// </summary>
    void MeshRotation(Vector3 rotationTarget)
    {
        Vector3 dirToTarget = new Vector3(rotationTarget.x, 0f, rotationTarget.z) - new Vector3(transform.position.x, 0f, transform.position.z);

        Quaternion lookRotation = Quaternion.LookRotation(dirToTarget, Vector3.up);

        transform.rotation = Quaternion.Lerp(transform.rotation, lookRotation, Time.deltaTime * (degreeRotationSpeed / 360.0f));
    }

    /// <summary>
    /// Finds a random point inside the corruption fog for the being to move to.
    /// </summary>
    void GetNextPosition()
    {
        if(currentArea != null)
        {
            float X = Random.Range(-1f, 1f);
            float Z = Random.Range(-1f, 1f);
            Vector3 normalized = new Vector3(X, 0f, Z).normalized;
            normalized *= currentArea.Area.radius;

            target = currentArea.transform.position + normalized;
        }        
    }

    /// <summary>
    /// Finds the point on the perimeter of the fot radius in the direction of the player.
    /// </summary>
    void GetClosePosition()
    {
        if (GameManager.Instance.player != null)
        {
            Vector3 direction = (new Vector3(GameManager.Instance.player.transform.position.x, 0f, GameManager.Instance.player.transform.position.z)
                - new Vector3(currentArea.transform.position.x, 0f, currentArea.transform.position.z)).normalized;

            direction *= currentArea.Area.radius;

            target = currentArea.transform.position + direction;
        }
    }

    /// <summary>
    /// Changes the target position when the being reaches the current target.
    /// </summary>
    void SetNextDestination()
    {
        if (Vector3.Distance(transform.position, target) < 0.6f)
        {
            GetNextPosition();
        }
    }

    IEnumerator AttackWindUp()
    {
        yield return new WaitForSeconds(attackWindUp);

        Attack();
        attackTimer = 0f;
    }

    IEnumerator AttackCD()
    {
        canAttack = false;
        yield return new WaitForSeconds(attackCDDuration);
        canAttack = true;
    }
}
