using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotionPickup : MonoBehaviour
{
    public enum PotionType {White = 0, Red = 1, Yellow = 2, Green = 3, Blue = 4, Mega = 5};
    public PotionType Potion;
 

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            other.GetComponent<ItemController>().LearnNewPotion((int)Potion);
            Destroy(gameObject);
        }
    }
}
