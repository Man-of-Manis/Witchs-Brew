using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Direction
{
    /// <summary>
    /// Gets the direction of the acting object towards the reacting object.
    /// </summary>
    /// <param name="actingObj">Object that is being applied.</param>
    /// <param name="reactingObj">Object that is receiving.</param>
    /// <returns></returns>
    public static Vector3 NormalizedDirection(Vector3 actingObj, Vector3 reactingObj)
    {
        Vector3 flatPosition = new Vector3(actingObj.x, 0f, actingObj.z) - new Vector3(reactingObj.x, 1f, reactingObj.z);

        return flatPosition.normalized;
    }

    /// <summary>
    /// Gets the direction of the acting object towards the reacting object.
    /// </summary>
    /// <param name="actingObj">Object that is being applied.</param>
    /// <param name="reactingObj">Object that is receiving.</param>
    /// <param name="height">The height offset of the reacting object. Increases the forward axis towards world up.</param>
    /// <returns></returns>
    public static Vector3 NormalizedDirection(Vector3 actingObj, Vector3 reactingObj, float height)
    {
        Vector3 flatPosition = new Vector3(reactingObj.x, height, reactingObj.z) - new Vector3(actingObj.x, 0f, actingObj.z);

        return flatPosition.normalized;
    }
}
