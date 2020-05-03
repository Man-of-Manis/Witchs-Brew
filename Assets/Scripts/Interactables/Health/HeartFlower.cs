using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HeartFlower : MonoBehaviour
{
    [SerializeField] private int healthAmount = 1;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            PlayerHealth pHealth = other.GetComponent<PlayerHealth>();

            if(pHealth != null)
            {
                if(pHealth.Health < pHealth.MaximumHealth)
                {
                    pHealth.HealthChange(healthAmount);
                    Destroy(gameObject);
                }
            }
        }
    }
}
