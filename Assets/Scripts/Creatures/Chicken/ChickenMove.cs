using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChickenMove : Creatures
{
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

        IsFlying();

        IsFrozen();
    }

    void FixedUpdate()
    {
        if (!ePoint.Frozen)
        {
            CreatureMovement();
        }        
    }

    /// <summary>
    /// Overrides creature stun Enumerator to 
    /// </summary>
    /// <param name="duration"></param>
    /// <returns></returns>
    protected override IEnumerator Stunned(float duration)
    {
        stunned = true;
        yield return new WaitUntil(() => grounded);
        yield return new WaitForSeconds(duration);
        stunned = false;
        
        if(path != null)
        {
            if (path.GetClosestDistance(transform.position) > 5f)
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
