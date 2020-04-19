using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class AddMeshColliders : EditorWindow
{
    GameObject addMeshToGameObject;
    bool useConvex;

    Color rectLineColor = new Color(0.6f, 0.6f, 0.6f);


    [MenuItem("Window/Add MeshColliders")]
    static void OpenWindow()
    {
        AddMeshColliders window = (AddMeshColliders)GetWindow(typeof(AddMeshColliders));
        window.minSize = new Vector2(250, 250);
        window.Show();
    }

    void OnGUI()
    {
        Rect headerBG = new Rect(0, 0, Screen.width, 30);

        EditorGUI.DrawRect(headerBG, new Color(0.8f, 0.8f, 0.8f));

        GUI.skin.label.fontSize = 20;
        GUILayout.Label("Add MeshColliders");
        GUI.skin.label.fontSize = 12;
        GUI.skin.toggle.fontSize = 12;

        GUILayout.Space(10);

        GUILayout.BeginHorizontal();
        GUIContent parentContent = new GUIContent("Parent Object", "Adds or Removes MeshColliders from this GameObject. " +
        "If null, the currently selected GameObject will be used instead.");

        GUILayout.Label(parentContent, GUILayout.Width(100));
        addMeshToGameObject = (GameObject)EditorGUILayout.ObjectField(addMeshToGameObject, typeof(GameObject), true);
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        GUIContent convexContent = new GUIContent("Use Convex", "Decides whether or not to make the MeshCollider convex or not.");
        GUILayout.Label(convexContent, GUILayout.Width(100));
        useConvex = EditorGUILayout.Toggle(useConvex);
        GUILayout.EndHorizontal();

        DrawUILine(rectLineColor, 2, 10);

        GUILayout.Label("All Child Objects");
        if(GUILayout.Button("Add MeshColliders"))
        {
            //use gameobject in field
            if(addMeshToGameObject != null)
            {
                AddCollidersToChildren(addMeshToGameObject);
            }
            //Use selected gameobject
            else
            {
                if(Selection.activeGameObject != null)
                {
                    AddCollidersToChildren(Selection.activeGameObject);
                }                
            }
        }

        if (GUILayout.Button("Remove All MeshColliders"))
        {
            //use gameobject in field
            if (addMeshToGameObject != null)
            {
                RemoveCollidersFromChildren(addMeshToGameObject);
            }
            //Use selected gameobject
            else
            {
                RemoveCollidersFromChildren(Selection.activeGameObject);
            }
        }

        DrawUILine(rectLineColor, 2, 10);

        GUILayout.Label("Only Selected Object");

        if (GUILayout.Button("Add MeshCollider"))
        {
            //use gameobject in field
            if (addMeshToGameObject != null)
            {
                AddCollidersToSelection(addMeshToGameObject);
            }
            //Use selected gameobject
            else
            {
                AddCollidersToSelection(Selection.activeGameObject);
            }
        }

        if (GUILayout.Button("Remove MeshColliders"))
        {
            //use gameobject in field
            if (addMeshToGameObject != null)
            {
                RemoveCollidersFromSelection(addMeshToGameObject);
            }
            //Use selected gameobject
            else
            {
                RemoveCollidersFromSelection(Selection.activeGameObject);
            }
        }

        
    }

    void AddCollidersToSelection(GameObject obj)
    {
        if (obj.GetComponent<MeshRenderer>() != null && obj.GetComponent<Collider>() == null)
        {
            MeshCollider mc = obj.gameObject.AddComponent<MeshCollider>();

            if (useConvex)
            {
                mc.convex = true;
            }
        }
    }

    /// <summary>
    /// Adds mesh colliders to all children with Meshrenderers and no current MeshColliders on the selected object.
    /// </summary>
    /// <param name="obj"></param>
    void AddCollidersToChildren(GameObject obj)
    {
        foreach(Transform child in obj.transform)
        {
            if(child.GetComponent<MeshRenderer>() != null && child.GetComponent<Collider>() == null)
            {
                MeshCollider mc = child.gameObject.AddComponent<MeshCollider>();

                if(useConvex)
                {
                    mc.convex = true;
                }
            }

            AddCollidersToChildren(child.gameObject);
        }
    }

    /// <summary>
    /// Removes all MeshColliders from selected object.
    /// </summary>
    /// <param name="obj"></param>
    void RemoveCollidersFromSelection(GameObject obj)
    {
        MeshCollider[] cols = obj.GetComponents<MeshCollider>();

        foreach (MeshCollider c in cols)
        {
            DestroyImmediate(c);
        }
    }

    /// <summary>
    /// Removes all MeshColliders from all children of selected object.
    /// </summary>
    /// <param name="obj"></param>
    void RemoveCollidersFromChildren(GameObject obj)
    {
        foreach (Transform child in obj.transform)
        {
            MeshCollider[] cols = child.GetComponents<MeshCollider>();

            foreach (MeshCollider c in cols)
            {
                DestroyImmediate(c);
            }
        }
    }

    public static void DrawUILine(Color color, int thickness = 2, int padding = 10)
    {
        Rect r = EditorGUILayout.GetControlRect(GUILayout.Height(padding + thickness));
        r.height = thickness;
        r.y += padding / 2;
        r.x -= 2;
        r.width += 6;

        EditorGUI.DrawRect(r, color);
    }
}
