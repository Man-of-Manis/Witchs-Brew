using UnityEngine;
using UnityEngine.Playables;
using System.Reflection;

public class BoolReceiver : MonoBehaviour, INotificationReceiver
{
    [SerializeField] private Object controller;

    public void OnNotify(Playable origin, INotification notification, object context)
    {
        if (notification is BoolMarker boolMarker)
        {
            PropertyInfo property = controller.GetType().GetProperty(boolMarker.BoolName);
            property.SetValue(controller, boolMarker.Bool);
        }
    }
}
