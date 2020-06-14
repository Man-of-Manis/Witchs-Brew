using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class IntMethodMarker : Marker, INotification
{
    [SerializeField] private string className;
    [SerializeField] private string methodName;
    [SerializeField] private int intParameter;

    public PropertyName id => new PropertyName();
    public string ClassName => className;
    public string MethodName => methodName;
    public int IntParam => intParameter;
}
