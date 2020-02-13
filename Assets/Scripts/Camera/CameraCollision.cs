using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

[ExecuteInEditMode]
public class CameraCollision : MonoBehaviour
{
    public float aMinDistance = 1.0f;
    public float aMaxDistance = 4.0f;
    public float sMinDistance = 0.0f;
    public float sMaxDistance = 1.5f;
    public float smooth = 10.0f;
    Vector3 dollyDir;
    public Vector3 dollyDirAdjusted;
    public float aDistance;
    public float sDistance;

    private Vector3 desiredCameraPos;

    public Transform[] cameras;
    public ICinemachineCamera[] CMCameras = new ICinemachineCamera[3];

    CinemachineBrain brain;

    public float sphereRadius = 0.5f;
    public LayerMask layer;

    // Start is called before the first frame update
    void Awake()
    {
        dollyDir = transform.localPosition.normalized;
        aDistance = transform.localPosition.magnitude;
    }

    private void Start()
    {
        brain = gameObject.GetComponent<CinemachineBrain>();

        for (int i = 0; i < cameras.Length; i++)
        {
            CMCameras[i] = cameras[i].GetComponent<ICinemachineCamera>();
        }
    }

    // Update is called once per frame
    void Update()
    {
        aDistance = CameraDistance(cameras[0], aMinDistance, aMaxDistance);

        sDistance = CameraDistance(cameras[1], sMinDistance, sMaxDistance);

        sDistance = CameraDistance(cameras[2], sMinDistance, sMaxDistance);

        cameras[0].localPosition = Vector3.Lerp(cameras[0].localPosition,
                new Vector3(cameras[0].localPosition.x, cameras[0].localPosition.y, -aDistance), Time.deltaTime * smooth);

        for (int i = 1; i < cameras.Length; i++)
        {
            cameras[i].localPosition = Vector3.Lerp(cameras[i].localPosition,
                new Vector3(cameras[i].localPosition.x, cameras[i].localPosition.y, -sDistance), Time.deltaTime * smooth);
        }
    }

    private float CameraDistance(Transform camera, float minDistance, float maxDistance)
    {
        //Vector3 desiredCameraPos = transform.parent.TransformPoint(dollyDir * aMaxDistance);
        desiredCameraPos = transform.parent.TransformPoint(dollyDir * maxDistance);
        RaycastHit hit;

        

        //if (Physics.Linecast(transform.parent.position, desiredCameraPos, out hit, layer))
        if(Physics.SphereCast(transform.parent.position, sphereRadius, (desiredCameraPos - transform.parent.position).normalized, out hit, maxDistance, layer))
        {
            //Debug.Log(hit.collider.name);
            return Mathf.Clamp(hit.distance * 0.9f, minDistance, maxDistance);
        }
        else
        {
            return maxDistance;
        }
    }

    private void OnDrawGizmos()
    {
        Gizmos.DrawRay(transform.parent.position, (desiredCameraPos - transform.parent.position).normalized * aMaxDistance);
    }
}
