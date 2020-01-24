using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Reflection;
using System;

public class NodePathing : MonoBehaviour
{
    public enum PathingType { Turtle, Chicken};
    public PathingType creaturePath;
    private string[] tagStrings = { "Turtle_Path", "Chicken_Path" };

    [Tooltip("When enabled, the creature will loop through the nodes lowest to highest and then start back at zero. " +
        "If disabled, the creature will travel in reverse, highest to lowest, through the nodes when it has reached the last one.")]
    public bool loopPathing;

    [HideInInspector] public List<Transform> nodePath;

    public enum PathColor { Grey, Blue, Cyan, Green, Yellow, Orange, Red, Purple};

    public PathColor nodeColor;

    Dictionary<int, Color> NodeColors = new Dictionary<int, Color>()
    {
        {0, Color.gray },
        {1, Color.blue },
        {2, Color.cyan },
        {3, Color.green },
        {4, Color.yellow},
        {5, new Color(1f, 0.5f, 0f) },
        {6, Color.red },
        {7, Color.magenta }
    };

    private void OnValidate()
    {
        gameObject.tag = tagStrings[(int)creaturePath];

        NodeNames();

        ChangeNodeColor();
    }
    
    private void NodeNames()
    {
        nodePath = new List<Transform>();
        
        for(int i = 0; i < transform.childCount; i++)
        {
            nodePath.Add(transform.GetChild(i));
            nodePath[i].gameObject.name = "Node " + (i + 1);
        }        
    }

    private void ChangeNodeColor()
    {
        for(int i = 0; i < nodePath.Count; i++)
        {
            DrawIcon(nodePath[i].gameObject, (int)nodeColor);
        }
    }

    public GameObject AddNode()
    {
        GameObject node;
        if(nodePath.Count > 0)
        {
            node = Instantiate(nodePath[nodePath.Count - 1].gameObject, transform);
        }

        else
        {
            node = new GameObject();
            node.transform.SetParent(transform);
            node.transform.position = transform.position;

            DrawIcon(node, (int)nodeColor);
        }
        nodePath.Add(node.transform);
        nodePath[nodePath.Count - 1].gameObject.name = "Node " + (nodePath.Count);
        return node;
    }

    public void RemoveNode(int element)
    {
        if(nodePath.Count > 0 && element > 0)
        {
            nodePath.RemoveAt(element - 1);
            DestroyChild(element - 1);
            Rename();
        }
        
    }

    public void ClearNodes()
    {
        nodePath = new List<Transform>();
        DestroyChildren();
    }

    private void Rename()
    {
        for (int i = 0; i < transform.childCount; i++)
        {
            nodePath[i].gameObject.name = "Node " + (i + 1);
        }
    }

    private void OnDrawGizmos()
    {
        if(nodePath.Count > 1)
        {
            for (int i = 1; i < nodePath.Count; i++)
            {
                Gizmos.color = NodeColors[(int)nodeColor];
                Gizmos.DrawLine(Inc(nodePath[i - 1].position), Inc(nodePath[i].position));

                if(loopPathing && (i == nodePath.Count - 1) && nodePath.Count > 2)
                {
                    Gizmos.DrawLine(Inc(nodePath[0].position), Inc(nodePath[i].position));
                }
            }
        }               
    }

    Vector3 Inc(Vector3 pos)
    {
        return new Vector3(pos.x, pos.y + 0.1f, pos.z);
    }

    private void DrawIcon(GameObject gameObject, int idx)
    {
        var largeIcons = GetTextures("sv_label_", string.Empty, 0, 8);
        var icon = largeIcons[idx];
        var egu = typeof(EditorGUIUtility);
        var flags = BindingFlags.InvokeMethod | BindingFlags.Static | BindingFlags.NonPublic;
        var args = new object[] { gameObject, icon.image };
        var setIcon = egu.GetMethod("SetIconForObject", flags, null, new Type[] { typeof(UnityEngine.Object), typeof(Texture2D) }, null);
        setIcon.Invoke(null, args);
    }
    private GUIContent[] GetTextures(string baseName, string postFix, int startIndex, int count)
    {
        GUIContent[] array = new GUIContent[count];
        for (int i = 0; i < count; i++)
        {
            array[i] = EditorGUIUtility.IconContent(baseName + (startIndex + i) + postFix);
        }
        return array;
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
