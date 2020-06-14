using UnityEngine;
using UnityEngine.Playables;
using System.Reflection;
using System;

public class IntMethodReceiver : MonoBehaviour, INotificationReceiver
{
    private object classType;

    public void OnNotify(Playable origin, INotification notification, object context)
    {
        if (notification is IntMethodMarker intMarker)
        {
            classType = FindObjectOfType(Type.GetType(intMarker.ClassName));

            if (classType == null)
            {
                classType = Activator.CreateInstance(Type.GetType(intMarker.ClassName), null);
            }

            if (classType != null)
            {
                MethodInfo method = classType.GetType().GetMethod(intMarker.MethodName);

                if (method != null)
                {
                    method.Invoke(classType, new object[] { intMarker.IntParam });
                    return;
                }
            }
        }
    }
}
