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

        FallDamage();

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
}
