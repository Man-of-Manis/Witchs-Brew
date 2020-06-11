using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class CopyComponentsTool : EditorWindow
{
    GameObject From;
    GameObject To;


    [MenuItem("Window/Copy Components Tool")]
    static void OpenWindow()
    {
        CopyComponentsTool window = (CopyComponentsTool)GetWindow(typeof(CopyComponentsTool));
        window.minSize = new Vector2(350, 125);
        window.Show();
    }

    void OnGUI()
    {
        DrawContents();
    }

    void OnSelectionChange()
    {
        Repaint();
    }

    void DrawContents()
    {
        SelectionArea();
        CopyComponentsButton();
        RemoveAllComponents();
    }

    void SelectionArea()
    {
        //From
        GUILayout.BeginHorizontal();
        EditorGUILayout.LabelField("From:", GUILayout.Width(45));
        From = (GameObject)EditorGUILayout.ObjectField(From, typeof(GameObject), true, GUILayout.MinWidth(100));
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("Use Selected", GUILayout.Width(100)))
        {
            From = Selection.activeGameObject;
        }

        if(GUILayout.Button("Clear", GUILayout.Width(50)))
        {
            From = null;
        }
        GUILayout.EndHorizontal();

        GUILayout.Space(10);

        //To
        GUILayout.BeginHorizontal();
        EditorGUILayout.LabelField("To:", GUILayout.Width(45));
        To = (GameObject)EditorGUILayout.ObjectField(To, typeof(GameObject), true, GUILayout.MinWidth(100));
        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("Use Selected", GUILayout.Width(100)))
        {
            To = Selection.activeGameObject;
        }

        if (GUILayout.Button("Clear", GUILayout.Width(50)))
        {
            To = null;
        }
        GUILayout.EndHorizontal();
    }

    void CopyComponentsButton()
    {
        if(GUILayout.Button("Copy Components", GUILayout.Width(120)))
        {
            var components = From.GetComponents<Component>();

            for(int i = components.Length - 1; i > 0; i--)
            {
                UnityEditorInternal.ComponentUtility.CopyComponent(components[i]);
                UnityEditorInternal.ComponentUtility.PasteComponentAsNew(To);
            }
        }
    }

    void RemoveAllComponents()
    {
        GUILayout.Space(10);

        if(GUILayout.Button("Remove all components from To" , GUILayout.Width(250)))
        {
            var components = To.GetComponents<Component>();

            for (int i = components.Length - 1; i > 0; i--)
            {
                DestroyImmediate(components[i]);
            }

            EditorGUIUtility.ExitGUI();
        }
    }
}
