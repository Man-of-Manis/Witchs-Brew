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
        return Vector3.Distance(target.position, player.position) <= 1f;
    }

    public static bool WithinDistance(Vector3 target, Vector3 currentObject, float distance)
    {
        return Vector3.Distance(target, currentObject) <= distance;
    }

    public static Vector3 GetDirection(Vector3 target, Vector3 currentObject)
    {
        return (target - currentObject);
    }

    public static Vector3 GetFlatDirection(Vector3 target, Vector3 currentObject)
    {
        return (new Vector3(target.x, 0f, target.z) - new Vector3(currentObject.x, 0f, currentObject.z));
    }
}
