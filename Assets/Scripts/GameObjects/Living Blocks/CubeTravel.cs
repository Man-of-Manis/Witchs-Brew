using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CubeTravel : MonoBehaviour
{
    // bool top, bottom, right, left, front, back;
    // BoxCollider ourCollider;


    public GameObject[] travelPoints;
    int currentPoint = 0;
    Vector3 currentLocation, targetLocation;

    bool hit;

    void Start()
    {
        BoxCollider ourCollider = GetComponent<BoxCollider>();


    }

    void FixedUpdate()
    {
        if (hit)
        {
            Travel();
        }
    }

    private void OnCollisionEnter(Collision coll)
    {
        if (coll.gameObject.tag == "Potion_Type")
        {
            hit = true;
            currentPoint = currentPoint < travelPoints.Length - 1 ? currentPoint + 1 : 0;
        }
    }

    public void Travel()
    {
        currentLocation = gameObject.transform.position;
        targetLocation = travelPoints[currentPoint].transform.position;
        gameObject.transform.position = Vector3.MoveTowards(currentLocation, targetLocation, 4 * Time.deltaTime);

        if (currentLocation == targetLocation)
        {
            hit = false;

        }
    }
}
