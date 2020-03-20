using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerParent : MonoBehaviour
{
    public Transform RaycastPoint;
    public float rayDist = 0.5f;
    public LayerMask layers;

    // Update is called once per frame
    void Update()
    {
        //ParentPlayer();
    }

    private void ParentPlayer()
    {
        RaycastHit hit;
        if (Physics.Raycast(RaycastPoint.position, Vector3.down, out hit, rayDist, layers))
        {
            transform.parent = hit.transform;
        }

        else
        {
            transform.parent = null;
        }

        transform.localScale = Vector3.one;
    }
}
