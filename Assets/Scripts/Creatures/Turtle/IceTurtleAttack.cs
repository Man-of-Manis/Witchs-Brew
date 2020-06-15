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

    private FMOD.Studio.EventInstance AttackSound;
    private FMODUnity.StudioEventEmitter Attack;

    public bool EnableBeam
    {
        get { return isBeamEnabled; }
        set { isBeamEnabled = value; }
    }

    private bool isBeamEnabled = false;
    private bool prevIsBeamEnabled = false;

    TurtleMove turtleMove;
    private Animator anim;

    // Start is called before the first frame update
    void Start()
    {
        target = GameManager.Instance.PlayerCOM;
        laser = spawnPoint.GetComponentInChildren<IceBeam>();
        turtleMove = GetComponent<TurtleMove>();
        AttackSound = GetComponent<FMODUnity.StudioEventEmitter>().EventInstance;
        Attack = GetComponent<FMODUnity.StudioEventEmitter>();
        anim = GetComponentInChildren<Animator>();
        turtleMove.OnElementStateHandler += TurtleMove_OnElementStateHandler;
    }

    // Update is called once per frame
    void Update()
    {
        DisableBeamCheck();
        IceLaser();
    }

    private void OnDestroy()
    {
        if(Attack != null)
        {
            if (Attack.IsPlaying())
            {
                Attack.Stop();
            }
        }        
    }

    private void TurtleMove_OnElementStateHandler(object sender, System.EventArgs e)
    {
        DisableBeamCheck();
    }

    void DisableBeamCheck()
    {
        if (turtleMove.elementState == Creatures.ElementalState.Normal)
        {
            isBeamEnabled = false;
        }
    }

    /// <summary>
    /// Fires a ice laser at the player after a short charge up.
    /// </summary>
    void IceLaser()
    {
        if (isBeamEnabled)
        {
            //When the beam mode changes, set the time since started charging
            if(prevIsBeamEnabled != isBeamEnabled)
            {
                chargeStartTime = Time.realtimeSinceStartup;
                prevIsBeamEnabled = isBeamEnabled;
                FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.turtle.turtleBeamCharge, gameObject);
                anim.SetBool("Shoot", true);
            }

            //Checks if the turtle charge up time has been met
            if(Time.realtimeSinceStartup - chargeStartTime >= chargeUpTime)
            {
                if(!laser.EnableBeam)
                {
                    laser.EnableBeam = true;    //Enables laser effect
                    //FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.turtle.turtleBeamShoot, gameObject);
                }

                AttackSound.getPlaybackState(out FMOD.Studio.PLAYBACK_STATE state);

                if (!Attack.IsPlaying())
                {
                    Attack.Play();                    
                }

                //Raycast to see if anything was hit by the laser
                if (Physics.Raycast(spawnPoint.position, spawnPoint.forward, out RaycastHit hit, laserMaxDist, laserLayer))
                {
                    laser.beamDist = hit.distance;
                    //Debug.DrawLine(spawnPoint.position, hit.point, Color.cyan);

                    //Enables snow particles for the laser based on raycast distance
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

                    //If the player is hit by the beam, damage them
                    if (hit.collider.CompareTag("Player"))
                    {
                        IDamagable damageable = hit.collider.GetComponent<IDamagable>();

                        if (damageable != null)
                        {
                            /*damageable.HealthChange(-damageAmount,
                                Witch.GetFlatDirection(hit.collider.transform.position, transform.position), false);*/

                            damageable.HealthChange(-damageAmount);
                        }
                    }

                    //If a chicken is hit by the beam, freeze them
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
                    //If nothing is hit, set beam distance to max
                    laser.beamDist = laserMaxDist;

                    //Enable all snow PS
                    for (int i = 0; i < snowParticles.Length; i++)
                    {
                        if(snowParticles[i].isStopped)
                        {
                            snowParticles[i].Play();
                        }                        
                    }
                    //Debug.DrawRay(spawnPoint.position, spawnPoint.forward * laserMaxDist, Color.cyan);
                }

                //Raycast for Magic Fire
                if(Physics.Raycast(spawnPoint.position, spawnPoint.forward, out RaycastHit hit2, laserMaxDist, laserLayer, QueryTriggerInteraction.Collide))
                {
                    MagicFire fire = hit2.collider.GetComponent<MagicFire>();

                    if(fire != null)
                    {
                        fire.DisableFire();
                    }
                }
            }
        }

        //If the beam is not enabled
        else
        {
            if(prevIsBeamEnabled != isBeamEnabled)
            {
                for (int i = 0; i < snowParticles.Length; i++)
                {
                    if (snowParticles[i].isPlaying)
                    {
                        snowParticles[i].Stop();
                    }
                }

                prevIsBeamEnabled = isBeamEnabled;
                laser.EnableBeam = false;

                if (Attack.IsPlaying())
                {
                    Attack.Stop();
                }

                FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.turtle.turtleBeamCooldown, gameObject);
                anim.SetBool("Shoot", false);
            }            
        }
    }
}
