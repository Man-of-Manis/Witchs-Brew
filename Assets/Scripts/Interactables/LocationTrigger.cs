using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LocationTrigger : MonoBehaviour
{
    [Header("Area Location")]
    public string setLocation;

    [Header("Area Location")]
    public BoxCollider areaTrigger;

    private void OnTriggerEnter(Collider other)
    {
        GameManager.Instance.UIManager.GetComponent<LocationUI>().Location = setLocation;
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawWireCube(transform.position, areaTrigger.size);        
    }
}
