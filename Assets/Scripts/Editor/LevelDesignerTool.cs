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

    #region Duplication
    bool showDuplicationContent;
    Transform parentSelection;
    bool selectOnDuplication = false;
    bool useOffset = false;
    bool parentTo = false;
    bool newParent = false;
    bool newParentToParentSelection = false;
    string parentString = "new Parent";

    Vector3 positionOffset;
    Vector3 rotationOffset;
    #endregion

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
        window.minSize = new Vector2(300, 500);
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
                    #region Position Labels
                    GUILayout.BeginHorizontal();
                    GUILayout.FlexibleSpace();
                    GUILayout.Label("Negative    ");
                    GUILayout.FlexibleSpace();
                    GUILayout.Label("|");
                    GUILayout.FlexibleSpace();
                    GUILayout.Label("    Positive");
                    GUILayout.FlexibleSpace();
                    GUILayout.EndHorizontal();
                    #endregion

                    #region X
                    GUILayout.BeginHorizontal();

                    if (GUILayout.Button("World X", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Vector3.right * -moveByX);
                        }
                    }

                    if (GUILayout.Button("Local X", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Quaternion.Euler(currentSelections[i].transform.localEulerAngles) * (Vector3.right * -moveByX));
                        }
                    }

                    moveByX = EditorGUILayout.FloatField(moveByX, GUILayout.MinWidth(35), GUILayout.MaxWidth(40));

                    if (GUILayout.Button("Local X", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Quaternion.Euler(currentSelections[i].transform.localEulerAngles) * (Vector3.right * moveByX));
                        }
                    }

                    if (GUILayout.Button("World X", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Vector3.right * moveByX);
                        }
                    }

                    GUILayout.EndHorizontal();
                    #endregion

                    DrawUILine(paragraphColor, 3, 2);

                    #region Y
                    GUILayout.BeginHorizontal();

                    if (GUILayout.Button("World Y", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Vector3.up * -moveByY);
                        }
                    }

                    if (GUILayout.Button("Local Y", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Quaternion.Euler(currentSelections[i].transform.localEulerAngles) * (Vector3.up * -moveByY));
                        }
                    }

                    moveByY = EditorGUILayout.FloatField(moveByY, GUILayout.MinWidth(35), GUILayout.MaxWidth(40));

                    if (GUILayout.Button("Local Y", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Quaternion.Euler(currentSelections[i].transform.localEulerAngles) * (Vector3.up * moveByY));
                        }
                    }

                    if (GUILayout.Button("World Y", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Vector3.up * moveByY);
                        }
                    }

                    GUILayout.EndHorizontal();
                    #endregion

                    DrawUILine(paragraphColor, 3, 2);

                    #region Z
                    GUILayout.BeginHorizontal();

                    if (GUILayout.Button("World Z", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Vector3.forward * -moveByZ);
                        }
                    }

                    if (GUILayout.Button("Local Z", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Quaternion.Euler(currentSelections[i].transform.localEulerAngles) * (Vector3.forward * -moveByZ));
                        }
                    }

                    moveByZ = EditorGUILayout.FloatField(moveByZ, GUILayout.MinWidth(35), GUILayout.MaxWidth(40));

                    if (GUILayout.Button("Local Z", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Quaternion.Euler(currentSelections[i].transform.localEulerAngles) * (Vector3.forward * moveByZ));
                        }
                    }

                    if (GUILayout.Button("World Z", GUILayout.Height(18), GUILayout.MinWidth(55)))
                    {
                        for (int i = 0; i < currentSelections.Count; i++)
                        {
                            currentSelections[i].transform.localPosition = currentSelections[i].transform.localPosition + (Vector3.forward * moveByZ);
                        }
                    }

                    GUILayout.EndHorizontal();
                    #endregion

                    #region Local Move
                    DrawUILine(paragraphColor, 3, 10);

                    moveBy = EditorGUILayout.Vector3Field("", moveBy);

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

                    GUILayout.EndHorizontal();
                    #endregion

                    #region Local Set

                    DrawUILine(paragraphColor, 3, 10);

                    moveTo = EditorGUILayout.Vector3Field("", moveTo);

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

                        #region Rotion Labels
                        GUILayout.BeginHorizontal();
                        GUILayout.FlexibleSpace();
                        GUILayout.Label("CCW    ");
                        GUILayout.FlexibleSpace();
                        GUILayout.Label("|");
                        GUILayout.FlexibleSpace();
                        GUILayout.Label("    CC");
                        GUILayout.FlexibleSpace();
                        GUILayout.EndHorizontal();
                        #endregion

                        #region Rotate X
                        GUILayout.BeginHorizontal();
                        if (GUILayout.Button("World X", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(-rotateByX, Vector3.right, true);
                        }

                        if (GUILayout.Button("Local X", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(-rotateByX, Vector3.right, false);
                        }

                        rotateByX = EditorGUILayout.FloatField(rotateByX, GUILayout.MinWidth(35), GUILayout.MaxWidth(40));

                        if (GUILayout.Button("Local X", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByX, Vector3.right, false);
                        }

                        if (GUILayout.Button("World X", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByX, Vector3.right, true);
                        }
                        GUILayout.EndHorizontal();
                        #endregion

                        DrawUILine(paragraphColor, 3, 2);

                        #region Rotate Y
                        GUILayout.BeginHorizontal();
                        if (GUILayout.Button("World Y", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(-rotateByY, Vector3.up, true);
                        }

                        if (GUILayout.Button("Local Y", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(-rotateByY, Vector3.up, false);
                        }

                        rotateByY = EditorGUILayout.FloatField(rotateByY, GUILayout.MinWidth(35), GUILayout.MaxWidth(40));

                        if (GUILayout.Button("Local Y", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByY, Vector3.up, false);
                        }

                        if (GUILayout.Button("World Y", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByY, Vector3.up, true);
                        }
                        GUILayout.EndHorizontal();
                        #endregion

                        DrawUILine(paragraphColor, 3, 2);

                        #region Rotate Z
                        GUILayout.BeginHorizontal();
                        if (GUILayout.Button("World Z", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(-rotateByZ, Vector3.forward, true);
                        }

                        if (GUILayout.Button("Local Z", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(-rotateByZ, Vector3.forward, false);
                        }

                        rotateByZ = EditorGUILayout.FloatField(rotateByZ, GUILayout.MinWidth(35), GUILayout.MaxWidth(40));

                        if (GUILayout.Button("Local Z", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByZ, Vector3.forward, false);
                        }

                        if (GUILayout.Button("World Z", GUILayout.MinWidth(55)))
                        {
                            SingleAxisRotation(rotateByZ, Vector3.forward, true);
                        }
                        GUILayout.EndHorizontal();
                        #endregion

                        DrawUILine(paragraphColor, 3, 10);

                        #region Rotate To
                        rotateTo = EditorGUILayout.Vector3Field("", rotateTo);

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

                        GUILayout.EndHorizontal();
                        #endregion
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

                        if (parentTo = GUILayout.Toggle(parentTo, "Parent to"))
                        {
                            using (var bHorizontalScope = new GUILayout.HorizontalScope())
                            {
                                GUILayout.Space(20f); // horizontal indent size od 20 (pixels?)

                                using (var bVerticalScope = new GUILayout.VerticalScope())
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
                                    parentSelection = (Transform)EditorGUILayout.ObjectField("", parentSelection, typeof(Transform), true, GUILayout.MinWidth(100));

                                    EditorGUILayout.EndHorizontal();

                                    if (currentSelections.Count > 0) //Only shows buttons when one or more objects are selected
                                    {
                                        if (GUILayout.Button("Selection as Parent Transform", GUILayout.Height(25), GUILayout.MaxWidth(200), GUILayout.MinWidth(100)))
                                        {
                                            parentSelection = Selection.activeTransform;
                                        }

                                        if (GUILayout.Button("Clear Parent Transform", GUILayout.Height(25), GUILayout.MaxWidth(175), GUILayout.MinWidth(100)))
                                        {
                                            parentSelection = null;
                                        }

                                        DrawUILine(paragraphColor, 3, 10);

                                        if (GUILayout.Button("Parent Selection", GUILayout.Height(25), GUILayout.MaxWidth(125), GUILayout.MinWidth(100)))
                                        {
                                            GameObject instParent = new GameObject(parentString);

                                            for (int i = 0; i < Selection.gameObjects.Length; i++)
                                            {
                                                Selection.gameObjects[i].transform.parent = newParent ? instParent.transform : parentSelection;
                                            }

                                            if (newParentToParentSelection)
                                            {
                                                parentSelection = instParent.transform;
                                            }
                                        }

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

                        DrawUILine(paragraphColor, 3, 10);

                        GUILayout.Label("Position Offset");
                        positionOffset = EditorGUILayout.Vector3Field("", positionOffset);

                        GUILayout.Label("Rotation Offset");
                        rotationOffset = EditorGUILayout.Vector3Field("", new Vector3(rotationOffset.x, -rotationOffset.y, rotationOffset.z));

                        if (currentSelections.Count > 0)
                        {
                            DuplicateSelection();
                        }

                        PrefabList(currentSelections); //Draws selections to window
                    }
                }
            }
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

    void PrefabList(List<GameObject> list)
    {
        for (int i = 0; i < list.Count; i++)
        {
            GUILayout.BeginHorizontal();
            GUILayout.Label("Selection No. " + i, GUILayout.MaxWidth(125));
            list[i] = (GameObject)EditorGUILayout.ObjectField("", list[i], typeof(GameObject), false, GUILayout.MinWidth(50));
            GUILayout.Space(10);
            GUILayout.Label("Y rotation :" + System.Math.Round(list[i].transform.localEulerAngles.y, 3), GUILayout.MinWidth(100));
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
                    useOffset ? Selection.gameObjects[duplicationIndex[i]].transform.position + positionOffset : Selection.gameObjects[duplicationIndex[i]].transform.position,
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
