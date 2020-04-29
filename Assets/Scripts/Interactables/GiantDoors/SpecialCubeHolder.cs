using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpecialCubeHolder : MonoBehaviour
{
    public float lerpTime = 2f;
    
    [SerializeField] public GameObject[] specialcubes;
    [SerializeField] private Transform[] cubePoint;
    [SerializeField] private float lerpDist = 0.25f;


    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("SpecialCube"))
        {
            for(int i = 0; i < specialcubes.Length; i++)
            {
                if (specialcubes[i] == null)
                {
                    StartCoroutine(CubeCollecting(other.gameObject, i));
                    specialcubes[i] = other.gameObject;
                    specialcubes[i].transform.parent = transform;

                    return;
                }
            }            
        }
    }
    
    private void OnTriggerExit(Collider other)
    {
        for(int i = 0; i < specialcubes.Length; i++)
        {
            if (other.gameObject.Equals(specialcubes[i]))
            {
                specialcubes[i].GetComponent<Rigidbody>().useGravity = true;
                specialcubes[i].transform.parent = null;
                specialcubes[i] = null;

                return;
            }
        }
        
    }
    

    IEnumerator CubeCollecting(GameObject cube, int index)
    {
        Rigidbody rb = cube.GetComponent<Rigidbody>();
        //rb.isKinematic = true;
        rb.useGravity = false;
        rb.velocity = Vector3.zero;
        rb.isKinematic = true;
        cube.transform.rotation = transform.rotation;


        for (float i = 0f; i < 1f; i += (Time.deltaTime / lerpTime))
        {
            //Debug.Log(i);
            cube.transform.position = Vector3.Lerp(
                new Vector3(cubePoint[index].position.x + lerpDist, cubePoint[index].position.y, cubePoint[index].position.z), cubePoint[index].position, i);
            yield return null;
        }

        //rb.velocity = Vector3.zero;
        
        //rb.useGravity = true;
        //Debug.Log("Ready to toss");
    }
}
