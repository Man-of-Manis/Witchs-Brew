using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NestCollection : MonoBehaviour
{
    public float lerpTime = 2f;
    public Transform chickenPoint;
    private GameObject nestedChicken;
    //private ChickenMovement chickenMovement;

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Chicken"))
        {
            if(nestedChicken == null)
            {
                StartCoroutine(ChickenCollecting(other.gameObject));
                nestedChicken = other.gameObject;
                //chickenMovement = nestedChicken.GetComponent<ChickenMovement>();
                //chickenMovement.ChickenNesting(true);
            }            
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.gameObject.Equals(nestedChicken))
        {
            nestedChicken.GetComponent<Rigidbody>().useGravity = true;
            //chickenMovement.ChickenNesting(false);
            nestedChicken = null;
            //chickenMovement = null;
        }
    }

    IEnumerator ChickenCollecting(GameObject chicken)
    {
        Rigidbody rb = chicken.GetComponent<Rigidbody>();
        //rb.isKinematic = true;
        rb.useGravity = false;
        rb.velocity = Vector3.zero;
        

        for (float i = 0f; i < 1f; i += (Time.deltaTime / lerpTime))
        {
            //Debug.Log(i);
            chicken.transform.position = Vector3.Lerp(chicken.transform.position, chickenPoint.position, i);
            yield return null;
        }

        //rb.isKinematic = false;
        rb.useGravity = true;
        Debug.Log("Ready to toss");
    }
}
