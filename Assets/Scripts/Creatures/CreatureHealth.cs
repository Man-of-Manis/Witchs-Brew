using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreatureHealth : MonoBehaviour, IDamagable
{
    [SerializeField] private int currentHealth = 1;

    public void HealthChange(int damage)
    {
        if(currentHealth + damage <= 0)
        {
            Destroy(this.gameObject);
        }
    }

    public void HealthChange(int damage, Vector3 damageDirection, bool alwaysKnockback)
    {
        //Debug.Log(gameObject.name + " took " + damage + " damage " + " with " + currentHealth + " health");

        if (currentHealth + damage <= 0)
        {
            Destroy(this.gameObject);
        }
    }
}
