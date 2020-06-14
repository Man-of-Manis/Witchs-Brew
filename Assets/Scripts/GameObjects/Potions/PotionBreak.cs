using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

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

    [Header("Sounds")]
    [SerializeField] private string sBreak;

    
    public Transform ParticlePosition
    {
        get { return particlePos;}
    }

    public bool ParticlesReturned
    {
        get { return pSAvailable.All(x => x == true); }
    }

    private bool[] pSAvailable = { true, true, true };

    [Header("Particles")]
    [SerializeField] private Transform particlePos;
    [SerializeField] private ParticleSystem breakPS;
    [SerializeField] private ParticleSystem smoke;
    [SerializeField] private ParticleSystem trail;

    private FMODUnity.StudioEventEmitter eventEmitterRef; //Grant was here

    void Awake()
    {
        eventEmitterRef = GetComponent<FMODUnity.StudioEventEmitter>(); //Grant was here

        InstantiateParticleParents();
    }

    private void OnEnable()
    {
        if(smoke != null)
        {
            smoke.Play();
        }               
    }

    private void InstantiateParticleParents()
    {
        if (breakPS != null)
        {
            SpawnGO(breakPS, "BreakPSParent");
        }

        if (smoke != null)
        {
            SpawnGO(smoke, "SmokeParent");
        }

        if (trail != null)
        {
            SpawnGO(trail, "TrailParent");
        }
    }

    private void SpawnGO(ParticleSystem ps, string parentName)
    {
        GameObject parent = new GameObject(parentName);
        parent.transform.parent = particlePos;
        parent.transform.position = particlePos.position;
        parent.transform.rotation = particlePos.rotation;
        ps.GetComponent<PotionParticleSystems>().ParticleParent = parent.transform;
    }

    public void SetAvailable(int boolIndex)
    {
        pSAvailable[boolIndex] = true;
    }

    private void DisablePotion()
    {
        //Destroy(gameObject);
        gameObject.SetActive(false);
        Rigidbody rb = gameObject.GetComponent<Rigidbody>();
        rb.velocity = Vector3.zero;
        rb.isKinematic = true;
        Break = false;
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (Break)
        {
            //collision.GetContact(0).normal
            PotionEffect(collision.GetContact(0).point);
            InstantiatePS(collision.GetContact(0).point, collision.GetContact(0).normal);
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
            Vector3 direction = Witch.GetDirectionNoramlized(other.ClosestPointOnBounds(transform.position), other.transform.position);
            

            PotionEffect(other.ClosestPointOnBounds(transform.position));
            InstantiatePS(other.ClosestPointOnBounds(transform.position), direction);
        }

        if (GetComponentInChildren<SphereCollider>() != null)
        {
            GetComponentInChildren<SphereCollider>().enabled = true;
        }
    }

    public void EnablePotion()
    {
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
        InstantiatePS(transform.position, Vector3.zero);
    }

    private void PotionEffect(Vector3 point)
    {
        //Potion break here (OneShot)
        //eventEmitterRef.Play(); //Grant Was Here
        FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.smallObjects.potionBreak, gameObject);

        ColliderLoop(point, smallRadius, SmallLayer, true);
        ColliderLoop(point, largeRadius, LargeLayer, false);
    }

    private void ColliderLoop(Vector3 point, float radius, LayerMask layer, bool smallOrLarge)
    {
        Collider[] collider = Physics.OverlapSphere(point, radius, layer);
        //SpawningGizmo(point);

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

    private void InstantiatePS(Vector3 point, Vector3 normal)
    {
        Quaternion normalRotation = Quaternion.FromToRotation(Vector3.up, normal);

        //ParticleSystem p = Instantiate(PS, point + verticalOffset, normalRotation).GetComponent<ParticleSystem>();

        breakPS.transform.parent = null;
        breakPS.transform.position = point;
        breakPS.transform.rotation = normalRotation;
        breakPS.gameObject.SetActive(true);
        pSAvailable[0] = false;

        var main = breakPS.main;

        if(transform.GetChild(0).Find("Liquid").GetComponent<MeshRenderer>().material.HasProperty("_Tint"))
        {
            main.startColor = transform.GetChild(0).Find("Liquid").GetComponent<MeshRenderer>().material.GetColor("_Tint"); //Sets PS color to potion color
        }

        breakPS.Play();

        TrailDetach();

        DisablePotion();
    }

    /// <summary>
    /// Enables the Trail while disabling the smoke so that there is no overlap of PS's
    /// </summary>
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
            pSAvailable[1] = false;
        }
    }

    private void TrailDetach()
    {
        if (trail != null)
        {
            trail.transform.parent = null;
            trail.Stop();
            pSAvailable[2] = false;
        }
    }

    private IEnumerator DelayedBreak()
    {
        yield return new WaitForSeconds(3f);
        Break = true;
        GetComponent<Rigidbody>().WakeUp();
    }
}
