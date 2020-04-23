using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterDamage : MonoBehaviour
{
    [SerializeField] private int waterDamage = 10;

    private void OnTriggerEnter(Collider other)
    {
        IDamagable damagable = other.GetComponent<IDamagable>();

        if(damagable != null)
        {
            damagable.HealthChange(-waterDamage);
        }
    }

    private void OnTriggerStay(Collider other)
    {
        IDamagable damagable = other.GetComponent<IDamagable>();

        if (damagable != null)
        {
            damagable.HealthChange(-waterDamage);
        }
    }
}
