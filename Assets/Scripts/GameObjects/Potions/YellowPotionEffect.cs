using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YellowPotionEffect : MonoBehaviour, IPotionActivation
{
    public GameObject LightningPS;

    Transform ParticlePoint;

    public void LargeEffect(GameObject obj)
    {
        
    }

    public void SmallEffect(GameObject obj)
    {
        Yellow(obj);
    }

    void Yellow(GameObject obj)
    {
        EffectsPoint objPoint = obj.GetComponent<EffectsPoint>();

        if (objPoint != null)
        {
            ParticlePoint = objPoint.ParticlePoint;

            if((int)objPoint.ObjSize > 0)
            {
                objPoint.ObjSize = (int)objPoint.ObjSize == 2 ? EffectsPoint.SizeGO.Original : EffectsPoint.SizeGO.Small;

                obj.transform.localScale = objPoint.VectorSize[(int)objPoint.ObjSize];
            }

            objPoint.UpdateSize();

            GameObject effect = Instantiate(LightningPS, ParticlePoint.position, Quaternion.identity, ParticlePoint);
        }
    }
}
