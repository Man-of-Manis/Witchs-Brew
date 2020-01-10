using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GreenPotionEffect : MonoBehaviour, IPotionActivation
{
    Transform ParticlePoint;

    public void LargeEffect(GameObject obj)
    {

    }

    public void SmallEffect(GameObject obj)
    {
        Green(obj);
    }

    void Green(GameObject obj)
    {
        EffectsPoint objPoint = obj.GetComponent<EffectsPoint>();

        if (objPoint != null)
        {
            ParticlePoint = objPoint.ParticlePoint;

            if ((int)objPoint.ObjSize < 2)
            {
                objPoint.ObjSize = (int)objPoint.ObjSize == 0 ? EffectsPoint.SizeGO.Original : EffectsPoint.SizeGO.Large;

                obj.transform.localScale = objPoint.VectorSize[(int)objPoint.ObjSize];
            }

            objPoint.UpdateSize();
        }
    }
}
