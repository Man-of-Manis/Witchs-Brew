using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerItemPickup : MonoBehaviour
{
    public float pickupDist = 1.5f;
    public Transform pickup;
    public LineRenderer rend;
    public LayerMask pickupLayer;

    private Rigidbody pickupRB;

    private PlayerInput m_Input;
    private Camera cam;
    private Vector3 start;
    private Vector3 center;
    // Start is called before the first frame update
    void Start()
    {
        m_Input = GetComponent<PlayerInput>();
        cam = GameManager.Instance.MainCamera;
    }

    // Update is called once per frame
    void Update()
    {
        //start = cam.transform.position - (Vector3.up * 0.25f) - (Vector3.right * 0.25f) + (cam.transform.forward * Mathf.Abs(cam.transform.localPosition.z));

        start = GameManager.Instance.PlayerCOM.position;
        center = cam.transform.position + (cam.transform.forward * (Mathf.Abs(cam.transform.localPosition.z) + pickupDist));

        if (m_Input.AimInput)
        {
            Debug.Log("Aiming");

            if (pickup == null) //Attempt Pickup
            {
                
                if (Physics.Raycast(start, cam.transform.forward, out RaycastHit hit, pickupDist, pickupLayer))
                {
                    rend.SetPosition(0, start);
                    rend.SetPosition(1, hit.point);
                    Debug.Log("Ray Item");
                }

                else
                {
                    rend.SetPosition(0, start);
                    rend.SetPosition(1, center);
                    Debug.Log("Ray Nothing");
                }                
            }     

            else //Drop Pickup
            {
                Debug.Log("Dropped Item");
            }
        }
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.white;
        Gizmos.DrawSphere(start, 0.05f);
        Gizmos.color = Color.red;
        Gizmos.DrawSphere(center, 0.1f);
    }
}
