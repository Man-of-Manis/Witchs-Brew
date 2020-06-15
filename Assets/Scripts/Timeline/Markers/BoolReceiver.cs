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
            if(!boolMarker.GameobjectName.Equals(string.Empty))
            {
                GameObject GO = GameObject.Find(boolMarker.GameobjectName);

                if(GO != null)
                {
                    if (boolMarker.ClassName.Equals("Goal"))
                    {
                        classType = GO.GetComponent<Goal>();

                        property = classType.GetType().GetProperty(boolMarker.BoolName);
                        property.SetValue(classType, boolMarker.Bool);
                        return;
                    }
                }
            }

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
