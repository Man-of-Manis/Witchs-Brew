using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class LastVineActivation : MonoBehaviour
{
    public Burn vineDestroyed;
    public UnityEvent activate;

    void Update()
    {
        if (vineDestroyed.EnableBurn)
        {
            activate.Invoke();

            Destroy(this);
        }
    }
}
