using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KillBox : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        IItems item = other.GetComponent<IItems>();

        if(item != null)
        {
            item.Killbox();
            return;
        }

        if(other.CompareTag("Player"))
        {
            Debug.Log("Killing Player");
            other.GetComponent<PlayerHealth>().HealthChange(-100);
        }
    }
}
