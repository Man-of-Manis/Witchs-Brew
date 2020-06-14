﻿using System.Collections;
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

    public GameObject AddLine(int activatorType, Transform previousSelection)
    {
        GameObject line;
        MeshRenderer previousRend = previousSelection.GetComponent<MeshRenderer>();
        MeshRenderer newRend;

        if (activatorLines.Count > 0 && previousSelection != null)
        {
            line = Instantiate(activatorType == 0 ? activatorStraight : activatorIntersection, 
                previousSelection.transform.position + (previousSelection.transform.right * 1f), previousSelection.rotation, transform);
            newRend = line.GetComponent<MeshRenderer>();

            if (previousSelection.Equals(transform))
            {
                Debug.Log("Selection was transfrom.");
                line.transform.SetSiblingIndex(0);                
                activatorLines.Insert(0, newRend);
                line.gameObject.name = "Activator " + (0);
            }
            else if(activatorLines.Contains(previousRend))
            {
                Debug.Log("Found Render in list.");                
                int previousIndex = activatorLines.IndexOf(previousRend);
                line.transform.SetSiblingIndex(previousIndex + 1);
                activatorLines.Insert(previousIndex + 1, newRend);
                line.gameObject.name = "Activator " + (previousIndex + 1);
            }
            else
            {
                line.transform.SetAsLastSibling();
            }

            return line;
        }

        else if(activatorLines.Count > 0 && previousSelection == null)
        {
            line = Instantiate(activatorType == 0 ? activatorStraight : activatorIntersection,
                activatorLines[activatorLines.Count - 1].transform.position + (activatorLines[activatorLines.Count - 1].transform.right * 1f),
                activatorLines[activatorLines.Count - 1].transform.rotation, transform);
        }

        else
        {
            line = Instantiate(activatorType == 0 ? activatorStraight : activatorIntersection, transform.position, Quaternion.identity, transform);
        }

        newRend = line.GetComponent<MeshRenderer>();
        activatorLines.Add(newRend);
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

            for (float j = 0f; j < 1.0f; j += Time.deltaTime * (1 / ((int)timerType == 0 ? (activationTime / activatorLines.Count): segmentTime)))
            {
                activatorLines[i].material.SetFloat("Transition", j);
                yield return null;
            }

            activatorLines[i].material.SetFloat("Transition", 1.0f);
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
