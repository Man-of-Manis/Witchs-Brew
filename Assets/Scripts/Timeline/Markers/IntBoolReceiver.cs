using UnityEngine;
using UnityEngine.Playables;
using System.Reflection;
using System;
using System.Collections.Generic;

public class IntBoolReceiver : MonoBehaviour, INotificationReceiver
{
    private object classType;

    public void OnNotify(Playable origin, INotification notification, object context)
    {
        if (notification is IntBoolMarker intBoolMarker)
        {
            classType = FindObjectOfType(Type.GetType(intBoolMarker.ClassName));

            if (classType == null)
            {
                classType = Activator.CreateInstance(Type.GetType(intBoolMarker.ClassName), null);
            }

            if (classType != null)
            {
                //MethodInfo[] method = classType.GetType().GetMethods(floatBoolMarker.MethodName);
                MethodInfo[] methods = classType.GetType().GetMethods();
                List<MethodInfo> useableMethods = new List<MethodInfo>();
                List<ParameterInfo[]> methodParameters = new List<ParameterInfo[]>();

                foreach (MethodInfo m in methods)
                {
                    if (m.Name.Equals(intBoolMarker.MethodName))
                    {
                        useableMethods.Add(m);
                    }
                }

                foreach (MethodInfo m in useableMethods)
                {
                    methodParameters.Add(m.GetParameters());

                    if (m.GetParameters().Length != 2)
                    {
                        continue;
                    }

                    if (!m.GetParameters()[0].ParameterType.Equals(typeof(int)))
                    {
                        continue;
                    }

                    if (m.GetParameters()[1].ParameterType.Equals(typeof(bool)))
                    {
                        m.Invoke(classType, new object[] { intBoolMarker.IntParam, intBoolMarker.BoolParam });
                        return;
                    }
                }
            }
        }
    }
}
