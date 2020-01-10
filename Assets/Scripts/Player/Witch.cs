using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Witch
{
    public static bool FacingTarget(Transform target, Transform player)
    {
        float fDotProduct;

        Vector3 dirToOther = (target.position - player.position).normalized;

        fDotProduct = Vector3.Dot(player.forward, dirToOther);

        if (fDotProduct < -0.1f)
        {
            return false;
        }

        return true;
    }

    public static bool CloseToTarget(Transform target, Transform player)
    {
        if(Vector3.Distance(target.position, player.position) <= 1f)
        {
            return true;
        }

        return false;
    }
}
