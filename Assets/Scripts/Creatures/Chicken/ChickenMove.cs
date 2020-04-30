using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChickenMove : Creatures
{
    public bool isNesting;

    void Start()
    {
        GetEffectsPoint();

        GetMeshTransform();

        FindClosestPath();

        InitializeClosestNode();
    }

    void Update()
    {
        ReachedDestination();

        MeshRotationCorrection();

        IsGrounded();

        //FallDamage();

        IsFlying();

        IsFrozen();

        IsIdle();
    }

    void FixedUpdate()
    {
        if (!ePoint.Frozen)
        {
            CreatureMovement();
        }        
    }

    public void ChickenNesting(bool state)
    {
        nesting = state;
    }

    protected override IEnumerator Stunned(float duration)
    {
        stunned = true;

        //Chicken Launch sound here (OneShot)

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
}
