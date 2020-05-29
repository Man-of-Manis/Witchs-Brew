using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEditor;


public class AssetReplacementTool : EditorWindow
{
    #region Fields
    //public Texture buttonTex;
    private GameObject from;
    private GameObject to;
    private GameObject prevSelectedGO;
    private GameObject searchObjectFilter;

    private bool useNewScale;

    private string searchSelection = "";
    private int searchIndex;
    private string searchAmount = "-";
    private int selectionAmount = 3000;
    private int maxSelectionAmount = 3000;

    private List<GameObject> currentSearchSelections = new List<GameObject>();
    private List<GameObject> currentSelections = new List<GameObject>();
    private int selectionLength;

    private bool showFromSelection;

    Color paragraphColor = new Color(0.8f, 0.8f, 0.8f);
    #endregion

    [MenuItem("Window/Asset Replacement Tool")]
    static void OpenWindow()
    {
        AssetReplacementTool window = (AssetReplacementTool)GetWindow(typeof(AssetReplacementTool));
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
        SelectByString();
        DrawUILine(paragraphColor, 3, 10);
        FromToSelections();
        //GUILayout.Space(10);
        DrawUILine(paragraphColor, 3, 10);
        ReplaceButton();
    }

    private void Title()
    {
        Rect headerBG = new Rect(0, 0, Screen.width, 30);

        EditorGUI.DrawRect(headerBG, new Color(0.8f, 0.8f, 0.8f));

        GUI.skin.label.fontSize = 20;
        GUILayout.Label("Asset Replacement Tool");
        GUI.skin.label.fontSize = 12;
        GUI.skin.toggle.fontSize = 12;
    }

    private void SelectByString()
    {
        GUILayout.BeginHorizontal();

        //The search box
        EditorGUILayout.LabelField("Find:", GUILayout.Width(40));

        searchSelection = EditorGUILayout.TextField(searchSelection);

        //The search button
        if (GUILayout.Button("Search", GUILayout.Width(80)))
        {
            FindGameObjects();
            searchIndex = 0;
            searchAmount = currentSearchSelections.Count().ToString();
        }

        GUI.SetNextControlName("Clear");

        //Clear search box
        if (GUILayout.Button("Clear", GUILayout.Width(75)))
        {
            currentSearchSelections.Clear();
            searchSelection = "";
            searchAmount = "-";
            GUI.FocusControl("Clear");
        }

        GUILayout.EndHorizontal();

        //Search Parent
        GUILayout.BeginHorizontal();
        //useSearchParent = GUILayout.Toggle(useSearchParent, "Use Parent");

        EditorGUILayout.LabelField("Object Filter:", GUILayout.Width(73));
        searchObjectFilter = (GameObject)EditorGUILayout.ObjectField(searchObjectFilter, typeof(GameObject), true, GUILayout.MinWidth(100));

        if(GUILayout.Button("Selection", GUILayout.Width(80)))
        {
            searchObjectFilter = Selection.activeGameObject;
        }

        if (GUILayout.Button("Clear", GUILayout.Width(75)))
        {
            searchObjectFilter = null;
        }
        GUILayout.EndHorizontal();

        //Found Amount
        GUILayout.BeginHorizontal();

        EditorGUILayout.LabelField("Found: " + searchAmount, GUILayout.Width(80));

        GUILayout.EndHorizontal();

        //Selection Limiter
        GUILayout.BeginHorizontal();

        EditorGUILayout.LabelField("Selection Limit:", GUILayout.Width(100));
        selectionAmount = EditorGUILayout.IntSlider(selectionAmount, 0, maxSelectionAmount);

        GUILayout.EndHorizontal();

        GUILayout.BeginHorizontal();

        EditorGUI.BeginDisabledGroup(searchSelection.Length <= 0 || currentSearchSelections.Count <= 0);

        //Get previous selection
        if (GUILayout.Button("Get Prev"))
        {
            if (searchIndex - 1 >= 0)
            {
                searchIndex -= 1;
            }

            else
            {
                searchIndex = currentSearchSelections.Count() - 1;
            }

            Selection.activeGameObject = currentSearchSelections[searchIndex];

            SceneView.FrameLastActiveSceneView();
        }

        //Get next selection
        if (GUILayout.Button("Get Next"))
        {
            if(searchIndex + 1 <= currentSearchSelections.Count() - 1)
            {
                searchIndex += 1;
            }

            else
            {
                searchIndex = 0;
            }

            Selection.activeGameObject = currentSearchSelections[searchIndex];

            SceneView.FrameLastActiveSceneView();
        }

        GUILayout.EndHorizontal();

        if (GUILayout.Button("Select All"))
        { 
            if(currentSearchSelections.Count() <= selectionAmount)
            {
                Selection.objects = currentSearchSelections.ToArray();

                SceneView.FrameLastActiveSceneView();
            }            
        }

        EditorGUI.EndDisabledGroup();
    }

    private void FromToSelections()
    {
        #region From Selections

        showFromSelection = EditorGUILayout.Foldout(showFromSelection, "From Selections", EditorStyles.foldoutHeader);

        if (Selection.gameObjects.Length != selectionLength || Selection.activeGameObject != prevSelectedGO) //Selection.gameObjects.Length != selectionLength
        {
            currentSelections.Clear(); //Resets selection

            for (int i = 0; i < Selection.gameObjects.Length; i++)
            {
                currentSelections.Add(Selection.gameObjects[i]);
            }

            selectionLength = Selection.gameObjects.Length;
            prevSelectedGO = Selection.activeGameObject;
        }

        if (showFromSelection)
        {
            using (var cHorizontalScope = new GUILayout.HorizontalScope())
            {
                GUILayout.Space(20f); // horizontal indent size od 20 (pixels?)

                using (var cVerticalScope = new GUILayout.VerticalScope())
                {
                    EditorGUILayout.LabelField("From");

                    PrefabList(currentSelections);

                    EditorGUI.BeginDisabledGroup(Selection.objects.Length <= 0);

                    if (GUILayout.Button("Clear"))
                    {
                        Selection.objects = null;
                    }

                    EditorGUI.EndDisabledGroup();
                }
            }
        }

        
        #endregion

        DrawUILine(paragraphColor, 3, 10);

        //from = (GameObject)EditorGUILayout.ObjectField("From", from, typeof(GameObject), true, GUILayout.MinWidth(100));

        #region To Selection
        GUILayout.BeginHorizontal();
        EditorGUILayout.LabelField("To", GUILayout.Width(35));
        to = (GameObject)EditorGUILayout.ObjectField(to, typeof(GameObject), true, GUILayout.MinWidth(100));
        GUILayout.EndHorizontal();

        EditorGUI.BeginDisabledGroup(Selection.gameObjects.Length < 1);

        if (GUILayout.Button("Use Selection"))
        {
            to = Selection.activeGameObject;
        }

        EditorGUI.EndDisabledGroup();

        EditorGUI.BeginDisabledGroup(to == null);

        if (GUILayout.Button("Clear"))
        {
            to = null;
        }

        EditorGUI.EndDisabledGroup();
        #endregion
    }

    private void ReplaceButton()
    {
        EditorGUI.BeginDisabledGroup(to == null);

        /*
        if(GUILayout.Button(EditorGUIUtility.ObjectContent(buttonTex, typeof(Texture)).image, GUILayout.Height(20))) //Creates button icon
        {
            Debug.Log("Button Pressed");
        }

        GUILayout.Space(10);
        */

        useNewScale = GUILayout.Toggle(useNewScale, "Use New Object Scale");

        GUILayout.Space(5);

        if (GUILayout.Button("Replace"))
        {
            if (to != null)
            {
                GameObject lastInst = null;

                for (int i = 0; i < currentSelections.Count; i++)
                {
                    GameObject replacement = DuplicateGO(currentSelections[i], to);

                    lastInst = replacement;

                    Undo.RegisterCreatedObjectUndo(replacement, "Created_" + i);
                }

                for (int i = (currentSelections.Count - 1); i >= 0; i--)
                {
                    try
                    {
                        //DestroyImmediate(currentSelections[i]);
                        Undo.DestroyObjectImmediate((GameObject)currentSelections[i]);

                        if (lastInst != null)
                        {
                            Selection.activeGameObject = lastInst;
                        }

                        
                    }
                    catch(System.ArgumentException e)
                    {
                        string ex = (e.ToString() + " was created with " + currentSelections.Count + " selections at index " + i.ToString());
                        Debug.Log(ex);
                    }
                    
                }
                
                currentSelections.Clear();
            }

            else
            {
                Debug.Log("Please add a replacement object to the 'To' field");
            }
        }

        EditorGUI.EndDisabledGroup();
    }

    private void FindGameObjects()
    {
        List<GameObject> objects = new List<GameObject>();

        if(searchObjectFilter == null)
        {
            GameObject[] foundObjects = FindObjectsOfType<GameObject>();

            for (int i = 0; i < foundObjects.Length; i++)
            {
                objects.Add(foundObjects[i]);
            }
        }
        else
        {
            foreach(Transform child in searchObjectFilter.transform)
            {
                GetChildrenTransform(child, objects);
            }            
        }

        //var objects = FindObjectsOfType<GameObject>().Where(obj => obj.name == "Name");

        currentSearchSelections.Clear();

        for(int i = 0; i < objects.Count; i++)
        {
            if (objects[i].name.ToLower().Contains(searchSelection.ToLower()))
            {
                currentSearchSelections.Add(objects[i]);
            } 
        }

        Debug.Log(currentSearchSelections.Count());
    }

    private void GetChildrenTransform(Transform currentChild, List<GameObject> objects)
    {
        foreach (Transform child in currentChild)
        {
            objects.Add(child.gameObject);

            GetChildrenTransform(child, objects);
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
            Vector3 tempVector = TransformUtils.GetInspectorRotation(list[i].transform);
            GUILayout.Label("R: (" + System.Math.Round(tempVector.x, 3) + ", "
                + System.Math.Round(tempVector.y, 3) + ", "
                + System.Math.Round(tempVector.z, 3) + ")", GUILayout.MinWidth(100));
            GUILayout.EndHorizontal();
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

    private GameObject DuplicateGO(GameObject currentGO, GameObject replacementGO)
    {
        Object prefab;
        GameObject inst;


        prefab = PrefabUtility.GetCorrespondingObjectFromOriginalSource(replacementGO);

        //Checks if object is a prefab or not
        if (prefab != null)
        {
            //Creates new object with Prefab references intact
            inst = (GameObject)PrefabUtility.InstantiatePrefab(prefab);

            //Debug.Log("Prefab Replace");
        }

        else
        {
            //Creates new object, but loses prefab references if any
            inst = Instantiate(replacementGO);
            //Debug.Log("Inst Replace");
        }

        inst.name = to.name;

        inst.transform.parent = currentGO.transform.parent;

        Vector3 position = currentGO.transform.position;
        Quaternion rotation = currentGO.transform.rotation;
        Vector3 scale = currentGO.transform.localScale;

        int childIndex = currentGO.transform.GetSiblingIndex();

        inst.transform.SetSiblingIndex(childIndex);
        inst.transform.position = position;
        inst.transform.rotation = rotation;

        if(!useNewScale)
        {
            inst.transform.localScale = scale;
        }        

        if(prefab == null)
        {
            ChildGO(inst, replacementGO);
        }        

        return inst;
    }

    private void ChildGO(GameObject current, GameObject replacement)
    {
        //Debug.Log(current.name + ": " + current.transform.childCount + " / " + replacement.name + ": " + replacement.transform.childCount);

        GameObject[] currentArrayGO = new GameObject[replacement.transform.childCount];

        for(int i = 0; i < replacement.transform.childCount; i++)
        {
            currentArrayGO[i] = current.transform.GetChild(i).gameObject;
        }

        for (int i = 0; i < replacement.transform.childCount; i++)
        {
            Object prefab;
            GameObject inst;

            //Get child GameObject
            prefab = PrefabUtility.GetCorrespondingObjectFromOriginalSource(replacement.transform.GetChild(i).gameObject);
            //Debug.Log("Checking: " + replacement.transform.GetChild(i).gameObject.name + ". It is " + (prefab != null ? "a prefab." : " not a prefab."));

            //Debug.Log(current.transform.GetChild(i).gameObject.name);

            //Checks if object is a prefab or not
            if (prefab != null)
            {
                //Creates new object with Prefab references intact
                inst = (GameObject)PrefabUtility.InstantiatePrefab(prefab);

                inst.name = replacement.transform.GetChild(i).name;

                //Debug.Log(current.transform.GetChild(i).gameObject.name);

                inst.transform.parent = current.transform;
                /*
                Vector3 position = current.transform.GetChild(i).position;
                Quaternion rotation = current.transform.GetChild(i).rotation;
                Vector3 scale = current.transform.GetChild(i).localScale;

                int childIndex = current.transform.GetChild(i).GetSiblingIndex();

                Debug.Log(current.transform.GetChild(i).gameObject.name);

                //inst.transform.SetSiblingIndex(i); //childIndex
                Debug.Log(current.transform.GetChild(i).gameObject.name);
                inst.transform.position = position;
                inst.transform.rotation = rotation;
                inst.transform.localScale = scale;
                */

                Vector3 position = currentArrayGO[i].transform.position;
                Quaternion rotation = currentArrayGO[i].transform.rotation;
                Vector3 scale = currentArrayGO[i].transform.localScale;

                //int childIndex = current.transform.GetChild(i).GetSiblingIndex();

                //Debug.Log(current.transform.GetChild(i).gameObject.name);

                //inst.transform.SetSiblingIndex(i); //childIndex
                //Debug.Log(current.transform.GetChild(i).gameObject.name);
                inst.transform.position = position;
                inst.transform.rotation = rotation;
                inst.transform.localScale = scale;


                Debug.Log("Destroying: " + current.transform.GetChild(i).gameObject.name);
                DestroyImmediate(currentArrayGO[i]);
            }

            else
            {
                //ChildGO(current.transform.GetChild(i).gameObject, replacement.transform.GetChild(i).gameObject);
            }            
        }
    }
}
