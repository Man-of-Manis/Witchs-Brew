using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MagicFire : MonoBehaviour
{
    [SerializeField] private int fireDamage = 1;
    [SerializeField] ParticleSystem fireParticle;

    bool fireEnabled = true;

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player") && fireEnabled)
        {
            IDamagable damageable = other.GetComponent<IDamagable>();

            if (damageable != null)
            {
                damageable.HealthChange(-fireDamage,
                    Witch.GetFlatDirection(other.transform.position, transform.position), false);
            }
        }
    }

    public void DisableFire()
    {
        fireEnabled = false;
        fireParticle.Stop();
    }
}
