using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IceTurtleAttack : MonoBehaviour
{
    [SerializeField] private GameObject iceProjectile;
    public GameObject iceBlock;
    [SerializeField] private Transform spawnPoint;
    [SerializeField] private Transform turtleHeadPivot;    

    [SerializeField] private Transform target;

    public bool EnableBeam
    {
        get { return isBeamEnabled; }
        set { isBeamEnabled = value; }
    }

    private bool isBeamEnabled = false;

    [SerializeField] private int projectilesPerSecond = 2;
    private float timeToFire = 0f;

    [SerializeField] private IceBeam laser;
    [SerializeField] private float laserMaxDist = 10f;
    [SerializeField] private LayerMask laserLayer;
    [SerializeField] private int damageAmount = 1;

    [SerializeField] private float maxHeadRotX;
    [SerializeField] private float maxHeadRotY;

    [SerializeField] private float minRotationSpeed = 360f;
    [SerializeField] private float maxRotationSpeed = 1440f;
    [SerializeField] private float degreeRotationSpeed = 1440f;


    // Start is called before the first frame update
    void Start()
    {
        target = GameManager.Instance.PlayerCOM;
        laser = spawnPoint.GetComponentInChildren<IceBeam>();
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

    void IceLaser()
    {
        if (isBeamEnabled)
        {
            float dist = Vector3.Distance(target.position, spawnPoint.position);

            if (dist <= laserMaxDist)
            {
                laser.EnableBeam = true;

                if (Physics.Raycast(spawnPoint.position, spawnPoint.forward, out RaycastHit hit, laserMaxDist, laserLayer))
                {
                    laser.beamDist = hit.distance;
                    Debug.DrawLine(spawnPoint.position, hit.point, Color.cyan);

                    if(hit.collider.CompareTag("Player"))
                    {
                        hit.collider.GetComponent<PlayerHealth>().Health = -damageAmount;
                    }

                    if(hit.collider.CompareTag("Chicken"))
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
                    Debug.DrawRay(spawnPoint.position, spawnPoint.forward * laserMaxDist, Color.cyan);
                }
            }
            else
            {
                laser.beamDist = 0f;
            }
        }

        else
        {
            laser.EnableBeam = false;
        }
    }
}
