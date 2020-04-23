using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IDamagable
{
    void HealthChange(int damage);
    void HealthChange(int damage, Vector3 damageDirection, bool alwaysKnockback);
}
