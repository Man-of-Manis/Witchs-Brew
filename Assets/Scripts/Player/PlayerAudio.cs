using System.Collections;
using System.Collections.Generic;
using UnityEngine;



public class PlayerAudio : MonoBehaviour
{
    public AudioClip ItemPickup;

    AudioSource pAudio;

    void Awake()
    {
        pAudio = gameObject.GetComponent<AudioSource>();
    }

    public void CollectItem()
    {
        //pAudio.PlayOneShot(Resources.Load<AudioClip>("Sounds/Items/Beans/pickup11"));
        pAudio.PlayOneShot(ItemPickup);
    }
}
