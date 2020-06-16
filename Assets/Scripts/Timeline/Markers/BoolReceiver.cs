using UnityEngine;
using UnityEngine.Playables;
using System.Reflection;
using System;

public class BoolReceiver : MonoBehaviour, INotificationReceiver
{
    private object classType;
    PropertyInfo property;

    public void OnNotify(Playable origin, INotification notification, object context)
    {
        if (notification is BoolMarker boolMarker)
        {
            classType = FindObjectOfType(Type.GetType(boolMarker.ClassName));

            if (classType == null)
            {
                return;
            }

            property = classType.GetType().GetProperty(boolMarker.BoolName);
            property.SetValue(classType, boolMarker.Bool);
        }
    }
}
