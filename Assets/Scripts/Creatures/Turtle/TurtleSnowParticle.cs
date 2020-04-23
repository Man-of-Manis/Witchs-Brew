using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurtleSnowParticle : MonoBehaviour
{
    private void OnParticleCollision(GameObject other)
    {
        IceBridgeGroup bridge = other.GetComponent<IceBridgeGroup>();
        MagicFire fire = other.GetComponent<MagicFire>();

        if(bridge != null)
        {
            bridge.IncreaseBridge();
        }

        if(fire != null)
        {
            Debug.Log("Particle hit fire collision");
        }
    }

    private void OnParticleTrigger()
    {
        //Debug.Log("Particle hit fire");
    }
}
