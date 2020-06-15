using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PotionPickupEvent : MonoBehaviour
{
    [SerializeField] private PotionType potionEvent;
    [SerializeField] private UnityEvent Activated;

    // Start is called before the first frame update
    void Start()
    {
        ItemController.LearnedNewPotion += ItemController_LearnedNewPotion;
    }

    private void ItemController_LearnedNewPotion(object sender, int e)
    {
        if(e == (int)potionEvent)
        {
            Activated.Invoke();
        }
    }
}
