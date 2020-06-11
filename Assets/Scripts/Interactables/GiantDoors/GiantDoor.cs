using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GiantDoor : MonoBehaviour
{
    private GiantDoorOpener doorOpener;

    // Start is called before the first frame update
    void Start()
    {
        doorOpener = GetComponentInParent<GiantDoorOpener>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void Activate()
    {
        //doorOpener.AttemptOpening();
    }
}
