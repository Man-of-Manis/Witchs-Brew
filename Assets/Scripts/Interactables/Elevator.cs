using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Elevator : MonoBehaviour
{
    [Header("Elevator")]
    [SerializeField] private bool enable = false;

    public float startHeight;
    public float endHeight;

    public float elevatorTime = 3f;
    public float pauseDelay = 1f;

    private bool direction = true;
    private float timer = 0f;

    [Header("Gear")]
    [SerializeField] private Transform[] gears;
    [SerializeField] private float maxRotation;

    public bool EnableElevator
    {
        get { return enable; }
        set { enable = value; }
    }

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
            Rotation();
        }
    }

    void Timing()
    {
        timer += (Time.deltaTime / elevatorTime);

        if (timer >= pauseDelay + (1f / elevatorTime))
        {
            direction = !direction;
            timer = 0f;
        }
    }

    void Movement()
    {
        transform.localPosition = new Vector3(transform.localPosition.x, 
            Mathf.SmoothStep((direction ? startHeight : endHeight), (direction ? endHeight : startHeight), timer), 
            transform.localPosition.z);
    }

    void Rotation()
    {
        float rotation = Mathf.SmoothStep((direction ? 0f : maxRotation), (direction ? maxRotation : 0f), timer);
        Vector3 gearRotation = new Vector3(rotation, 0f, 0f);

        foreach(Transform g in gears)
        {
            g.rotation = Quaternion.Euler(gearRotation);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player") || other.CompareTag("SpecialCube"))
        {
            EnableElevator = false;
        }

        if(other.CompareTag("Turtle") || other.CompareTag("Chicken"))
        {
            other.GetComponent<CreatureHealth>().HealthChange(-3);
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
