using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.Reflection;
using System;

[CustomEditor(typeof(NodePathing))]
public class NodePathingEditor : Editor
{
    bool loop = true;
    int removeInt = 1;
    int selectInt = 1;
    //NodePathing.PathColor color;

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        NodePathing nodePath = (NodePathing)target;

        if(nodePath.creaturePathType != nodePath.prevCreaturePathType)
        {
            nodePath.ChangeTag();
        }

        if (nodePath.pathType == NodePathing.PathingType.Line)
        {
            GUILayout.BeginHorizontal();
            EditorGUILayout.LabelField(new GUIContent("Node Color", "The color of the node and label."),
                new GUILayoutOption[] { GUILayout.MaxWidth(EditorGUIUtility.labelWidth - 4) });
            nodePath.nodeColor = (NodePathing.PathColor)EditorGUILayout.EnumPopup(nodePath.nodeColor);
            GUILayout.EndHorizontal();

            GUILayout.BeginHorizontal();
            EditorGUILayout.LabelField(new GUIContent("Loop Pathing", "When enabled, the creature will loop through the nodes lowest " +
                "to highest and then start back at zero. If disabled, the creature will travel in reverse, highest to lowest, " +
                "through the nodes when it has reached the last one."), 
                new GUILayoutOption[] { GUILayout.MaxWidth(EditorGUIUtility.labelWidth - 4)});

            nodePath.loopPathing = EditorGUILayout.Toggle(nodePath.loopPathing);
            GUILayout.EndHorizontal();
        }

        if (GUILayout.Button("Unlock Window", GUILayout.Width(110)))
        {
            InspectorLock(false);
        }

        if(nodePath.pathType == NodePathing.PathingType.Line)
        {
            if (GUILayout.Button("Add Node", GUILayout.Width(80)))
            {
                InspectorLock(true);
                Selection.activeObject = nodePath.AddNode();
            }

            if (nodePath.pathNodes.Count > 0)
            {
                GUILayout.BeginHorizontal();

                if (GUILayout.Button("Remove Node:", GUILayout.Width(110)))
                {
                    InspectorLock(true);
                    nodePath.RemoveNode(removeInt);
                }

                removeInt = EditorGUILayout.IntSlider(removeInt, 1, nodePath.pathNodes.Count);

                GUILayout.EndHorizontal();

                if (GUILayout.Button("Clear All Nodes", GUILayout.Width(110)))
                {
                    nodePath.ClearNodes();
                }

                GUILayout.BeginHorizontal();

                if (GUILayout.Button("Select Node:", GUILayout.Width(110)))
                {
                    InspectorLock(true);
                    Selection.activeGameObject = nodePath.pathNodes[selectInt - 1].gameObject;
                }

                selectInt = EditorGUILayout.IntSlider(selectInt, 1, nodePath.pathNodes.Count);

                GUILayout.EndHorizontal();

                if (GUILayout.Button("Select All Nodes", GUILayout.Width(110)))
                {
                    InspectorLock(true);

                    GameObject[] nodeSelection = new GameObject[nodePath.pathNodes.Count];
                    for (int i = 0; i < nodePath.pathNodes.Count; i++)
                    {
                        nodeSelection[i] = nodePath.pathNodes[i].gameObject;
                    }

                    Selection.objects = nodeSelection;
                }
            }
        }

        else if(nodePath.pathType == NodePathing.PathingType.Area)
        {
            nodePath.pathArea = EditorGUILayout.Vector3Field("Path Area", nodePath.pathArea);
        }

        if(GUI.changed)
        {
            nodePath.OnValidate();
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