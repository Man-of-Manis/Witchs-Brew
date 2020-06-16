using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class SpecifiedBoolMarker : Marker, INotification
{
    [SerializeField] private string gameobjectName;
    [SerializeField] private string className;
    [SerializeField] private string boolName;
    [SerializeField] private bool boolValue;

    public PropertyName id => new PropertyName();
    public string GameobjectName => gameobjectName;
    public string ClassName => className;
    public string BoolName => boolName;
    public bool Bool => boolValue;
}
