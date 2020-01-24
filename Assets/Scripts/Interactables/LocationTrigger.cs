using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LocationTrigger : MonoBehaviour
{
    [Header("Area Location")]
    public string setLocation;
    public Vector3 locationArea = Vector3.one * 2f;

    private BoxCollider areaTrigger;

    private void OnValidate()
    {
        areaTrigger = GetComponent<BoxCollider>();

        areaTrigger.size = locationArea;
        areaTrigger.center = Vector3.zero;
    }

    private void OnTriggerEnter(Collider other)
    {
        GameManager.Instance.UIManager.GetComponent<LocationUI>().Location = setLocation;
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawWireCube(transform.position, locationArea);        
    }
}
