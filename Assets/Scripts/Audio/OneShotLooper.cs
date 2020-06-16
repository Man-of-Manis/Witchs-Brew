using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OneShotLooper : MonoBehaviour
{
    FMODUnity.StudioEventEmitter emitter;

    // Start is called before the first frame update
    void Start()
    {
        emitter = GetComponent<FMODUnity.StudioEventEmitter>();
    }

    // Update is called once per frame
    void Update()
    {
        if(!emitter.IsPlaying())
        {
            emitter.Play();
        }
    }
}
