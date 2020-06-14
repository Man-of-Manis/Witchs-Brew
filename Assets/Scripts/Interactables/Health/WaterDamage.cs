using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaterDamage : MonoBehaviour
{
    [SerializeField] private int waterDamage = 10;

    private void OnTriggerEnter(Collider other)
    {
        IDamagable damagable = other.GetComponent<IDamagable>();
        IItems item = other.GetComponent<IItems>();

        if(damagable != null)
        {
            damagable.HealthChange(-waterDamage, true);
        }

        if(item != null)
        {
            item.Killbox();
        }
    }
    /*
    private void OnTriggerStay(Collider other)
    {
        IDamagable damagable = other.GetComponent<IDamagable>();
        IItems item = other.GetComponent<IItems>();

        if (damagable != null)
        {
            damagable.HealthChange(-waterDamage);
        }

        if (item != null)
        {
            item.Killbox();
        }
    }
    */
}
