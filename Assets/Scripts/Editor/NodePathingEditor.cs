using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Reflection;
using System;

[CustomEditor(typeof(NodePathing))]
public class NodePathingEditor : Editor
{
    int removeInt = 1;

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        NodePathing nodePath = (NodePathing)target;

        if (GUILayout.Button("Unlock Window", GUILayout.Width(110)))
        {
            InspectorLock(false);
        }

        if (GUILayout.Button("Add Node", GUILayout.Width(80)))
        {
            InspectorLock(true);
            Selection.activeObject = nodePath.AddNode();
        }

        if (nodePath.nodePath.Count > 0)
        {
            GUILayout.BeginHorizontal();

            if (GUILayout.Button("Remove Node:", GUILayout.Width(110)))
            {
                InspectorLock(true);
                nodePath.RemoveNode(removeInt);
            }

            removeInt = EditorGUILayout.IntSlider(removeInt, 1, nodePath.nodePath.Count);

            GUILayout.EndHorizontal();

            if (GUILayout.Button("Clear All Nodes", GUILayout.Width(110)))
            {
                nodePath.ClearNodes();
            }
        }
    }

    static void ToggleInspectorLock() // Inspector must be inspecting something to be locked
    {
        EditorWindow inspectorToBeLocked = EditorWindow.mouseOverWindow; // "EditorWindow.focusedWindow" can be used instead

        if (inspectorToBeLocked != null && inspectorToBeLocked.GetType().Name == "InspectorWindow")
        {
            Type type = Assembly.GetAssembly(typeof(Editor)).GetType("UnityEditor.InspectorWindow");
            PropertyInfo propertyInfo = type.GetProperty("isLocked");
            bool value = (bool)propertyInfo.GetValue(inspectorToBeLocked, null);
            propertyInfo.SetValue(inspectorToBeLocked, !value, null);
            inspectorToBeLocked.Repaint();
        }
    }

    static void InspectorLock(bool lockState) // Inspector must be inspecting something to be locked
    {
        EditorWindow inspectorToBeLocked = EditorWindow.mouseOverWindow; // "EditorWindow.focusedWindow" can be used instead

        if (inspectorToBeLocked != null && inspectorToBeLocked.GetType().Name == "InspectorWindow")
        {
            Type type = Assembly.GetAssembly(typeof(Editor)).GetType("UnityEditor.InspectorWindow");
            PropertyInfo propertyInfo = type.GetProperty("isLocked");
            propertyInfo.SetValue(inspectorToBeLocked, lockState, null);
            inspectorToBeLocked.Repaint();
        }
    }
}