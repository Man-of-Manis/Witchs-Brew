using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
public class ChickenPathing : MonoBehaviour
{
    public Vector3 pathingArea;

    BoxCollider box;

    private void OnValidate()
    {
        SetPathingArea();
    }

    private void SetPathingArea()
    {
        box = GetComponent<BoxCollider>();
        box.size = pathingArea;
        box.center = Vector3.zero;
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireCube(transform.position, pathingArea);        
    }
}
