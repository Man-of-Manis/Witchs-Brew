using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RedPotionEffect : MonoBehaviour, IPotionActivation
{
    public GameObject FirePS;

    Transform ParticlePoint;
    float ParticleSize;
    float ParticleRadius;
    float ObjSize;

    public void LargeEffect(GameObject obj)
    {
        
    }

    public void SmallEffect(GameObject obj)
    {
        EffectsPoint objPoint = obj.GetComponent<EffectsPoint>();
        Burn burn = obj.GetComponent<Burn>();
        Brazier brazier = obj.GetComponent<Brazier>();
        TurtleMove turtle = obj.GetComponent<TurtleMove>();

        if (turtle != null)
        {
            Debug.Log("Turtle converted to normal");
            turtle.elementState = Creatures.ElementalState.Normal;
        }

        if (objPoint != null)
        {
            ParticlePoint = objPoint.ParticlePoint;
            ParticleSize = objPoint.FireSize;
            ParticleRadius = objPoint.fireRadius;
            ObjSize = objPoint.transform.localScale.x;

            Red(objPoint);
        }

        if(brazier != null)
        {
            brazier.isLit = true;
        }

        if(burn != null)
        {
            burn.EnableBurn = true;
        }
    }

    public void Red(EffectsPoint point)
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

        if(ice != null)
        {
            ice.GetComponent<IceBlock>().Melt();
            return;
        }

        else if(ice == null && ps != null)
        {
            if (ps.isPlaying)
            {
                return;
            }
        }

        if (!point.gameObject.CompareTag("Turtle"))
        {
            GameObject effect = Instantiate(FirePS, ParticlePoint.position, Quaternion.identity, ParticlePoint);
            ps = effect.GetComponent<ParticleSystem>();
            point.AddPS(ps);
            ps.Play();
        }       

        point.Frozen = false;

        if(!point.gameObject.CompareTag("Turtle"))
        {
            point.OnFire = true;
        }
        else
        {
            point.OnFire = false;
        }
    }
}
