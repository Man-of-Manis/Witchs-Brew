using UnityEngine;
using UnityEngine.Playables;
using System.Reflection;
using System;

public class Vector2Receiver : MonoBehaviour, INotificationReceiver
{
    private object classType;

    public void OnNotify(Playable origin, INotification notification, object context)
    {
        if (notification is Vector2Marker vector2Marker)
        {
            classType = FindObjectOfType(Type.GetType(vector2Marker.ClassName));

            if (classType == null)
            {
                classType = Activator.CreateInstance(Type.GetType(vector2Marker.ClassName), null);
            }

            if (classType != null)
            {
                MethodInfo method = classType.GetType().GetMethod(vector2Marker.MethodName);

                if(method != null)
                {
                    if (!vector2Marker.V2Object.Equals(string.Empty))
                    {
                        GameObject v2GO = GameObject.Find(vector2Marker.V2Object);

                        if (v2GO != null)
                        {
                            Vector2 v2 = new Vector2(v2GO.transform.eulerAngles.x, v2GO.transform.eulerAngles.y);

                            method.Invoke(classType, new object[] { v2 });
                        }
                        return;
                    }
                }

                method.Invoke(classType, new object[] { vector2Marker.V2Param });
            }
        }
    }
}
