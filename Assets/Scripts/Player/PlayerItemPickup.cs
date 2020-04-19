using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerItemPickup : MonoBehaviour
{
    public Transform pickup;
    public LayerMask pickupLayer;

    [Header("Pickup")]
    public Vector3 pickupPositionOffset;
    public Vector3 pickupHalfExtents;
    private Vector3 pickupPosition;

    private Rigidbody pickupRB;

    private PlayerInput m_Input;
    // Start is called before the first frame update
    void Start()
    {
        m_Input = GetComponent<PlayerInput>();
    }

    // Update is called once per frame
    void Update()
    {
        pickupPosition = transform.position + (transform.forward * pickupPositionOffset.z) + (Vector3.up * pickupPositionOffset.y);

        BoxCast();

        CurrentPickup();
    }

    private void CurrentPickup()
    {
        if(pickup != null)
        {
            pickup.position = pickupPosition;
            pickup.rotation = transform.rotation;
        }
    }

    private void BoxCast()
    {
        if (m_Input.AimInput)
        {
            //Debug.Log("Aiming");

            if(m_Input.Button2)
            {
                if (pickup == null)
                {
                    //Debug.DrawLine(pickupPosition, pickupPosition + pickupHalfExtents);

                    Collider[] pickups = Physics.OverlapBox(pickupPosition, pickupHalfExtents, transform.rotation, pickupLayer);

                    if (pickups.Length > 0)
                    {
                        GameObject pick = pickups[0].gameObject;
                        float dist = Vector3.Distance(pickupPosition, pickups[0].transform.position);

                        if(pickups.Length > 1)
                        {
                            for(int i = 1; i < pickups.Length; i++)
                            {
                                float distance = Vector3.Distance(pickupPosition, pickups[i].transform.position);

                                if(distance < dist)
                                {
                                    pick = pickups[i].gameObject;
                                    dist = distance;
                                }
                            }
                        }

                        pickup = pick.transform;
                        pickup.GetComponent<Rigidbody>().isKinematic = true;

                        Debug.Log("Overlap Item: " + pick.name);
                    }
                    else
                    {
                        Debug.Log("Overlap Nothing");
                    }
                }
                else
                {
                    pickup.GetComponent<Rigidbody>().isKinematic = false;
                    pickup = null;
                    Debug.Log("Dropped Item");
                }
            }            
        }
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = new Color(0.2f, 0.2f, 0.2f, 0.3f);
        Gizmos.DrawCube(pickupPosition, pickupHalfExtents);
    }
}
