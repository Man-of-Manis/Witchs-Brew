using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class ICreatureMovement
{
    public Creatures.CreatureType creature;

    public abstract void Movement();
    public abstract void Rotation();
}
