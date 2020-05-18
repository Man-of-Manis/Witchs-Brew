using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Reflection;
using System;

public class NodePathing : MonoBehaviour
{
    public enum PathingType { Line, Area };
    public enum PathingCreature { Turtle, Chicken};
    public enum PathColor { Grey, Blue, Cyan, Green, Yellow, Orange, Red, Purple };


    public PathingType pathType;
    public PathingCreature creaturePathType;
    [HideInInspector] public PathingCreature prevCreaturePathType;
    [HideInInspector] public PathColor nodeColor;
    private string[] tagStrings = { "Turtle_Path", "Chicken_Path" };

    [HideInInspector] public bool loopPathing;    

    [HideInInspector] public List<Transform> pathNodes;
    [HideInInspector] public Vector3 pathArea =new Vector3(5f, 0.5f, 5f);

    private BoxCollider box;

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

    public void OnValidate()
    {

        if (pathType == PathingType.Line)
        {
            

            NodeNames();
#if UNITY_EDITOR
            ChangeNodeColor();
#endif
        }

        else if(pathType == PathingType.Area)
        {
#if UNITY_EDITOR
            ClearNodeLabel();
#endif
            SetPathingArea();
        }        
    }

    public void ChangeTag()
    {
        gameObject.tag = tagStrings[(int)creaturePathType];

        prevCreaturePathType = creaturePathType;
    }

    private void NodeNames()
    {
        pathNodes = new List<Transform>();
        
        for(int i = 0; i < transform.childCount; i++)
        {
            pathNodes.Add(transform.GetChild(i));
            pathNodes[i].gameObject.name = "Node " + (i + 1);
        }        
    }
#if UNITY_EDITOR
    private void ChangeNodeColor()
    {
        for(int i = 0; i < pathNodes.Count; i++)
        {
            DrawIcon(pathNodes[i].gameObject, (int)nodeColor);
        }
    }

    private void ClearNodeLabel()
    {
        for (int i = 0; i < pathNodes.Count; i++)
        {
            var icon = GUIContent.none;
            var egu = typeof(EditorGUIUtility);
            var flags = BindingFlags.InvokeMethod | BindingFlags.Static | BindingFlags.NonPublic;
            var args = new object[] { pathNodes[i].gameObject, icon.image };
            var setIcon = egu.GetMethod("SetIconForObject", flags, null, new Type[] { typeof(UnityEngine.Object), typeof(Texture2D) }, null);
            setIcon.Invoke(null, args);
        }
    }
#endif

    public GameObject AddNode()
    {
        GameObject node;
        if(pathNodes.Count > 0)
        {
            node = Instantiate(pathNodes[pathNodes.Count - 1].gameObject, transform);
        }

        else
        {
            node = new GameObject();
            node.transform.SetParent(transform);
            node.transform.position = transform.position;

#if UNITY_EDITOR
            DrawIcon(node, (int)nodeColor);
#endif
        }
        pathNodes.Add(node.transform);
        pathNodes[pathNodes.Count - 1].gameObject.name = "Node " + (pathNodes.Count);
        return node;
    }

    public void RemoveNode(int element)
    {
        if(pathNodes.Count > 0 && element > 0)
        {
            pathNodes.RemoveAt(element - 1);
            DestroyChild(element - 1);
            Rename();
        }
        
    }

    public void ClearNodes()
    {
        pathNodes = new List<Transform>();
        DestroyChildren();
    }

    private void Rename()
    {
        for (int i = 0; i < transform.childCount; i++)
        {
            pathNodes[i].gameObject.name = "Node " + (i + 1);
        }
    }

    private void SetPathingArea()
    {
        box = GetComponent<BoxCollider>();

        if(box == null)
        {
            gameObject.AddComponent<BoxCollider>();
            box = GetComponent<BoxCollider>();
        }

        box.size = pathArea;
        box.center = new Vector3(0f, box.size.y / 2f, 0f);
    }

    public Vector3 BoundsMin()
    {
        SetPathingArea();

        return transform.position - box.size / 2;
    }

    public Vector3 BoundsMax()
    {
        SetPathingArea();

        return transform.position + box.size / 2;
    }

    public float GetClosestDistance(Vector3 position)
    {
        if(pathType == PathingType.Line)
        {
            int closest = 0;
            float closestDist = float.MaxValue;

            for(int i = 0; i < pathNodes.Count; i++)
            {
                float nodeDist = Vector3.Distance(position, pathNodes[i].position);

                if (nodeDist < closestDist)
                {
                    closest = i;
                    closestDist = nodeDist;
                }
            }

            return closestDist;
        }

        else
        {
            return Vector3.Distance(position, box.ClosestPoint(transform.position));
        }        
    }

    private void OnDrawGizmos()
    {
        if(pathNodes.Count > 1 && pathType == PathingType.Line)
        {
            for (int i = 1; i < pathNodes.Count; i++)
            {
                try
                {
                    Gizmos.color = NodeColors[(int)nodeColor];
                    Gizmos.DrawLine(Inc(pathNodes[i - 1].position), Inc(pathNodes[i].position));

                    if (loopPathing && (i == pathNodes.Count - 1) && pathNodes.Count > 2)
                    {
                        Gizmos.DrawLine(Inc(pathNodes[0].position), Inc(pathNodes[i].position));
                    }
                }
                catch
                {
                    NodeNames();

#if UNITY_EDITOR
                    ChangeNodeColor();
#endif
                }             
            }
        }    
        
        else if(pathType == PathingType.Area)
        {
            Gizmos.color = Color.yellow;
            Gizmos.DrawWireCube(new Vector3(transform.position.x, transform.position.y + box.size.y / 2f, transform.position.z), pathArea);
        }
    }

    private void OnDrawGizmosSelected()
    {
        if (pathType == PathingType.Area)
        {
            Gizmos.color = new Color(1f, 1f, 0f, 0.25f);
            Gizmos.DrawCube(new Vector3(transform.position.x, transform.position.y + box.size.y / 2f, transform.position.z), pathArea);
        }
    }

    private Vector3 Inc(Vector3 pos)
    {
        return new Vector3(pos.x, pos.y + 0.1f, pos.z);
    }

#if UNITY_EDITOR
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
#endif

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
