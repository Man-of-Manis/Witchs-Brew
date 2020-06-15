using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class FloatBoolMarker : Marker, INotification
{
    [SerializeField] private string className;
    [SerializeField] private string methodName;
    [SerializeField] private float floatParameter;
    [SerializeField] private bool boolParameter;

    public PropertyName id => new PropertyName();
    public string ClassName => className;
    public string MethodName => methodName;
    public float FloatParam => floatParameter;
    public bool BoolParam => boolParameter;
}
