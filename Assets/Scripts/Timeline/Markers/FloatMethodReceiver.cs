using UnityEngine;
using UnityEngine.Playables;
using System.Reflection;
using System;

public class FloatMethodReceiver : MonoBehaviour, INotificationReceiver
{
    private object classType;

    public void OnNotify(Playable origin, INotification notification, object context)
    {
        if (notification is FloatMethodMarker floatMarker)
        {
            classType = FindObjectOfType(Type.GetType(floatMarker.ClassName));

            if (classType == null)
            {
                classType = Activator.CreateInstance(Type.GetType(floatMarker.ClassName), null);
            }

            if (classType != null)
            {
                MethodInfo method = classType.GetType().GetMethod(floatMarker.MethodName);

                if (method != null)
                {
                    method.Invoke(classType, new object[] { floatMarker.FloatParam});
                }                
            }
        }
    }
}
