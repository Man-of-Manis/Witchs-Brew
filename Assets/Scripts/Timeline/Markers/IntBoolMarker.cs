using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class IntBoolMarker : Marker, INotification
{
    [SerializeField] private string className;
    [SerializeField] private string methodName;
    [SerializeField] private int intParameter;
    [SerializeField] private bool boolParameter;

    public PropertyName id => new PropertyName();
    public string ClassName => className;
    public string MethodName => methodName;
    public int IntParam => intParameter;
    public bool BoolParam => boolParameter;
}