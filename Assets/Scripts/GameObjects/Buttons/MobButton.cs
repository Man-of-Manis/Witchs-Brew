using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MobButton : MonoBehaviour
{
    public GameObject door;

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Mob"))
        {
            door.SetActive(false);
        }
    }
}
