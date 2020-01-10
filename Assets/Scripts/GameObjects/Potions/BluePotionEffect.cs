using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BluePotionEffect : MonoBehaviour, IPotionActivation
{
    public GameObject IceBlock;

    Transform ParticlePoint;

    public void LargeEffect(GameObject obj)
    {
        
    }

    public void SmallEffect(GameObject obj)
    {
        EffectsPoint objPoint = obj.GetComponent<EffectsPoint>();

        if (objPoint != null)
        {
            ParticlePoint = objPoint.ParticlePoint;

            Blue(objPoint);
        }        
    }

    public void Blue(EffectsPoint objPoint)
    {
        ParticleSystem ps = null;
        GameObject ice = null;

        for (int i = 0; i < ParticlePoint.childCount; i++)
        {
            if (ParticlePoint.GetChild(i).CompareTag("Fire"))
            {
                ps = ParticlePoint.GetChild(i).GetComponent<ParticleSystem>();
            }

            else if (ParticlePoint.GetChild(i).CompareTag("Ice_Block"))
            {
                ice = ParticlePoint.GetChild(i).gameObject;
            }
        }

        if (ice == null && ps != null)
        {
            if (ps.isPlaying)
            {
                ps.Stop();
                return;
            }
        }

        else if (ice != null)
        {
            return;
        }        

        GameObject effect = Instantiate(IceBlock, ParticlePoint.position, Quaternion.identity, ParticlePoint);
        objPoint.OnFire = false;
        objPoint.Frozen = true;
    }
}
