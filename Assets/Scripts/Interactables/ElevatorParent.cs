using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ElevatorParent : MonoBehaviour
{
    public List<string> usableTags = new List<string>();

    private void OnTriggerEnter(Collider other)
    {
        foreach(string s  in usableTags)
        {
            if (other.CompareTag(s))
            {
                other.transform.parent = transform;
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        foreach (string s in usableTags)
        {
            if (other.CompareTag(s))
            {
                other.transform.parent = null;
            }
        }
    }
}
