using UnityEngine;
using UnityEngine.Playables;
using System.Reflection;
using System;

public class MethodReceiver : MonoBehaviour, INotificationReceiver
{
    private object classType;

    public void OnNotify(Playable origin, INotification notification, object context)
    {
        if (notification is MethodMarker methodMarker)
        {            
            
            classType = FindObjectOfType(Type.GetType(methodMarker.ClassName));

            if(classType == null)
            {
                classType = Activator.CreateInstance(Type.GetType(methodMarker.ClassName), null);
            }

            if(classType != null)
            {
                MethodInfo method = classType.GetType().GetMethod(methodMarker.MethodName);
                method.Invoke(classType, null);
            }            
        }
    }
}
