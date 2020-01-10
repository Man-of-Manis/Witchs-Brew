using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LedgeChecker : MonoBehaviour
{
    public bool IsGrabbingLedge;
    public Ledge GrabbedLedge;
    Ledge ledge = null;

    private void OnTriggerEnter(Collider other)
    {
        ledge = other.gameObject.GetComponent<Ledge>();

        if(ledge != null)
        {
            IsGrabbingLedge = true;
            GrabbedLedge = ledge;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        ledge = other.gameObject.GetComponent<Ledge>();

        if (ledge != null)
        {
            IsGrabbingLedge = false;
        }
    }
}
