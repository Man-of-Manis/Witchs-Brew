using UnityEngine;
using UnityEngine.Playables;
using System.Reflection;
using System;
using System.Collections.Generic;

public class FloatBoolReceiver : MonoBehaviour, INotificationReceiver
{
    private object classType;

    public void OnNotify(Playable origin, INotification notification, object context)
    {
        if (notification is FloatBoolMarker floatBoolMarker)
        {
            classType = FindObjectOfType(Type.GetType(floatBoolMarker.ClassName));

            if (classType == null)
            {
                classType = Activator.CreateInstance(Type.GetType(floatBoolMarker.ClassName), null);
            }

            if (classType != null)
            {
                //MethodInfo[] method = classType.GetType().GetMethods(floatBoolMarker.MethodName);
                MethodInfo[] methods = classType.GetType().GetMethods();
                List<MethodInfo> useableMethods = new List<MethodInfo>();
                List<ParameterInfo[]> methodParameters = new List<ParameterInfo[]>();

                foreach(MethodInfo m in methods)
                {
                    if(m.Name.Equals(floatBoolMarker.MethodName))
                    {
                        useableMethods.Add(m);
                    }
                }

                foreach(MethodInfo m in useableMethods)
                {
                    methodParameters.Add(m.GetParameters());

                    if(m.GetParameters().Length != 2)
                    {
                        continue;
                    }

                    if(!m.GetParameters()[0].ParameterType.Equals(typeof(float)))
                    {
                        continue;
                    }

                    if(m.GetParameters()[1].ParameterType.Equals(typeof(bool)))
                    {
                        m.Invoke(classType, new object[] { floatBoolMarker.FloatParam, floatBoolMarker.BoolParam });
                        return;
                    }
                }
            }
        }
    }
}
