using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Elevator : MonoBehaviour
{
    public bool EnableElevator
    {
        get { return enable; }
        set { enable = value; }
    }
    [SerializeField] private bool enable = false;

    public float startHeight;
    public float endHeight;

    public float elevatorTime = 3f;
    public float pauseDelay = 1f;

    private bool direction = true;
    private float timer = 0f;

    private void Update()
    {
        if(enable)
        {
            Timing();
        }
    }

    private void FixedUpdate()
    {
        if(enable)
        {
            Movement();
        }
    }

    void Timing()
    {
        timer += (Time.deltaTime / elevatorTime);

        if (timer >= 1f + (pauseDelay / elevatorTime))
        {
            direction = !direction;
            timer = 0f;
        }
    }

    void Movement()
    {
        transform.position = new Vector3(transform.position.x, Mathf.SmoothStep((direction ? startHeight : endHeight), (direction ? endHeight : startHeight), timer), transform.position.z);
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player") || other.CompareTag("SpecialCube") || other.CompareTag("Turtle") || other.CompareTag("Chicken"))
        {
            EnableElevator = false;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player") || other.CompareTag("SpecialCube") || other.CompareTag("Turtle") || other.CompareTag("Chicken"))
        {
            EnableElevator = true;
        }
    }
}
