using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IceTurtleAttack : MonoBehaviour
{
    [Header("Objects")]
    [SerializeField] private GameObject iceProjectile;
    public GameObject iceBlock;
    [SerializeField] private Transform spawnPoint;
    [SerializeField] private Transform turtleHeadPivot;    

    [SerializeField] private Transform target;

    [Header("Laser")]
    [SerializeField] private float chargeUpTime = 1f;
    private float chargeStartTime = 0f;

    [SerializeField] private int projectilesPerSecond = 2;
    private float timeToFire = 0f;

    [SerializeField] private IceBeam laser;
    [SerializeField] private float laserMaxDist = 10f;
    [SerializeField] private LayerMask laserLayer;
    [SerializeField] private int damageAmount = 1;

    [Header("Particles")]
    [SerializeField] private ParticleSystem[] snowParticles;

    [Header("Rotation")]
    [SerializeField] private float maxHeadRotX;
    [SerializeField] private float maxHeadRotY;

    [SerializeField] private float minRotationSpeed = 360f;
    [SerializeField] private float maxRotationSpeed = 1440f;
    [SerializeField] private float degreeRotationSpeed = 1440f;

    public bool EnableBeam
    {
        get { return isBeamEnabled; }
        set { isBeamEnabled = value; }
    }

    private bool isBeamEnabled = false;
    private bool prevIsBeamEnabled = false;

    TurtleMove turtleMove;


    // Start is called before the first frame update
    void Start()
    {
        target = GameManager.Instance.PlayerCOM;
        laser = spawnPoint.GetComponentInChildren<IceBeam>();
        turtleMove = GetComponent<TurtleMove>();
    }

    // Update is called once per frame
    void Update()
    {
        IceLaser();
    }

    void HeadRotation()
    {
        Vector3 dirToTarget = target.position - turtleHeadPivot.position;

        Quaternion lookRotation = Quaternion.LookRotation(dirToTarget, Vector3.up);

        turtleHeadPivot.rotation = Quaternion.Lerp(turtleHeadPivot.rotation, lookRotation, Time.deltaTime * (degreeRotationSpeed / 360.0f));
    }

    void RateOfFire()
    {
        if (Time.realtimeSinceStartup >= timeToFire)
        {
            timeToFire = Time.realtimeSinceStartup + (1f / projectilesPerSecond);
            Instantiate(iceProjectile, spawnPoint.position, turtleHeadPivot.rotation);
        }
    }

    /// <summary>
    /// Fires a ice laser at the player after a short charge up.
    /// </summary>
    void IceLaser()
    {
        if(turtleMove.elementState == Creatures.ElementalState.Normal && turtleMove.prevElementState != turtleMove.elementState)
        {
            Debug.Log("Disable Turtle Beam");
            isBeamEnabled = false;
            turtleMove.prevElementState = turtleMove.elementState;
        }

        if (isBeamEnabled)
        {
            if(prevIsBeamEnabled != isBeamEnabled)
            {
                chargeStartTime = Time.realtimeSinceStartup;
                prevIsBeamEnabled = isBeamEnabled;
            }

            if(Time.realtimeSinceStartup - chargeStartTime >= chargeUpTime)
            {
                laser.EnableBeam = true;

                if (Physics.Raycast(spawnPoint.position, spawnPoint.forward, out RaycastHit hit, laserMaxDist, laserLayer))
                {
                    laser.beamDist = hit.distance;
                    Debug.DrawLine(spawnPoint.position, hit.point, Color.cyan);

                    for (int i = 0; i < snowParticles.Length; i++)
                    {
                        if(i >= (int)laser.beamDist)
                        {
                            if (snowParticles[i].isPlaying)
                            {
                                snowParticles[i].Stop();
                            }
                        }
                        else
                        {
                            if (snowParticles[i].isStopped)
                            {
                                snowParticles[i].Play();
                            }
                        }                        
                    }

                    if (hit.collider.CompareTag("Player"))
                    {
                        IDamagable damageable = hit.collider.GetComponent<IDamagable>();

                        if (damageable != null)
                        {
                            damageable.HealthChange(-damageAmount,
                                Witch.GetFlatDirection(hit.collider.transform.position, transform.position), false);
                        }
                    }

                    if (hit.collider.CompareTag("Chicken"))
                    {
                        BluePotionEffect eff = new BluePotionEffect();
                        eff.IceBlock = iceBlock;
                        eff.SmallEffect(hit.collider.gameObject);
                        Destroy(eff);
                    }
                }

                else
                {
                    laser.beamDist = laserMaxDist;

                    for (int i = 0; i < snowParticles.Length; i++)
                    {
                        if(snowParticles[i].isStopped)
                        {
                            snowParticles[i].Play();
                        }                        
                    }
                    //Debug.DrawRay(spawnPoint.position, spawnPoint.forward * laserMaxDist, Color.cyan);
                }

                if(Physics.Raycast(spawnPoint.position, spawnPoint.forward, out RaycastHit hit2, laserMaxDist, laserLayer, QueryTriggerInteraction.Collide))
                {
                    MagicFire fire = hit2.collider.GetComponent<MagicFire>();

                    if(fire != null)
                    {
                        Debug.Log("Particle hit fire collision");
                        fire.DisableFire();
                    }
                }
            }
        }

        else
        {
            for(int i = 0; i < snowParticles.Length; i++)
            {
                if(snowParticles[i].isPlaying)
                {
                    snowParticles[i].Stop();
                }                
            }

            prevIsBeamEnabled = isBeamEnabled;
            laser.EnableBeam = false;
        }
    }
}
