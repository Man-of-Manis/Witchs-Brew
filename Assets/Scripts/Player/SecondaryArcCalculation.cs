using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SecondaryArcCalculation : MonoBehaviour
{
    public Transform sphereReticlePrefab;
    public GameObject lineRendererPrefab;

    private Transform secondaryReticle;
    private LineRenderer lineRenderer;

    public float Range;

    public float MinimumElevation = -100f;

    [SerializeField] private float AimVelocity = 1;

    private float AimAngle = 0f;

    [Range(0.001f, 1.0f)]
    public float AimStep = 1;

    public const float VelocityConversionConstant = 9.2f;

    private float Gravity = -9.81f;

    public enum Cast { Raycast, Spherecast };

    public Cast castType = 0;

    public LayerMask objectLayer;
    [SerializeField] private LayerMask collisionLayer;

    [HideInInspector] public Vector3 endPos;

    private UtilityController utilCon;
    private PotionCalculation potionCalc;
    private PotionKnockbackStrength pStrength;

    private bool showArc = false;

    private void Start()
    {
        utilCon = GetComponent<UtilityController>();
        potionCalc = GetComponent<PotionCalculation>();
        pStrength = GetComponent<PotionKnockbackStrength>();
        Gravity = Physics.gravity.y;

        secondaryReticle = Instantiate(sphereReticlePrefab);
        lineRenderer = Instantiate(lineRendererPrefab).GetComponent<LineRenderer>();
    }

    private void LateUpdate()
    {
        GetVelocity();
        GetObject();
    }

    /// <summary>
    /// Gets and sets whether the secondary line arc is shown.
    /// </summary>
    public bool PotionAvailable
    {
        get { return showArc; }
        set { showArc = value; }
    }

    /// <summary>
    /// Sets the aim velocity for the air potion.
    /// </summary>
    private void GetVelocity()
    {
        AimVelocity = pStrength.Velocity;
    }

    /// <summary>
    /// Enables the arc line and sphere end.
    /// </summary>
    public void ShowPotionPath()
    {
        secondaryReticle.gameObject.SetActive(true);
        lineRenderer.enabled = true;
    }

    /// <summary>
    /// Disables the arc line and sphere end.
    /// </summary>
    public void HidePotionPath()
    {
        secondaryReticle.gameObject.SetActive(false);
        lineRenderer.enabled = false;
    }

    /// <summary>
    /// Sets the position of the sphere end.
    /// </summary>
    /// <param name="target"></param>
    public void SetPotionReticle(Vector3 target)
    {
        secondaryReticle.position = target;
    }

    /// <summary>
    /// Gets the object velocity and then determines the positions of the line renderer points.
    /// </summary>
    public void GetObject()
    {
        Collider[] collider = Physics.OverlapSphere(potionCalc.endPos, 1.5f, objectLayer);
        //Debug.Log(collider.Length);

        if (collider != null && collider.Length != 0)
        {
            for (int i = 0; i < collider.Length; i++)
            {
                Rigidbody rb = collider[i].GetComponent<Rigidbody>();

                if (collider[i].gameObject != gameObject && rb != null)
                {
                    float velocity = (AimVelocity / rb.mass);

                    if(collider[i].CompareTag("Chicken"))
                    {
                        GetChickenNormalizedDirection(potionCalc.endPos, collider[i].transform.position, velocity);
                    }
                    else
                    {
                        GetNormalizedDirection(potionCalc.endPos, collider[i].transform.position, velocity);
                    }
                    

                    if(showArc)
                    {
                        ShowPotionPath();
                        SetPotionReticle(endPos);
                    }

                    else
                    {
                        HidePotionPath();
                    }
                }

                else
                {
                    HidePotionPath();
                }
            }
        }

        else
        {
            HidePotionPath();
        }
    }

    /// <summary>
    /// Finds the amount and positions of the line renderer points for objects.
    /// </summary>
    /// <param name="potionPos">The predicted position of the potion when it will break.</param>
    /// <param name="objPos">The position of the object when hit.</param>
    /// <param name="objVelocity">The predicted velocity of the object when hit.</param>
    public void GetNormalizedDirection(Vector3 potionPos, Vector3 objPos, float objVelocity)
    {
        //Vector3 direction = ObjectDirection(potionPos, objPos);
        Vector3 direction = Direction.NormalizedDirection(potionPos, objPos, 1f);

        UpdateAimData(GetPoints(objPos, direction, objVelocity));
    }

    /// <summary>
    /// Finds the line render positions for chickens.
    /// </summary>
    /// <param name="potionPos">The predicted position of the potion when it will break.</param>
    /// <param name="objPos">The position of the chicken.</param>
    /// <param name="objVelocity">The predicted velocity of the chicken when hit.</param>
    public void GetChickenNormalizedDirection(Vector3 potionPos, Vector3 objPos, float objVelocity)
    {
        //Vector3 direction = ObjectDirection(potionPos, objPos);
        Vector3 direction = Direction.NormalizedDirection(potionPos, objPos, 1.5f);

        UpdateAimData(GetPoints(objPos, direction, objVelocity));
    }

    /// <summary>
    /// Finds the positions of the Vector3s that shape the parabolic arc. Returns a list of those points.
    /// </summary>
    /// <returns></returns>
    public List<Vector3> GetPoints(Vector3 objPos, Vector3 velocityDirection, float objVelocity)
    {
        List<Vector3> points = new List<Vector3>();
        Ray startRay;

        startRay = new Ray(objPos, velocityDirection);
        //startRay = new Ray(potionPouch.transform.position, transform.forward);

        var aimPosition = startRay.origin;
        var aimDirection = startRay.direction * objVelocity;
        var rangeSquared = Range * Range;

        do
        {
            points.Add(aimPosition);

            var aimVector = aimDirection;
            aimVector.y = aimVector.y + Gravity * 0.0111111111f * AimStep; //Vetical adjustment based on gravity
            aimDirection = aimVector; //Stores direction for next segment
            aimPosition += aimVector * AimStep; //Sets next point based on direction and step distance
        }
        while ((aimPosition.y - startRay.origin.y > MinimumElevation) && ((startRay.origin - aimPosition).sqrMagnitude <= rangeSquared));

        return points;
    }

    /// <summary>
    /// Returns the point in the line that collides with terrain.
    /// </summary>
    /// <param name="obj">The list of Vector3s that make up the parabola line renderer positions.</param>
    /// <returns></returns>
    public Vector3 UpdateAimData(List<Vector3> obj)
    {
        lineRenderer.sharedMaterial.color = true ? Color.green : Color.red;

        var points = obj;
        int element = 1;

        RaycastHit hit;
        for (int i = 1; i < points.Count; i++)
        {
            element = i;

            if (AimCollisionTest(points[i - 1], points[i], collisionLayer, out hit))
            {
                points[i] = hit.point;
                break;
            }
        }

        endPos = points[element];

        lineRenderer.positionCount = element + 1;

        for (int i = 0; i <= element; i++)
        {
            lineRenderer.SetPosition(i, points[i]);
        }

        return endPos;
    }

    /// <summary>
    /// Raycasts from previous point to current point and returns whether or not the ray hit a collider.
    /// </summary>
    /// <param name="start">The beginning of the raycast position.</param>
    /// <param name="end">The end of the raycast direction.</param>
    /// <param name="aimCollisionLayerMask">The raycast layermask.</param>
    /// <param name="hitInfo">The raycast hitInfo.</param>
    /// <returns></returns>
    public bool AimCollisionTest(Vector3 start, Vector3 end, LayerMask aimCollisionLayerMask, out RaycastHit hitInfo)
    {
        var delta = end - start;
        var distance = delta.magnitude;
        var direction = delta / distance;

        switch (castType)
        {
            case Cast.Raycast:
                return Physics.Raycast(start, direction, out hitInfo, distance, aimCollisionLayerMask);

            case Cast.Spherecast:
                return Physics.SphereCast(start, 0.1f, direction, out hitInfo, distance, aimCollisionLayerMask);
        }
        return Physics.Raycast(start, direction, out hitInfo, distance, aimCollisionLayerMask);
    }
}
