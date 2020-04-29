using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotionCalculation : MonoBehaviour
{
    public GameObject potionPouch;
    public Transform potionReticlePrefab;
    public GameObject lineRendererPrefab;

    private Transform potionReticle;
    private LineRenderer lineRenderer;

    public float potionRotY;

    public float Range;

    public float MinimumElevation = -100f;

    private float Gravity = -9.81f;

    private float AimVelocity = 1;

    private float AimAngle = 0f;

    [Range(0.001f, 1.0f)]
    public float AimStep = 1;

    public const float VelocityConversionConstant = 9.2f;

    public enum Cast { Raycast, Spherecast };

    public Cast castType = 0;

    public LayerMask layer;
    //==============================================

    [HideInInspector] public Vector3 endPos;

    bool readyToThrow;

    Transform player;
    Transform rotationCam;
    Camera cam;
    Transform aimCam;
    Transform[] aimingCameras = new Transform[3];


    private void Start()
    {
        cam = Camera.main;
        rotationCam = cam.transform.parent;

        for (int i = 0; i < aimingCameras.Length; i++)
        {
            aimingCameras[i] = cam.GetComponent<CameraCollision>().cameras[i];
        }

        Gravity = Physics.gravity.y;

        potionReticle = Instantiate(potionReticlePrefab);
        lineRenderer = Instantiate(lineRendererPrefab).GetComponent<LineRenderer>();
    }

    private void LateUpdate()
    {
        AimCamera();
        PotionPouchPosRot();
    }

    //Determines which camera shoulder is being used
    private void AimCamera()
    {
        aimCam = aimingCameras[aimingCameras[2].gameObject.activeSelf ? 2 : 1];
    }

    /// <summary>
    /// Enables the arc line and sphere end.
    /// </summary>
    public void ShowPotionPath()
    {
        potionReticle.gameObject.SetActive(true);
        lineRenderer.enabled = true;
    }

    /// <summary>
    /// Disables the arc line and sphere end.
    /// </summary>
    public void HidePotionPath()
    {
        potionReticle.gameObject.SetActive(false);
        lineRenderer.enabled = false;
    }

    /// <summary>
    /// Sets the position of the sphere end.
    /// </summary>
    /// <param name="target"></param>
    public void SetPotionReticle(Vector3 target)
    {
        potionReticle.position = target;
    }

    /// <summary>
    /// Sets the X rotation of the potion pouch to aim the potion.
    /// </summary>
    private void PotionPouchPosRot()
    {
        AimAngle = Mathf.Clamp((rotationCam.eulerAngles.x < 180.0f ? rotationCam.eulerAngles.x : rotationCam.eulerAngles.x - 360f), -45.0f, 80.0f);

        potionPouch.transform.localRotation = Quaternion.Euler(new Vector3(AimAngle, (aimCam.Equals(aimingCameras[2]) ? potionRotY : -potionRotY), 0f));

        potionPouch.transform.localPosition = new Vector3((aimCam.Equals(aimingCameras[2]) ? 0.3f : -0.3f), potionPouch.transform.localPosition.y, potionPouch.transform.localPosition.z);
    }

    /// <summary>
    /// Sets the velocity of the potion based on calculated parabola.
    /// </summary>
    /// <returns>The velocity of the potion.</returns>
    public Vector3 SetPotionVelocity()
    {
        float angle = Mathf.Deg2Rad * -AimAngle;

        float z = VelocityConversionConstant * Mathf.Cos(angle);
        float y = VelocityConversionConstant * Mathf.Sin(angle);

        Vector3 vel = new Vector3(0f, y, z);

        vel = Quaternion.AngleAxis(transform.eulerAngles.y + (aimCam.Equals(aimingCameras[2]) ? potionRotY : -potionRotY), Vector3.up) * vel;

        return vel;
    }

    //Get the initial list of Vector3s that shape the parabola
    /// <summary>
    /// Finds the positions of the Vector3s that shape the parabolic arc. Returns a list of those points.
    /// </summary>
    /// <returns></returns>
    public List<Vector3> GetPoints(Vector3 startPos, Vector3 startDirection)
    {
        List<Vector3> points = new List<Vector3>();
        Ray startRay;

        startRay = new Ray(startPos, startDirection);
        //startRay = new Ray(potionPouch.transform.position, transform.forward);

        var aimPosition = startRay.origin;
        var aimDirection = startRay.direction * AimVelocity;
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

    //Find the last Vector3 in the point list and return it
    /// <summary>
    /// 
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

            if (AimCollisionTest(points[i - 1], points[i], layer, out hit))
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

    //Test to see if these points collide with an object
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
