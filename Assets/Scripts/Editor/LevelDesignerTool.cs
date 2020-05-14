using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class LevelDesignerTool : EditorWindow
{
    #region Fields
    string[] toolbarStrings = { "Environment", "Interactable", "Creature"};
    int selectedToolbar = 0;

    Vector2 scrollPosition;

    GameObject currentSelection;
    List<GameObject> currentSelections = new List<GameObject>();

    Color lineColor = new Color(0.6f, 0.6f, 0.6f);
    Color paragraphColor = new Color(0.8f, 0.8f, 0.8f);



    #region Position Fields
    public bool showPositionContent;

    float moveByX = 1f;
    float moveByY = 1f;
    float moveByZ = 1f;

    Vector3 moveBy = Vector3.zero;
    Vector3 moveTo = Vector3.zero;
    #endregion

    #region Rotation Fields
    public bool showRotationContent;

    float rotateByX = 90f;
    float rotateByY = 90f;
    float rotateByZ = 90f;

    Vector3 rotateTo = Vector3.zero;

    float rotateBy = 90f;
    //float rotateTo = 0f;

    float rotateBySmall = 5f;
    float rotateByLarge = 15f;

    float rotateToSmall = 0.25f;
    float rotateToMedium = 5f;
    float rotateToLarge = 15f;
    #endregion

    #region Parent Fields
    bool showParentContent = false;
    Transform parentSelection;
    bool parentTo = false;
    bool newParent = false;
    bool newParentToParentSelection = false;
    string parentString = "new Parent";
    #endregion

    #region Duplication
    bool showDuplicationContent;
    
    bool selectOnDuplication = false;
    bool useOffset = false;    
    bool worldOrLocalRotation = false;
    bool relativeToParentOrOrigin = false;
    

    Vector3 positionOffset;
    Vector3 rotationOffset;
    #endregion

    #region Rects
    Rect headerSection;
    Rect positionSection;
    Rect rotationSection;
    Rect selectionSection;
    #endregion

    private static GameObject[] prefabs;
    #endregion

    [MenuItem("Window/Level Designer Tool")]
    static void OpenWindow()
    {
        LevelDesignerTool window = (LevelDesignerTool)GetWindow(typeof(LevelDesignerTool));
        window.minSize = new Vector2(325, 500);
        window.Show();
    }

    void OnEnable()
    {
        GetPrefabs("Assets/ExampleAssets/");
    }

    void OnGUI()
    {
        scrollPosition = EditorGUILayout.BeginScrollView(scrollPosition, false, false, GUILayout.Height(Screen.height - 22));
        //scrollPosition = scrollViewScope.scrollPosition;
        //DrawUILine(Color.blue, 30, 10);
        //DrawToolbars();
        //DrawLayout();
        DrawContents();
        //DrawEditorLayout();
        
        GUILayout.EndScrollView();
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

    //Not Used
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

        positionSection.x = 10;
        positionSection.y = 45;
        positionSection.width = Screen.width - 15;
        //positionSection.height = 50;

        Rect posSpace = DrawSection(0, positionSection.y + positionSection.height, Screen.width, 2, lineColor);

        rotationSection.x = 10;
        rotationSection.y = posSpace.y + posSpace.height;
        rotationSection.width = Screen.width - 15;
        //rotationSection.height = 150;

        Rect rotSpace = DrawSection(0, rotationSection.y + rotationSection.height, Screen.width, 2, lineColor);

        selectionSection.x = 10;
        selectionSection.y = rotSpace.y + rotSpace.height;
        selectionSection.width = Screen.width - 15;
        selectionSection.height = 500;
    }

    //Not working
    void DrawEditorLayout()
    {
        //headerSection = EditorGUILayout.RectField(headerSection);
        EditorGUI.DrawRect(headerSection, new Color(0.8f, 0.8f, 0.8f));

        //positionSection = EditorGUILayout.RectField(positionSection);
        EditorGUI.DrawRect(positionSection, new Color(0.8f, 0.8f, 0.8f));
        //DrawUILine(new Color(0.5f, 0.5f, 0.5f));

        //rotationSection = EditorGUILayout.RectField(rotationSection);
        EditorGUI.DrawRect(rotationSection, new Color(0.8f, 0.8f, 0.8f));
        //DrawUILine(new Color(0.5f, 0.5f, 0.5f));

        //selectionSection = EditorGUILayout.RectField(selectionSection);
        EditorGUI.DrawRect(selectionSection, new Color(0.8f, 0.8f, 0.8f));
    }

    /// <summary>
    /// Draws everything in the section
    /// </summary>
    void DrawContents()
    {
        //Header
        {
            Rect headerBG = new Rect(0, 0, Screen.width, 30);

            EditorGUI.DrawRect(headerBG, new Color(0.8f, 0.8f, 0.8f));

            //GUILayout.BeginArea(headerSection); //Begin
            GUI.skin.label.fontSize = 20;
            GUILayout.Label("Level Designer Tool");
            GUI.skin.label.fontSize = 12;
            GUI.skin.toggle.fontSize = 12;

            //GUILayout.EndArea(); //End


        }

        DrawPositionRect();
        DrawUILine(lineColor, 2, 10);
        DrawRotationRect();
        DrawUILine(lineColor, 2, 10);
        DrawParentRect();
        DrawUILine(lineColor, 2, 10);
        DrawDuplicationRect();
        
    }

    void DrawPositionRect()
    {
        #region Position
        //GUILayout.BeginArea(positionSection); //Begin

        showPositionContent = EditorGUILayout.Foldout(showPositionContent, "Positions", EditorStyles.foldoutHeader);

        if (showPositionContent)
        {
            using (var cHorizontalScope = new GUILayout.HorizontalScope())
            {
                GUILayout.Space(20f); // horizontal indent size od 20 (pixels?)

                using (var cVerticalScope = new GUILayout.VerticalScope())
                {
                    #region X
                    GUILayout.BeginHorizontal();

                    FloatButton("X", ref moveByX);

                    if (GUILayout.Button("World X", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Vector3.right * moveByX);
                        }
                    }

                    if (GUILayout.Button("Local X", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Quaternion.Euler(currentSelections[i].transform.localEulerAngles) * (Vector3.right * moveByX));
                        }
                    }

                    GUILayout.EndHorizontal();
                    #endregion

                    DrawUILine(paragraphColor, 3, 2);

                    #region Y
                    GUILayout.BeginHorizontal();
                    FloatButton("Y", ref moveByY);

                    if (GUILayout.Button("World Y", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Vector3.up * moveByY);
                        }
                    }

                    if (GUILayout.Button("Local Y", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Quaternion.Euler(currentSelections[i].transform.localEulerAngles) * (Vector3.up * moveByY));
                        }
                    }

                    GUILayout.EndHorizontal();
                    #endregion

                    DrawUILine(paragraphColor, 3, 2);

                    #region Z
                    GUILayout.BeginHorizontal();
                    FloatButton("Z", ref moveByZ);

                    if (GUILayout.Button("World Z", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Vector3.forward * moveByZ);
                        }
                    }

                    if (GUILayout.Button("Local Z", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Quaternion.Euler(currentSelections[i].transform.localEulerAngles) * (Vector3.forward * moveByZ));
                        }
                    }

                    GUILayout.EndHorizontal();
                    #endregion

                    #region Local Move
                    DrawUILine(paragraphColor, 3, 10);

                    GUILayout.BeginHorizontal();
                    Vector3ButtonFloats(ref moveBy);
                    GUILayout.EndHorizontal();

                    GUILayout.BeginHorizontal();

                    if (GUILayout.Button("World Move By", GUILayout.Height(25), GUILayout.Width(105)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + moveBy;
                        }
                    }

                    if (GUILayout.Button("Local Move By", GUILayout.Height(25), GUILayout.Width(105)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Quaternion.Euler(currentSelections[i].transform.localEulerAngles) * moveBy);
                        }
                    }

                    Vector3ZeroOut(ref moveBy);

                    GUILayout.EndHorizontal();
                    #endregion

                    #region Local Set

                    DrawUILine(paragraphColor, 3, 10);

                    GUILayout.BeginHorizontal();
                    Vector3ButtonFloats(ref moveBy);
                    GUILayout.EndHorizontal();

                    GUILayout.BeginHorizontal();

                    if (GUILayout.Button("World Move To", GUILayout.Height(25), GUILayout.Width(105)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.position = moveTo;
                        }
                    }

                    if (GUILayout.Button("Local Move To", GUILayout.Height(25), GUILayout.Width(105)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = moveTo;
                        }
                    }

                    Vector3ZeroOut(ref moveTo);

                    GUILayout.EndHorizontal();
                    #endregion
                }
            }
        }
        #endregion
    }

    void DrawRotationRect()
    {
        //Rotation
        {
            //GUILayout.BeginArea(rotationSection); //Begin

            currentSelections.Clear(); //Resets selection

            for (int i = 0; i < Selection.gameObjects.Length; i++)
            {
                currentSelections.Add(Selection.gameObjects[i]);
            }

            showRotationContent = EditorGUILayout.Foldout(showRotationContent, "Rotations", EditorStyles.foldoutHeader);

            if (showRotationContent)
            {
                using (var cHorizontalScope = new GUILayout.HorizontalScope())
                {
                    GUILayout.Space(20f); // horizontal indent size od 20 (pixels?)

                    using (var cVerticalScope = new GUILayout.VerticalScope())
                    {
                        #region Old Rotations
                        /*
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

                        DrawUILine(paragraphColor, 3, 10);

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

                    */
                        #endregion


                        #region Rotate X
                        GUILayout.BeginHorizontal();
                        FloatButton("X", ref rotateByX);

                        if (GUILayout.Button("World X", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByX, Vector3.right, true);
                        }

                        if (GUILayout.Button("Local X", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByX, Vector3.right, false);
                        }

                        GUILayout.EndHorizontal();
                        #endregion

                        DrawUILine(paragraphColor, 3, 2);

                        #region Rotate Y
                        GUILayout.BeginHorizontal();
                        FloatButton("Y", ref rotateByY);

                        if (GUILayout.Button("World Y", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByY, Vector3.up, true);
                        }

                        if (GUILayout.Button("Local Y", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByY, Vector3.up, false);
                        }

                        GUILayout.EndHorizontal();
                        #endregion

                        DrawUILine(paragraphColor, 3, 2);

                        #region Rotate Z
                        GUILayout.BeginHorizontal();
                        FloatButton("Z", ref rotateByZ);

                        if (GUILayout.Button("World Z", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByZ, Vector3.forward, true);
                        }

                        if (GUILayout.Button("Local Z", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByZ, Vector3.forward, false);
                        }

                        GUILayout.EndHorizontal();
                        #endregion

                        DrawUILine(paragraphColor, 3, 10);

                        #region Rotate To
                        GUILayout.BeginHorizontal();
                        Vector3ButtonFloats(ref rotateTo);
                        GUILayout.EndHorizontal();

                        GUILayout.BeginHorizontal();
                        if (GUILayout.Button("World Rotate To", GUILayout.Width(105), GUILayout.Height(25)))
                        {
                            for (int i = 0; i < currentSelections.Count; i++)
                            {
                                currentSelections[i].transform.rotation = Quaternion.Euler(rotateTo);
                            }
                        }

                        if (GUILayout.Button("Local Rotate To", GUILayout.Width(105), GUILayout.Height(25)))
                        {
                            for (int i = 0; i < currentSelections.Count; i++)
                            {
                                currentSelections[i].transform.localRotation = Quaternion.Euler(rotateTo);
                            }
                        }

                        Vector3ZeroOut(ref rotateTo);

                        GUILayout.EndHorizontal();
                        #endregion
                    }
                }
            }
        }
    }

    void DrawParentRect()
    {
        showParentContent = EditorGUILayout.Foldout(showParentContent, "Parenting", EditorStyles.foldoutHeader);

        if(showParentContent)
        {
            using (var cHorizontalScope = new GUILayout.HorizontalScope())
            {
                GUILayout.Space(20f); // horizontal indent size od 20 (pixels?)

                using (var cVerticalScope = new GUILayout.VerticalScope())
                {
                    if (parentTo = GUILayout.Toggle(parentTo, "Parent to"))
                    {
                        using (var bHorizontalScope = new GUILayout.HorizontalScope())
                        {
                            GUILayout.Space(20f); // horizontal indent size od 20 (pixels?)

                            using (var bVerticalScope = new GUILayout.VerticalScope())
                            {
                                // anything you do in here will be indented by 20 pixels
                                DrawUILine(paragraphColor, 3, 10);

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
                                parentSelection = (Transform)EditorGUILayout.ObjectField("", parentSelection, typeof(Transform), true, GUILayout.MinWidth(100));

                                EditorGUILayout.EndHorizontal();

                                if (currentSelections.Count > 0 || parentSelection != null) //Only shows buttons when one or more objects are selected
                                {
                                    DrawUILine(paragraphColor, 3, 10);

                                    if (currentSelections.Count > 0)
                                    {
                                        if (GUILayout.Button("Selection as Parent Transform", GUILayout.Height(25), GUILayout.MaxWidth(200), GUILayout.MinWidth(100)))
                                        {
                                            parentSelection = Selection.activeTransform;
                                        }
                                    }

                                    if (GUILayout.Button("Clear Parent Transform", GUILayout.Height(25), GUILayout.MaxWidth(175), GUILayout.MinWidth(100)))
                                    {
                                        parentSelection = null;
                                    }

                                    DrawUILine(paragraphColor, 3, 10);

                                    if ((currentSelections.Count > 0 && parentSelection != null) || newParent)
                                    {
                                        if (GUILayout.Button("Parent Selection", GUILayout.Height(25), GUILayout.MaxWidth(125), GUILayout.MinWidth(100)))
                                        {
                                            if(newParent)
                                            {
                                                GameObject instParent = new GameObject(parentString);

                                                for (int i = 0; i < Selection.gameObjects.Length; i++)
                                                {
                                                    Selection.gameObjects[i].transform.parent = instParent.transform;
                                                }

                                                if (newParentToParentSelection)
                                                {
                                                    parentSelection = instParent.transform;
                                                }
                                            }     
                                            
                                            else
                                            {
                                                for (int i = 0; i < Selection.gameObjects.Length; i++)
                                                {
                                                    Selection.gameObjects[i].transform.parent = parentSelection;
                                                }
                                            }
                                        }
                                    }

                                    if (currentSelections.Count > 0)
                                    {
                                        if (GUILayout.Button("Unparent Selection", GUILayout.Height(25), GUILayout.MaxWidth(125), GUILayout.MinWidth(100)))
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
                    }

                }
            }
        }
    }

    void DrawDuplicationRect()
    {
        //Selection
        {
            //GUILayout.BeginArea(selectionSection); //Begin

            showDuplicationContent = EditorGUILayout.Foldout(showDuplicationContent, "Duplication", EditorStyles.foldoutHeader);

            if (showDuplicationContent)
            {

                using (var cHorizontalScope = new GUILayout.HorizontalScope())
                {
                    GUILayout.Space(20f); // horizontal indent size od 20 (pixels?)

                    using (var cVerticalScope = new GUILayout.VerticalScope())
                    {
                        selectOnDuplication = GUILayout.Toggle(selectOnDuplication, "Select on Duplication");

                        useOffset = GUILayout.Toggle(useOffset, "Use Offset");

                        
                        if(useOffset)
                        {
                            DrawUILine(paragraphColor, 3, 10);

                            GUILayout.Label("Position Offset");
                            GUILayout.BeginHorizontal();
                            Vector3ButtonFloats(ref positionOffset);
                            GUILayout.EndHorizontal();

                            Vector3ZeroOut(ref positionOffset);

                            DrawUILine(paragraphColor, 3, 10);

                            GUILayout.Label("Rotation Offset");
                            GUILayout.BeginHorizontal();
                            Vector3ButtonFloats(ref rotationOffset);
                            GUILayout.EndHorizontal();

                            Vector3ZeroOut(ref rotationOffset);

                            DrawUILine(paragraphColor, 3, 10);

                            GUILayout.BeginHorizontal();
                            if (GUILayout.Button("Set to " + (worldOrLocalRotation ? "Local" : "World") + " Rotation", GUILayout.Width(130)))
                            {
                                worldOrLocalRotation = !worldOrLocalRotation;
                            }

                            GUILayout.Label("Current: " + (worldOrLocalRotation ? "World" : "Local") + " Rotation");
                            GUILayout.EndHorizontal();
                        }                        

                        if (currentSelections.Count > 0)
                        {
                            DrawUILine(paragraphColor, 3, 10);
                            DuplicateSelection();
                        }

                        PrefabList(currentSelections); //Draws selections to window
                    }
                }
            }
        }
    }

    void DuplicateSelection()
    {
        if (GUILayout.Button(parentTo ? (parentSelection != null ? "Duplicate & Parent Selection" : "Duplicate Selection") : "Duplicate Selection", GUILayout.Height(25), GUILayout.MaxWidth(200)))
        {
            List<int> duplicationIndex = new List<int>();
            List<GameObject> selections = new List<GameObject>();

            for (int i = 0; i < Selection.gameObjects.Length; i++)
            {
                for (int j = 0; j < Selection.gameObjects.Length; j++)
                {
                    if (Selection.gameObjects[i].transform.IsChildOf(Selection.gameObjects[j].transform) && i != j)
                    {
                        return;
                    }
                }

                duplicationIndex.Add(i);

                //Debug.Log(Selection.objects[i].name);
            }

            for (int i = 0; i < Selection.gameObjects.Length; i++)
            {
                //selections.Add(Selection.gameObjects[i]);
            }

            for (int i = 0; i < duplicationIndex.Count; i++)
            {
                GameObject instantiated;
                GameObject prefab;

                /*
                parent = Instantiate(Selection.gameObjects[duplicationIndex[i]],
                    useOffset ? Selection.gameObjects[duplicationIndex[i]].transform.position + positionOffset : Selection.gameObjects[duplicationIndex[i]].transform.position,
                    useOffset ? Selection.gameObjects[duplicationIndex[i]].transform.localRotation * Quaternion.Euler(rotationOffset) : Selection.gameObjects[duplicationIndex[i]].transform.localRotation,
                    parentTo ? parentSelection : Selection.gameObjects[duplicationIndex[i]].transform.parent);
                    */

                prefab = PrefabUtility.GetCorrespondingObjectFromSource(Selection.gameObjects[duplicationIndex[i]]);

                //Checks if object is a prefab or not
                if (prefab != null)
                {
                    //Creates new object with Prefab references intact
                    instantiated = (GameObject)PrefabUtility.InstantiatePrefab(prefab);
                }
                else
                {
                    //Creates new object, but loses prefab references if any
                    instantiated = Instantiate(Selection.gameObjects[duplicationIndex[i]]);

                    //Checks if there are any prefabs in the children
                    ChildGO(instantiated, Selection.gameObjects[duplicationIndex[i]]);
                }

                Undo.RegisterCreatedObjectUndo(instantiated, "Created " + "Duplicate");

                #region Parenting

                if (parentTo && parentSelection != null)
                {
                    //Parents created objects to Parent Selection

                    instantiated.transform.parent = parentSelection;

                    /*
                    if(newParent)
                    {
                        GameObject instParent = new GameObject(parentString);

                        //Set new parent position and rotation here <--------------------------------

                        //Parents created objects to new GameObject
                        parent.transform.parent = instParent.transform;
                    }                    
                    else
                    {
                        //Parents created objects to Parent Selection
                        parent.transform.parent = parentSelection;
                    }
                    */
                }
                else
                {
                    //Parents new object to the original object's parent

                    instantiated.transform.parent = Selection.gameObjects[duplicationIndex[i]].transform.parent;

                    instantiated.transform.SetSiblingIndex(Selection.gameObjects[duplicationIndex[i]].transform.GetSiblingIndex() + 1);

                }

                #endregion

                #region Position
                instantiated.transform.position = Selection.gameObjects[duplicationIndex[i]].transform.position;
                instantiated.transform.rotation = Selection.gameObjects[duplicationIndex[i]].transform.rotation;
                if (useOffset)
                {
                    //parent.transform.position += positionOffset;

                    if(worldOrLocalRotation)
                    {
                        instantiated.transform.position += positionOffset;
                    }
                    else
                    {
                        //instantiated.transform.localPosition += (Quaternion.Euler(instantiated.transform.localEulerAngles) * (Vector3.right * positionOffset.x));
                        //instantiated.transform.localPosition += (Quaternion.Euler(instantiated.transform.localEulerAngles) * (Vector3.up * positionOffset.y));
                        //instantiated.transform.localPosition += (Quaternion.Euler(instantiated.transform.localEulerAngles) * (Vector3.forward * positionOffset.z));
                        instantiated.transform.position += instantiated.transform.right * positionOffset.x;
                        instantiated.transform.position += instantiated.transform.up * positionOffset.y;
                        instantiated.transform.position += instantiated.transform.forward * positionOffset.z;
                    }                    
                }                
                #endregion

                #region Rotation
                //instantiated.transform.rotation = Selection.gameObjects[duplicationIndex[i]].transform.rotation;

                if (useOffset)
                {
                    if (worldOrLocalRotation)
                    {
                        //rotates using world rotation
                        //X Axis
                        Vector3 xAxis = instantiated.transform.InverseTransformDirection(Vector3.right);
                        instantiated.transform.rotation *= Quaternion.AngleAxis(rotationOffset.x, xAxis);
                        //parent.transform.RotateAround(Vector3.right, rotationOffset.x);                        
                        //parent.transform.Rotate(Vector3.right, rotationOffset.x);

                        //Y Axis
                        Vector3 yAxis = instantiated.transform.InverseTransformDirection(Vector3.up);
                        instantiated.transform.rotation *= Quaternion.AngleAxis(rotationOffset.y, yAxis);

                        //parent.transform.rotation *= Quaternion.AngleAxis(rotationOffset.y, Vector3.up);
                        //parent.transform.Rotate(Vector3.up, rotationOffset.y);

                        //Z Axis
                        Vector3 zAxis = instantiated.transform.InverseTransformDirection(Vector3.forward);
                        instantiated.transform.rotation *= Quaternion.AngleAxis(rotationOffset.z, zAxis);
                        //parent.transform.rotation *= Quaternion.AngleAxis(rotationOffset.z, Vector3.forward);
                        //parent.transform.Rotate(Vector3.forward, rotationOffset.z);

                    }
                    else
                    {
                        //rotates using local rotation
                        //X Axis
                        instantiated.transform.localRotation *= Quaternion.AngleAxis(rotationOffset.x, Vector3.right);

                        //Y Axis
                        instantiated.transform.localRotation *= Quaternion.AngleAxis(rotationOffset.y, Vector3.up);

                        //Z Axis
                        instantiated.transform.localRotation *= Quaternion.AngleAxis(rotationOffset.z, Vector3.forward);
                    }
                }
                #endregion

                #region Scale
                instantiated.transform.localScale = Selection.gameObjects[duplicationIndex[i]].transform.localScale;
                #endregion

                //Set new object's name
                instantiated.name = Selection.gameObjects[duplicationIndex[i]].name;

                if (selectOnDuplication)
                {
                    selections.Add(instantiated);

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
                //Sets current selection to all newly created objects
                Selection.objects = selections.ToArray();
            }
        }
        /*
        if(GUILayout.Button("Test Dupe"))
        {
            SceneView.lastActiveSceneView.Focus();
            EditorWindow.focusedWindow.SendEvent(EditorGUIUtility.CommandEvent("Duplicate"));
        }
        */
    }

    void PrefabList(List<GameObject> list)
    {
        for (int i = 0; i < list.Count; i++)
        {
            GUILayout.BeginHorizontal();
            GUILayout.Label("Selection No. " + i, GUILayout.MaxWidth(125));
            list[i] = (GameObject)EditorGUILayout.ObjectField("", list[i], typeof(GameObject), false, GUILayout.MinWidth(50));
            GUILayout.Space(10);
            Vector3 tempVector = TransformUtils.GetInspectorRotation(list[i].transform);
            GUILayout.Label("R: (" + System.Math.Round(tempVector.x, 3) + ", " 
                + System.Math.Round(tempVector.y, 3) + ", " 
                + System.Math.Round(tempVector.z, 3) + ")", GUILayout.MinWidth(100));
            GUILayout.EndHorizontal();
        }
    }

    /// <summary>
    /// Rotates all selected GameObjects.
    /// </summary>
    /// <param name="rotation">The rotation to be applied.</param>
    /// <param name="axisDirection">The axis to rotate around.</param>
    void SingleAxisRotation(float rotation, Vector3 axis, bool worldSpace)
    {
        for (int i = 0; i < currentSelections.Count; i++)
        {
            if(worldSpace)
            {
                Vector3 directionAxis = currentSelections[i].transform.InverseTransformDirection(axis);
                currentSelections[i].transform.rotation *= Quaternion.AngleAxis(rotation, directionAxis);

            }
            else
            {
                currentSelections[i].transform.localRotation *= Quaternion.AngleAxis(rotation, axis);
            }            
        }
    }

    /// <summary>
    /// Creates a horizontal line of 3 float fields representing a vector3 with buttons to get the opposite value of the current float.
    /// </summary>
    /// <param name="vector">The Vector3 that is represented.</param>
    private void Vector3ButtonFloats(ref Vector3 vector)
    {
        FloatButton("X", ref vector.x);
        FloatButton("Y", ref vector.y);
        FloatButton("Z", ref vector.z);
    }

    /// <summary>
    /// Creates a line for a button and float field.
    /// </summary>
    /// <param name="axis">A string of the axis letter being drawn.</param>
    /// <param name="floatValue">A referenced float value.</param>
    private void FloatButton(string axis, ref float floatValue)
    {
        GUILayout.Label(axis + ":", GUILayout.Width(15));
        if (GUILayout.Button("-", GUILayout.Width(20)))
        {
            floatValue *= -1;
        }
        floatValue = EditorGUILayout.FloatField("", floatValue, GUILayout.MinWidth(40));
    }

    /// <summary>
    /// Creates a button that zeros out a referenced Vector3.
    /// </summary>
    /// <param name="vector">The Vector3 to zero out.</param>
    private void Vector3ZeroOut(ref Vector3 vector)
    {
        if(GUILayout.Button("(0,0,0)", GUILayout.MinWidth(50), GUILayout.MaxWidth(100), GUILayout.Height(25)))
        {
            vector = Vector3.zero;
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

    private void ChildGO(GameObject instantiatedGO, GameObject originalGO)
    {
        GameObject[] currentArrayGO = new GameObject[originalGO.transform.childCount];

        for (int i = 0; i < originalGO.transform.childCount; i++)
        {
            currentArrayGO[i] = instantiatedGO.transform.GetChild(i).gameObject;
        }

        for (int i = 0; i < originalGO.transform.childCount; i++)
        {
            Object prefab;
            GameObject inst;

            //Get child GameObject
            prefab = PrefabUtility.GetCorrespondingObjectFromOriginalSource(originalGO.transform.GetChild(i).gameObject);

            //Checks if object is a prefab or not
            if (prefab != null)
            {
                //Creates new object with Prefab references intact
                inst = (GameObject)PrefabUtility.InstantiatePrefab(prefab);

                inst.name = originalGO.transform.GetChild(i).name;

                inst.transform.parent = instantiatedGO.transform;


                Vector3 position = currentArrayGO[i].transform.position;
                Quaternion rotation = currentArrayGO[i].transform.rotation;
                Vector3 scale = currentArrayGO[i].transform.localScale;

                inst.transform.position = position;
                inst.transform.rotation = rotation;
                inst.transform.localScale = scale;


                //Debug.Log("Destroying: " + instantiatedGO.transform.GetChild(i).gameObject.name);
                DestroyImmediate(currentArrayGO[i]);
            }

            else
            {
                ChildGO(instantiatedGO.transform.GetChild(i).gameObject, originalGO.transform.GetChild(i).gameObject);
            }
        }
    }

    public static Rect DrawSection(float x, float y, float width, float height, Color color)
    {
        Rect line = new Rect(x, y, width, height);
        EditorGUI.DrawRect(line, color);
        return line;
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
