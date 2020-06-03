using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class Vector2Marker : Marker, INotification
{
    [SerializeField] private string className;
    [SerializeField] private string methodName;
    [SerializeField] private string vector2Object;
    [SerializeField] private Vector2 vector2Parameter;    

    public PropertyName id => new PropertyName();
    public string ClassName => className;
    public string MethodName => methodName;
    public string V2Object => vector2Object;
    public Vector2 V2Param => vector2Parameter;    
}
