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
            other.GetComponent<PlayerHealth>().HealthChange(healthAmount);
            Destroy(gameObject);
        }
    }
}
