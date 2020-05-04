using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum TriggerTimes { Once, Always};
public class LocationTrigger : MonoBehaviour
{
    [Header("Area Location")]
    public string setLocation;
    public Vector3 locationArea = Vector3.one * 2f;
    [SerializeField] private TriggerTimes triggerAmount;
    private BoxCollider areaTrigger;
    private bool triggered;

    private void OnValidate()
    {
        areaTrigger = GetComponent<BoxCollider>();

        areaTrigger.size = locationArea;
        areaTrigger.center = Vector3.zero;
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            if((!triggered && triggerAmount == TriggerTimes.Once) || (triggerAmount == TriggerTimes.Always))
            {
                GameManager.Instance.UIManager.GetComponent<LocationUI>().Location = setLocation;
                triggered = true;
            }            
        }        
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawWireCube(transform.position, locationArea);        
    }
}
