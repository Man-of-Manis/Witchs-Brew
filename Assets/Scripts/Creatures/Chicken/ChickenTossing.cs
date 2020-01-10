using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChickenTossing : MonoBehaviour
{
    public float directionForce = 1f;
    public float upwardForce = 2f;
    private bool usingForce = false;
    private Vector3 forceDirection = new Vector3();

    Rigidbody rb;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        //rb.velocity = new Vector3(0f, rb.velocity.y, 0f) + (usingForce ? forceDirection * directionForce : Vector3.zero);
    }

    public void EnableForce(Vector3 direction)
    {
        rb.AddForce((new Vector3(0f, upwardForce, 0f) + direction) * directionForce, ForceMode.Impulse);
    }
}
