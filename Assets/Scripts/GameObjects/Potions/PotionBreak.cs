using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotionBreak : MonoBehaviour
{
    public PotionPickup.PotionType Potion;

    public GameObject PS;
    public float smallRadius = 1.25f;
    public float largeRadius = 1.25f;
    public Vector3 verticalOffset = new Vector3(0f, 0.1f, 0f);
    public LayerMask SmallLayer;
    public LayerMask LargeLayer;
    private bool Break = false;
    public bool active = false;
    [SerializeField] private ParticleSystem smoke;
    [SerializeField] private ParticleSystem trail;

    private FMODUnity.StudioEventEmitter eventEmitterRef; //Grant was here

    void Awake()
    {
        eventEmitterRef = GetComponent<FMODUnity.StudioEventEmitter>(); //Grant was here
    }


    private void OnCollisionEnter(Collision collision)
    {
        if (Break)
        {
            PotionEffect(collision.GetContact(0).point);
            InstantiatePS(collision.GetContact(0).point);
        }

        if (GetComponentInChildren<SphereCollider>() != null)
        {
            GetComponentInChildren<SphereCollider>().enabled = true;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (Break)
        {
            PotionEffect(other.ClosestPointOnBounds(transform.position));
            InstantiatePS(other.ClosestPointOnBounds(transform.position));
        }

        if (GetComponentInChildren<SphereCollider>() != null)
        {
            GetComponentInChildren<SphereCollider>().enabled = true;
        }
    }

    public void EnablePotion()
    {
        active = true;
        transform.GetComponent<Rigidbody>().isKinematic = false;
        SmokeStop();
    }

    public void SetBreak(bool value) //Immediately allow potion to be broken
    {
        Break = value;
    }

    public void DelayBreak() //Set potion to be broken after amount of time
    {
        StartCoroutine(DelayedBreak());
    }

    public void InstantBreak()
    {
        PotionEffect(transform.position);
        InstantiatePS(transform.position);
    }

    private void PotionEffect(Vector3 point)
    {
        //Potion break here (OneShot)
        eventEmitterRef.Play(); //Grant Was Here

        ColliderLoop(point, smallRadius, SmallLayer, true);
        ColliderLoop(point, largeRadius, LargeLayer, false);
    }

    private void ColliderLoop(Vector3 point, float radius, LayerMask layer, bool smallOrLarge)
    {
        Collider[] collider = Physics.OverlapSphere(point, radius, layer);
        SpawningGizmo(point);

        if (collider != null)
        {
            for (int i = 0; i < collider.Length; i++)
            {
                if (collider[i].gameObject != gameObject)
                {
                    //Apply potion effect
                    //Debug.Log(collider[i].name + " has been affected by the " + gameObject.name.Substring(0, name.Length - 7));

                    if (smallOrLarge)
                    {
                        GetComponent<IPotionActivation>().SmallEffect(collider[i].gameObject);
                    }

                    else
                    {
                        GetComponent<IPotionActivation>().LargeEffect(collider[i].gameObject);
                    }                  
                }
            }
        }
    }

    private void SpawningGizmo(Vector3 point)
    {
        SpawnGizmo giz = new GameObject().AddComponent<SpawnGizmo>();
        giz.transform.position = point;
        giz.radius = largeRadius;
        giz.shapeColor = Color.red;
    }

    private void InstantiatePS(Vector3 point)
    {
        ParticleSystem p = Instantiate(PS, point + verticalOffset, Quaternion.Euler(point)).GetComponent<ParticleSystem>();

        var main = p.main;
        if(transform.GetChild(0).Find("Liquid").GetComponent<MeshRenderer>().material.HasProperty("_Tint"))
        {
            main.startColor = transform.GetChild(0).Find("Liquid").GetComponent<MeshRenderer>().material.GetColor("_Tint"); //Sets PS color to potion color
        }

        TrailDetach();

        Destroy(gameObject);
    }

    private void SmokeStop()
    {
        if(trail != null)
        {
            trail.Play();
            
        }   

        if(smoke != null)
        {
            smoke.transform.parent = null;
            smoke.Stop();
        }
    }

    private void TrailDetach()
    {
        if (trail != null)
        {
            trail.transform.parent = null;
            trail.Stop();
        }
    }

    private IEnumerator DelayedBreak()
    {
        yield return new WaitForSeconds(3f);
        Break = true;
        GetComponent<Rigidbody>().WakeUp();
    }
}
