using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FireBurn : MonoBehaviour
{
    public bool startFire = false;
    private Brazier brazier;

    private void Start()
    {
        brazier = GetComponentInParent<Brazier>();
    }

    private void Update()
    {
        if(!startFire)
        {
            startFire = brazier.isLit;
        }
    }

    private void OnTriggerStay(Collider other)
    {
        Debug.Log(other.name);

        if(startFire)
        {
            Burn burnObj = other.GetComponent<Burn>();

            if (burnObj != null && !burnObj.EnableBurn)
            {
                burnObj.EnableBurn = true;
            }
        }        
    }
}
