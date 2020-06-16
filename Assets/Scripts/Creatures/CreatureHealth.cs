using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreatureHealth : MonoBehaviour, IDamagable
{
    [SerializeField] private CreatureType creature;
    [SerializeField] private int currentHealth = 1;

    public void HealthChange(int damage, bool alwaysDamage = false)
    {
        if(currentHealth + damage <= 0)
        {
            Debug.Log(creature.ToString() + " death");
            FMODUnity.RuntimeManager.PlayOneShot(CreatureSound(), transform.position);
            Destroy(this.gameObject, 1f);
        }
    }

    public void HealthChange(int damage, Vector3 damageDirection, bool alwaysKnockback)
    {
        //Debug.Log(gameObject.name + " took " + damage + " damage " + " with " + currentHealth + " health");

        if (currentHealth + damage <= 0)
        {
            Debug.Log(creature.ToString() + " death");
            FMODUnity.RuntimeManager.PlayOneShot(CreatureSound(), transform.position);
            Destroy(this.gameObject, 1f);
        }
    }

    private string CreatureSound()
    {
        switch(creature)
        {
            case CreatureType.Chicken:
                return AudioEvents.Instance.chicken.chickenDeath;
            case CreatureType.Turtle:
                return AudioEvents.Instance.turtle.turtleDeath;
            default:
                return "";
        }
    }
}
