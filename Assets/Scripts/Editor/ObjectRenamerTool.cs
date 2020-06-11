using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class ObjectRenamerTool : EditorWindow
{
    private string NewStringName;
    private bool AppendToCurrent;
    private bool RenameChildren;

    private enum AppendType { Beginning, End};
    private AppendType CurrentAppendtype;

    [MenuItem("Window/Object Renamer Tool")]
    static void OpenWindow()
    {
        ObjectRenamerTool window = (ObjectRenamerTool)GetWindow(typeof(ObjectRenamerTool));
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
        Title();
        SelectionArea();
        RenameTo();
        RenameButton();
    }

    /// <summary>
    /// The title of the window when drawn
    /// </summary>
    private void Title()
    {
        Rect headerBG = new Rect(0, 0, Screen.width, 30);

        EditorGUI.DrawRect(headerBG, new Color(0.8f, 0.8f, 0.8f));

        GUI.skin.label.fontSize = 20;
        GUILayout.Label("Object Renamer Tool");
        GUI.skin.label.fontSize = 12;
        GUI.skin.toggle.fontSize = 12;
    }

    /// <summary>
    /// The GameObject selections displayed in the window
    /// </summary>
    private void SelectionArea()
    {
        //Multiple Selections
        if (Selection.gameObjects.Length > 1)
        {
            GUILayout.Label(string.Format("Selection: You've selected {0} GameObjects.", Selection.gameObjects.Length));
        }

        //One Selection
        else if (Selection.gameObjects.Length == 1)
        {
            GUILayout.Label(string.Format("Selection: {0}", Selection.activeGameObject.name));
        }

        //No Selection
        else
        {
            GUILayout.Label("Selection: Nothing Selected");
        }
    }

    /// <summary>
    /// Sets the rename settings.
    /// </summary>
    private void RenameTo()
    {
        GUI.SetNextControlName("NewString Input");

        NewStringName = GUILayout.TextField(NewStringName);

        if(GUILayout.Button("Clear"))
        {
            NewStringName = "";
            GUI.FocusControl("NewString Input");
        }

        AppendToCurrent = GUILayout.Toggle(AppendToCurrent, "Append to current name");

        if(AppendToCurrent)
        {
            CurrentAppendtype = (AppendType)EditorGUILayout.EnumPopup(CurrentAppendtype);

            RenameChildren = GUILayout.Toggle(RenameChildren, "Rename children");
        }
    }

    /// <summary>
    /// The button when pressed, renames selected gameobjects.
    /// </summary>
    private void RenameButton()
    {
        if(GUILayout.Button("Rename", GUILayout.Width(120)))
        {
            for (int i = 0; i < Selection.gameObjects.Length; i++)
            {
                //Rename all children of the selected gameobjects
                if (RenameChildren)
                {
                    Rename(Selection.gameObjects[i]);
                    RenameRecusion(Selection.gameObjects[i].transform);
                }

                //Only rename selected objects
                else
                {
                    Rename(Selection.gameObjects[i]);
                }
            }            
        }
    }

    /// <summary>
    /// Renames the GameObject.
    /// </summary>
    /// <param name="GO">GameObject to rename.</param>
    private void Rename(GameObject GO)
    {
        Undo.RecordObject(GO, GO.name + " rename");

        if (AppendToCurrent)
        {
            //Append to Beginning
            if (CurrentAppendtype == AppendType.Beginning)
            {
                GO.name = NewStringName + GO.name;
            }

            //Append to End
            else
            {
                GO.name = GO.name + NewStringName;
            }
        }

        //Replace name
        else
        {
            GO.name = NewStringName;
        }
    }

    /// <summary>
    /// Gets all children gameobjects and renames them.
    /// </summary>
    /// <param name="obj"></param>
    private void RenameRecusion(Transform obj)
    {
        foreach(Transform child in obj)
        {
            Rename(child.gameObject);

            RenameRecusion(child);
        }
    }    
}
