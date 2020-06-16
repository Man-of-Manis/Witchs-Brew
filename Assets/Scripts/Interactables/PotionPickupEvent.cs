using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PotionPickupEvent : MonoBehaviour
{
    [SerializeField] private PotionType potionEvent;
    [SerializeField] private UnityEvent Activated;
    private ItemController itemCon;

    // Start is called before the first frame update
    void Start()
    {
        itemCon = FindObjectOfType<ItemController>();
        itemCon.LearnedNewPotion += ItemController_LearnedNewPotion;
    }

    private void ItemController_LearnedNewPotion(object sender, int e)
    {
        if(e == (int)potionEvent)
        {
            Activated.Invoke();
        }
    }
}
