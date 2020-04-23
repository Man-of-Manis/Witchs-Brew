using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IceProjectile : MonoBehaviour
{
    public float velocity = 15f;
    public int damageAmount;

    Rigidbody rb;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.AddRelativeForce(new Vector3(0f, 0f, velocity), ForceMode.Impulse);

        Destroy(gameObject, 6f);
    }

    private void OnTriggerEnter(Collider collision)
    {
        //Debug.Log(gameObject.name + " hit " + collision.gameObject.name + " with a velocity of " + rb.velocity + " / " + rb.velocity.magnitude);

        if(collision.CompareTag("Player"))
        {
            collision.gameObject.GetComponent<IDamagable>().HealthChange(-damageAmount, 
                Witch.GetFlatDirection(transform.position, transform.position), false);
        }

        Destroy(gameObject);
    }
}
