using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System;
using System.Reflection;
using UnityEngine.Events;

[CustomEditor(typeof(ActivationLines))]
public class ActivationLinesEditor : Editor
{
    int removeInt = 1;
    int selectInt = 1;

    string[] propertiesInBaseClass = new string[] { "activated"};

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        ActivationLines activator = (ActivationLines)target;
        var so = new SerializedObject(activator);
        
        if (activator.timerType == 0)
        {
            GUILayout.BeginHorizontal();
            EditorGUILayout.LabelField(new GUIContent("Activation Time", "The total time it takes for all lines to activate."),
                new GUILayoutOption[] { GUILayout.MaxWidth(EditorGUIUtility.labelWidth - 1) });

            activator.activationTime = EditorGUILayout.FloatField(activator.activationTime);
            GUILayout.EndHorizontal();
        }
        else
        {
            GUILayout.BeginHorizontal();
            EditorGUILayout.LabelField(new GUIContent("Segment Time", "The time it takes for a single line to activate."),
                new GUILayoutOption[] { GUILayout.MaxWidth(EditorGUIUtility.labelWidth - 1) });

            activator.segmentTime = EditorGUILayout.FloatField(activator.segmentTime);
            GUILayout.EndHorizontal();
        }

        SerializedProperty activatedEvent = serializedObject.FindProperty("activated"); // <-- UnityEvent

        EditorGUILayout.PropertyField(activatedEvent);

        if (GUI.changed)
        {
            serializedObject.ApplyModifiedProperties();
        }

        if (GUILayout.Button("Unlock Window", GUILayout.Width(110)))
        {
            InspectorLock(false);
        }

        GUILayout.BeginHorizontal();
        if (GUILayout.Button("Add Line", GUILayout.Width(80)))
        {
            InspectorLock(true);
            GameObject newLine = activator.AddLine(0, Selection.gameObjects[0].transform);
            Selection.activeGameObject = newLine;
        }

        if (GUILayout.Button("Add Intersection", GUILayout.Width(120)))
        {
            InspectorLock(true);
            GameObject newIntersection = activator.AddLine(1, Selection.gameObjects[0].transform);
            Selection.activeGameObject = newIntersection;
        }

        GUILayout.EndHorizontal();

        if (activator.activatorLines.Count > 0)
        {
            GUILayout.BeginHorizontal();

            if (GUILayout.Button("Remove Line:", GUILayout.Width(110)))
            {
                InspectorLock(true);
                activator.RemoveLine(removeInt);
            }

            removeInt = EditorGUILayout.IntSlider(removeInt, 1, activator.activatorLines.Count);

            GUILayout.EndHorizontal();

            if (GUILayout.Button("Clear All Lines", GUILayout.Width(110)))
            {
                activator.ClearLines();
            }

            GUILayout.BeginHorizontal();

            if (GUILayout.Button("Select Line:", GUILayout.Width(110)))
            {
                InspectorLock(true);
                Selection.activeGameObject = activator.activatorLines[selectInt - 1].gameObject;
            }

            selectInt = EditorGUILayout.IntSlider(selectInt, 1, activator.activatorLines.Count);

            GUILayout.EndHorizontal();

            if (GUILayout.Button("Select All Lines", GUILayout.Width(110)))
            {
                InspectorLock(true);

                GameObject[] nodeSelection = new GameObject[activator.activatorLines.Count];
                for (int i = 0; i < activator.activatorLines.Count; i++)
                {
                    nodeSelection[i] = activator.activatorLines[i].gameObject;
                }

                Selection.objects = nodeSelection;
            }
        }

        if (GUI.changed) //Updates inspector anytime this script changes something
        {
            activator.OnValidate();
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
