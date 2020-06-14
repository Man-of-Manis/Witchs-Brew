using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class FinalCinematicTrigger : MonoBehaviour
{
    [SerializeField] private UnityEvent Activate;

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            Activate.Invoke();
        }
    }
}
