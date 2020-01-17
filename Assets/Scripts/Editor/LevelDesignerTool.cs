using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class LevelDesignerTool : EditorWindow
{
    string[] toolbarStrings = { "Environment", "Interactable", "Creature"};
    int selectedToolbar = 0;

    GameObject currentSelection;
    List<GameObject> currentSelections = new List<GameObject>();

    Transform parentSelection;
    bool selectOnDuplication = false;
    bool useOffset = false;
    bool parentTo = false;
    bool newParent = false;
    bool newParentToParentSelection = false;
    string parentString = "new Parent";

    Vector3 positionOffset;
    Vector3 rotationOffset;

    float rotateBy = 90f;
    float rotateTo = 0f;

    float rotateBySmall = 5f;
    float rotateByLarge = 15f;

    float rotateToSmall = 0.25f;
    float rotateToMedium = 5f;
    float rotateToLarge = 15f;

    Rect headerSection;
    Rect rotationSection;
    Rect selectionSection;

    private static GameObject[] prefabs;


    [MenuItem("Window/Level Designer Tool")]
    static void OpenWindow()
    {
        LevelDesignerTool window = (LevelDesignerTool)GetWindow(typeof(LevelDesignerTool));
        window.minSize = new Vector2(200, 100);
        window.Show();
    }

    void OnEnable()
    {
        GetPrefabs("Assets/ExampleAssets/");
    }

    void OnGUI()
    {
        //DrawToolbars();
        DrawLayout();
        DrawContents();
    }
    
    void OnSelectionChange()
    {
        Repaint();
    }

    static void GetPrefabs(string locationPath)
    {
        if(System.IO.Directory.Exists(locationPath))
        {
            string[] search_results = System.IO.Directory.GetFiles(locationPath, "*.prefab", System.IO.SearchOption.AllDirectories);
            prefabs = new GameObject[search_results.Length];

            for (int i = 0; i < search_results.Length; i++)
            {
                Object prefab = null;
                prefab = AssetDatabase.LoadMainAssetAtPath(search_results[i]) as GameObject;
                prefabs[i] = prefab as GameObject;

                Debug.Log(prefabs[i].name + " " + i);
            }
        }        
    }


    /// <summary>
    /// Draws the toolbars at the top of the window
    /// </summary>
    void DrawToolbars()
    {
        GUILayout.BeginHorizontal();
        selectedToolbar = GUILayout.Toolbar(selectedToolbar, toolbarStrings, EditorStyles.toolbarButton , GUI.ToolbarButtonSize.FitToContents);
        GUILayout.EndHorizontal();
    }

    /// <summary>
    /// Draws
    /// </summary>
    void DrawLayout()
    {
        headerSection.x = 10;
        headerSection.y = 15;
        headerSection.width = Screen.width - 15;
        headerSection.height = 25;

        rotationSection.x = 10;
        rotationSection.y = 50;
        rotationSection.width = Screen.width - 15;
        rotationSection.height = 150;

        selectionSection.x = 10;
        selectionSection.y = 200;
        selectionSection.width = Screen.width - 15;
        selectionSection.height = 500;
    }

    /// <summary>
    /// Draws everything in the section
    /// </summary>
    void DrawContents()
    {
        //Header
        {
            
            GUILayout.BeginArea(headerSection); //Begin
            GUI.skin.label.fontSize = 20;
            GUILayout.Label("Level Designer Tool");
            GUI.skin.label.fontSize = 12;
            GUI.skin.toggle.fontSize = 12;

            GUILayout.EndArea(); //End
        }

        //Rotation
        {
            GUILayout.BeginArea(rotationSection); //Begin

            currentSelections.Clear(); //Resets selection

            for (int i = 0; i < Selection.gameObjects.Length; i++)
            {
                currentSelections.Add(Selection.gameObjects[i]);
            }

            GUILayout.Label("Rotate by:");
            //EditorGUILayout.LabelField("Rotate by:");

            GUILayout.BeginHorizontal();

            if (GUILayout.Button("CCW", GUILayout.Height(30), GUILayout.Width(40)))
            {
                for (int i = 0; i < currentSelections.Count; i++)
                {
                    currentSelections[i].transform.localRotation = currentSelections[i].transform.localRotation * Quaternion.AngleAxis(-rotateBy, Vector3.up);
                }
            }

            if (GUILayout.Button("-" + rotateByLarge.ToString(), GUILayout.Height(25), GUILayout.Width(35)))
            {
                rotateBy -= rotateByLarge;
                rotateBy = Mathf.Clamp(rotateBy, 0f, 360f);
            }

            if (GUILayout.Button("-" + rotateBySmall.ToString(), GUILayout.Height(25), GUILayout.Width(25)))
            {
                rotateBy -= rotateBySmall;
                rotateBy = Mathf.Clamp(rotateBy, 0f, 360f);
            }

            rotateBy = EditorGUILayout.FloatField(rotateBy, GUILayout.Width(35));

            if (GUILayout.Button("+" + rotateBySmall.ToString(), GUILayout.Height(25), GUILayout.Width(25)))
            {
                rotateBy += rotateBySmall;
                rotateBy = Mathf.Clamp(rotateBy, 0f, 360f);
            }

            if (GUILayout.Button("+" + rotateByLarge.ToString(), GUILayout.Height(25), GUILayout.Width(35)))
            {
                rotateBy += rotateByLarge;
                rotateBy = Mathf.Clamp(rotateBy, 0f, 360f);
            }

            if (GUILayout.Button("CW", GUILayout.Height(30), GUILayout.Width(40)))
            {
                for (int i = 0; i < currentSelections.Count; i++)
                {
                    //currentSelections[i].transform.localEulerAngles = currentSelections[i].transform.localEulerAngles + new Vector3(0f, rotateBy, 0f);
                    currentSelections[i].transform.localRotation = currentSelections[i].transform.localRotation * Quaternion.AngleAxis(rotateBy, Vector3.up);
                }
            }

            
            GUILayout.EndHorizontal();

            GUILayout.Space(10f);

            GUILayout.Label("Rotate to:");
            //EditorGUILayout.LabelField("Rotate to:");

            GUILayout.BeginHorizontal();

            if (GUILayout.Button("-" + rotateToLarge.ToString(), GUILayout.Height(25), GUILayout.Width(35)))
            {
                rotateTo -= rotateToLarge;
                rotateTo = Mathf.Clamp(rotateTo, 0f, 360f);
            }

            if (GUILayout.Button("-" + rotateToMedium.ToString(), GUILayout.Height(25), GUILayout.Width(25)))
            {
                rotateTo -= rotateToMedium;
                rotateTo = Mathf.Clamp(rotateTo, 0f, 360f);
            }

            if (GUILayout.Button("-" + rotateToSmall.ToString(), GUILayout.Height(25), GUILayout.Width(45)))
            {
                rotateTo -= rotateToSmall;
                rotateTo = Mathf.Clamp(rotateTo, 0f, 360f);
            }

            rotateTo = EditorGUILayout.FloatField(rotateTo, GUILayout.Width(35));

            if (GUILayout.Button("+" + rotateToSmall.ToString(), GUILayout.Height(25), GUILayout.Width(45)))
            {
                rotateTo += rotateToSmall;
                rotateTo = Mathf.Clamp(rotateTo, 0f, 360f);
            }

            if (GUILayout.Button("+" + rotateToMedium.ToString(), GUILayout.Height(25), GUILayout.Width(25)))
            {
                rotateTo += rotateToMedium;
                rotateTo = Mathf.Clamp(rotateTo, 0f, 360f);
            }

            if (GUILayout.Button("+" + rotateToLarge.ToString(), GUILayout.Height(25), GUILayout.Width(35)))
            {
                rotateTo += rotateToLarge;
                rotateTo = Mathf.Clamp(rotateTo, 0f, 360f);
            }

            GUILayout.EndHorizontal();

            if (GUILayout.Button("Set", GUILayout.Height(30), GUILayout.Width(275)))
            {
                for (int i = 0; i < currentSelections.Count; i++)
                {
                    //currentSelections[i].transform.localEulerAngles = new Vector3(currentSelections[i].transform.localEulerAngles.x, rotateTo, currentSelections[i].transform.localEulerAngles.z);
                    currentSelections[i].transform.localRotation = Quaternion.AngleAxis(rotateTo, Vector3.up);
                }
            }

            

            GUILayout.EndArea(); //End
        }

        //Selection
        {
            GUILayout.BeginArea(selectionSection); //Begin

            selectOnDuplication = GUILayout.Toggle(selectOnDuplication, "Select on Duplication");

            useOffset = GUILayout.Toggle(useOffset, "Use Offset");

            if (parentTo = GUILayout.Toggle(parentTo, "Parent to"))
            {
                using (var cHorizontalScope = new GUILayout.HorizontalScope())
                {
                    GUILayout.Space(20f); // horizontal indent size od 20 (pixels?)

                    using (var cVerticalScope = new GUILayout.VerticalScope())
                    {
                        // anything you do in here will be indented by 20 pixels
                        if (newParent = GUILayout.Toggle(newParent, "Parent to new GameObject"))
                        {
                            newParentToParentSelection = GUILayout.Toggle(newParentToParentSelection, "New GameObject -> Parent Selection");

                            EditorGUILayout.Space();

                            EditorGUILayout.BeginHorizontal();
                            GUILayout.Label("Parent Name: ", GUILayout.MaxWidth(145));
                            parentString = GUILayout.TextField(parentString, GUILayout.MaxWidth(200));
                            EditorGUILayout.EndHorizontal();
                        }

                        EditorGUILayout.BeginHorizontal();
                        GUILayout.Label("Parent Transform: ", GUILayout.MaxWidth(145));
                        parentSelection = (Transform)EditorGUILayout.ObjectField("", parentSelection, typeof(Transform), true, GUILayout.Width(300));
                        EditorGUILayout.EndHorizontal();

                        if (currentSelections.Count > 0) //Only shows buttons when one or more objects are selected
                        {
                            if (GUILayout.Button("Selection as Parent Transform", GUILayout.Height(25), GUILayout.MaxWidth(200)))
                            {
                                parentSelection = Selection.activeTransform;
                            }

                            if (GUILayout.Button("Clear Parent Transform", GUILayout.Height(25), GUILayout.MaxWidth(175)))
                            {
                                parentSelection = null;
                            }

                            EditorGUILayout.Space();

                            if (GUILayout.Button("Parent Selection", GUILayout.Height(25), GUILayout.MaxWidth(125)))
                            {
                                GameObject instParent = new GameObject(parentString);

                                for (int i = 0; i < Selection.gameObjects.Length; i++)
                                {
                                    Selection.gameObjects[i].transform.parent = newParent ? instParent.transform : parentSelection;
                                }

                                if(newParentToParentSelection)
                                {
                                    parentSelection = instParent.transform;
                                }                                
                            }

                            if (GUILayout.Button("Unparent Selection", GUILayout.Height(25), GUILayout.MaxWidth(125)))
                            {
                                for (int i = 0; i < Selection.gameObjects.Length; i++)
                                {
                                    Selection.gameObjects[i].transform.parent = null;

                                    Selection.gameObjects[i].transform.SetAsLastSibling();
                                }
                            }
                        }                        
                    }
                }
            }

            EditorGUILayout.Space();

            GUILayout.Label("Position Offset");
            positionOffset = EditorGUILayout.Vector3Field("", positionOffset);

            GUILayout.Label("Rotation Offset");
            rotationOffset = EditorGUILayout.Vector3Field("", new Vector3(rotationOffset.x, -rotationOffset.y, rotationOffset.z));

            if (currentSelections.Count > 0)
            {
                DuplicateSelection();
            }

            PrefabList(currentSelections); //Draws selections to window

            

            GUILayout.EndArea(); //End
        }
    }

    void PrefabList(List<GameObject> list)
    {
        for (int i = 0; i < list.Count; i++)
        {
            GUILayout.BeginHorizontal();
            GUILayout.Label("Selection No. " + i, GUILayout.MaxWidth(125));
            list[i] = (GameObject)EditorGUILayout.ObjectField("", list[i], typeof(GameObject), false, GUILayout.Width(250));
            GUILayout.Space(25);
            GUILayout.Label("Y rotation :" + System.Math.Round(list[i].transform.localEulerAngles.y, 3), GUILayout.Width(150));
            GUILayout.EndHorizontal();
        }
    }

    void DuplicateSelection()
    {
        if(GUILayout.Button(parentTo ? (parentSelection != null ? "Duplicate & Parent Selection" : "Duplicate Selection") : "Duplicate Selection", GUILayout.Height(25), GUILayout.MaxWidth(200)))
        {            
            List<int> duplicationIndex = new List<int>();
            List<GameObject> selections = new List<GameObject>();

            for(int i = 0; i < Selection.gameObjects.Length; i++)
            {
                for(int j = 0; j < Selection.gameObjects.Length; j++)
                {
                    if (Selection.gameObjects[i].transform.IsChildOf(Selection.gameObjects[j].transform) && i != j)
                    {
                        return;
                    }
                }

                duplicationIndex.Add(i);

                //Debug.Log(Selection.objects[i].name);
            }

            for(int i = 0; i < Selection.gameObjects.Length; i++)
            {
                //selections.Add(Selection.gameObjects[i]);
            }

            for(int i = 0; i < duplicationIndex.Count; i++)
            {
                GameObject parent;

                parent = Instantiate(Selection.gameObjects[duplicationIndex[i]],
                    useOffset ? Selection.gameObjects[duplicationIndex[i]].transform.localPosition + positionOffset : Selection.gameObjects[duplicationIndex[i]].transform.localPosition,
                    useOffset ? Selection.gameObjects[duplicationIndex[i]].transform.localRotation * Quaternion.Euler(rotationOffset) : Selection.gameObjects[duplicationIndex[i]].transform.localRotation,
                    parentTo ? parentSelection : Selection.gameObjects[duplicationIndex[i]].transform.parent);

                parent.name = Selection.gameObjects[duplicationIndex[i]].name;

                if (selectOnDuplication)
                {
                    selections.Add(parent);

                    /*
                    for (int j = 0; j < Selection.gameObjects.Length; j++)
                    {
                        GameObject inSelection = CheckChildren(Selection.gameObjects[i].transform, parent.transform).gameObject;

                        if (inSelection != null)
                        {
                            selections.Add(inSelection);
                        }
                    }
                    */
                }
            }

            if (selectOnDuplication)
            {
                Selection.objects = selections.ToArray();
            }
        }
    }

    Transform CheckChildren(Transform child, Transform parent)
    {
        foreach (Transform children in parent.transform)
        {
            if(children == child)
            {
                return children;
            }

            if(children.childCount > 0)
            {
                CheckChildren(child, children);
            }
        }

        return null;
    }

    void DragablePrefabs()
    {
        Rect drag_area = GUILayoutUtility.GetRect(0.0f, 100.0f, GUILayout.ExpandWidth(true));
        GUI.Box(drag_area, "Prefabed");

        GUILayout.BeginArea(drag_area);
        GUI.contentColor = Color.black;
        GUILayout.Label("Prefab");

        //newPrefab = (GameObject)EditorGUILayout.ObjectField(prefabs[0], typeof(PrefabAssetType), true);
        

        GUILayout.EndArea();
    }
}
