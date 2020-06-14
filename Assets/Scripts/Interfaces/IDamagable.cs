using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IDamagable
{
    void HealthChange(int damage, bool alwaysDamage = false);
    void HealthChange(int damage, Vector3 damageDirection, bool alwaysKnockback);
}
