using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChestActivation : MonoBehaviour
{
    public void OnHit()
    {
        gameObject.GetComponent<IChest>().Activate();
    }
}
