using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class MethodMarker : Marker, INotification
{
    [SerializeField] private string className;
    [SerializeField] private string methodName;

    public PropertyName id => new PropertyName();
    public string ClassName => className;
    public string MethodName => methodName;
}
