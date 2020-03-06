using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ActivationLines : MonoBehaviour
{
    public GameObject activatorStraight;
    public GameObject activatorIntersection;

    public List<MeshRenderer> activatorLines;
    public bool direction = true;

    public enum TimeType { FullLengthTime, SegmentTime};
    public TimeType timerType;

    [HideInInspector] public float activationTime = 1f;
    [HideInInspector] public float segmentTime = 0.5f;

    [HideInInspector] public UnityEvent activated;

    public void OnValidate()
    {
        ActivatorNames();
    }

    private void Start()
    {
        ActivatorNames();
        //StartLines();
    }

    private void ActivatorNames()
    {
        activatorLines = new List<MeshRenderer>();

        for (int i = 0; i < transform.childCount; i++)
        {
            activatorLines.Add(transform.GetChild(i).GetComponent<MeshRenderer>());
            activatorLines[i].gameObject.name = "Activator " + (i + 1);
        }
    }

    public GameObject AddLine(int activatorType)
    {
        GameObject line;

        if (activatorLines.Count > 0)
        {
            line = Instantiate(activatorType == 0 ? activatorStraight : activatorIntersection, 
                activatorLines[activatorLines.Count - 1].transform.position, Quaternion.identity, transform);
            
        }

        else
        {
            line = Instantiate(activatorType == 0 ? activatorStraight : activatorIntersection, transform.position, Quaternion.identity, transform);
        }

        activatorLines.Add(line.GetComponent<MeshRenderer>());
        activatorLines[activatorLines.Count - 1].gameObject.name = "Activator " + (activatorLines.Count);
        return line;
    }

    public void RemoveLine(int element)
    {
        if (activatorLines.Count > 0 && element > 0)
        {
            activatorLines.RemoveAt(element - 1);
            DestroyChild(element - 1);
            ActivatorNames();
        }
    }

    public void ClearLines()
    {
        activatorLines = new List<MeshRenderer>();
        DestroyChildren();
    }

    public void StartLines()
    {
        StartCoroutine(ActivateLines());
    }

    private IEnumerator ActivateLines()
    {
        for (int i = (direction ? 0 : (activatorLines.Count - 1)); (direction ? i < activatorLines.Count : i >= 0); i += (direction ? 1 : -1))
        {
            activatorLines[i].material.SetFloat("Direction", direction ? 1f : 0f);

            for (float j = -0.5f; j < 0.5f; j += Time.deltaTime * (1 / ((int)timerType == 0 ? (activationTime / activatorLines.Count): segmentTime)))
            {
                activatorLines[i].material.SetFloat("Transition", j);
                yield return null;
            }

            activatorLines[i].material.SetFloat("Transition", 0.6f);
        }

        activated.Invoke();
    }

    private void DestroyChildren()
    {
        StartCoroutine(Children());
    }

    private IEnumerator Children()
    {
        for (int i = transform.childCount - 1; i >= 0; i--)
        {
            DestroyImmediate(transform.GetChild(i).gameObject);
        }
        yield return null;
    }

    private void DestroyChild(int child)
    {
        StartCoroutine(Child(child));
    }

    private IEnumerator Child(int child)
    {
        DestroyImmediate(transform.GetChild(child).gameObject);
        yield return null;
    }
}
