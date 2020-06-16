using UnityEngine;
using UnityEngine.Playables;
using System.Reflection;
using System;

public class SpecifiedBoolReceiver : MonoBehaviour, INotificationReceiver
{
    private object classType;
    PropertyInfo property;

    public void OnNotify(Playable origin, INotification notification, object context)
    {
        if (notification is SpecifiedBoolMarker specifiedBoolMarker)
        {
            if (specifiedBoolMarker.GameobjectName.Length > 0)
            {
                GameObject GO = GameObject.Find(specifiedBoolMarker.GameobjectName);

                if (GO != null)
                {
                    if (specifiedBoolMarker.ClassName.Equals("Goal"))
                    {
                        classType = GO.GetComponent<Goal>();

                        property = classType.GetType().GetProperty(specifiedBoolMarker.BoolName);
                        property.SetValue(classType, specifiedBoolMarker.Bool);
                        return;
                    }
                }
            }

            classType = FindObjectOfType(Type.GetType(specifiedBoolMarker.ClassName));

            if (classType == null)
            {
                return;
            }

            property = classType.GetType().GetProperty(specifiedBoolMarker.BoolName);
            property.SetValue(classType, specifiedBoolMarker.Bool);
        }
    }
}
