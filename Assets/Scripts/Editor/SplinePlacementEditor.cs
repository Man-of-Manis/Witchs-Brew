using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
namespace SplineMesh
{
    [CustomEditor(typeof(SplinePlacement))]
    public class SplinePlacementEditor : Editor
    {
        public override void OnInspectorGUI()
        {
            DrawDefaultInspector();

            SplinePlacement placement = (SplinePlacement)target;

            if(GUILayout.Button("Reset"))
            {
                placement.ObjectPlacement();
                placement.ConnectJoints();
            }

            if(GUILayout.Button("Delete Children"))
            {
                placement.DestroyInstantiatedChildren();
            }
        }
    }
}
