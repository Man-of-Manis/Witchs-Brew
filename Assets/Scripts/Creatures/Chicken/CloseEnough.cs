using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CloseEnough : MonoBehaviour
{
    public float force = 1f;

    private void OnTriggerEnter(Collider other)
    {
        //Debug.Log("Entered");

        Rigidbody rb = other.GetComponent<Rigidbody>();

        if(rb != null)
        {
            if(rb.velocity.y > 0f)
            {
                rb.AddForce(-transform.forward * force, ForceMode.Impulse);
            }            
        }
    }
}
