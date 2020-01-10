using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BirdMovement : MonoBehaviour
{
    public float speed;
    public float degreesPerSecond;
    public GameObject itemDrop;

    private Transform Mesh;

    [Tooltip("Timer starts when bird isn't stunned")]
    public float itemRechargeTimer = 5f;
    private float currentItemTime = 5f;

    bool stunned = false;
    bool frozen = false;

    Transform flyBounds;
    BoxCollider boxBounds;
    Vector3 destination;
    Rigidbody rb;
    Animator anim;
    Coroutine co;

    void Awake()
    {
        flyBounds = GameObject.FindGameObjectWithTag("Fly_Bounds").transform;
        boxBounds = flyBounds.GetComponent<BoxCollider>();
        rb = GetComponent<Rigidbody>();
        anim = GetComponent<Animator>();
    }

    void Start()
    {
        Mesh = transform.Find("Mesh");
        NewDestination();
    }

    void FixedUpdate()
    {
        if(!stunned && !frozen)
        {
            Movement();
            ReachedDestination();
            Animations();
            Timer();
        }
    }

    void Movement()
    {
        //rb.velocity = transform.forward * speed;

        transform.position = Vector3.MoveTowards(transform.position, transform.position + Mesh.forward, speed * Time.deltaTime);

        Vector3 dirToTarget = destination - transform.position;

        Quaternion lookRotation = Quaternion.LookRotation(dirToTarget);

        Mesh.transform.rotation = Quaternion.Lerp(Mesh.transform.rotation, lookRotation, Time.deltaTime * (degreesPerSecond / 360.0f));
    }

    void ReachedDestination()
    {
        if(Vector3.Distance(transform.position, destination) < 0.6f)
        {
            NewDestination();
        }
    }

    void NewDestination()
    {
        Vector3 Max = BoundsMax();
        Vector3 Min = BoundsMin();

        destination = new Vector3(Random.Range(Min.x, Max.x), Random.Range(Min.y, Max.y), Random.Range(Min.z, Max.z));
    }

    Vector3 BoundsMax()
    {
        return flyBounds.position - boxBounds.size / 2;
    }

    Vector3 BoundsMin()
    {
        return flyBounds.position + boxBounds.size / 2;
    }

    private void Timer()
    {
        if(currentItemTime <= itemRechargeTimer)
        {
            currentItemTime += Time.deltaTime;
        }
    }

    public void Hit(float duration)
    {
        co = StartCoroutine(Stunned(2f));
    }

    IEnumerator Stunned(float duration)
    {
        stunned = true;
        anim.speed = 0f;
        rb.useGravity = true;

        if(currentItemTime >= itemRechargeTimer)
        {
            DropItem();
        }        

        yield return new WaitForSeconds(duration);

        if(!frozen)
        {
            NewDestination();
            rb.useGravity = false;
            stunned = false;
            anim.speed = 1f;                      
        }

        gameObject.tag = "Usable";
        StopCoroutine(co);
    }

    public void Frozen(bool isFrozen)
    {
        frozen = isFrozen;
        anim.speed = isFrozen ? 0f : 1f;
        rb.useGravity = isFrozen;
    }

    void DropItem()
    {
        GameObject item = Instantiate(itemDrop, transform.position, Quaternion.identity);
        item.GetComponentInChildren<IngredientPickup>().EnableIngredient();
        currentItemTime = 0.0f;
    }

    void Animations()
    {
        anim.SetBool("Gliding", transform.position.y > destination.y);
    }
}
