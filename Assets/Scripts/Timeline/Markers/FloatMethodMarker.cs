using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class FloatMethodMarker : Marker, INotification
{
    [SerializeField] private string className;
    [SerializeField] private string methodName;
    [SerializeField] private float floatParameter;

    public PropertyName id => new PropertyName();
    public string ClassName => className;
    public string MethodName => methodName;
    public float FloatParam => floatParameter;
}
