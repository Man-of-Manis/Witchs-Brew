using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotionParticleSystems : MonoBehaviour
{
    public Transform ParticleParent
    {
        get { return particleParent; }
        set
        {
            particleParent = value;
            SetParent();
        }
    }
    private Transform particleParent;

    public void OnParticleSystemStopped()
    {
        SetParent();   
    }

    private void SetParent()
    {
        transform.parent = particleParent;
        transform.position = particleParent.position;
        transform.rotation = particleParent.rotation;
    }
}
