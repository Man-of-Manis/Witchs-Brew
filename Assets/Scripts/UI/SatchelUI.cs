using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Linq;

/// <summary>
/// Serializable class that holds a potion's needed ingredients in an array.
/// </summary>
[System.Serializable]
public class PotionArray
{
    public int[] ingredientRequirement = new int[5];
}

public class SatchelUI : MonoBehaviour
{
    [Header("Satchel Pieces")]
    public GameObject Satchel;
    public GameObject PotionSelectionWheel;
    public GameObject RecipeList;

    [Header("Potion Wheel")]
    [SerializeField] private GameObject PotionWheel;
    [SerializeField] private RectTransform pointer;
    [SerializeField] private Image[] potionWheelImages = new Image[6];

    [SerializeField] private Color learnedPotionImageColor;
    [SerializeField] private Color unlearnedPotionImageColor;

    public float deadzone = 0.45f;
    private bool satchelFade;
    private bool satchelPrevFade;
    private bool potionWheelToggle;

    private int NodeSelection = 0;
    private int newNodeSelection = 0;
    private int prevNewNodeSelection = 0;

    [Header("Pouches")]
    [SerializeField] private GameObject[] pouches = new GameObject[4];
    [SerializeField] private GameObject[] ingredientUI = new GameObject[4];    
    [SerializeField] private float pouchCloseTimer = 3f;
    private float[] pouchTimers = new float[4];
    private bool[] pouchResetTimers = new bool[4];
    private bool pouchFade = false;

    [Header("Recipe List")]
    [SerializeField] private GameObject PotionSheet;
    [SerializeField] private PotionArray[] potionIngredientList = new PotionArray[6];
    [SerializeField] private int[] craftablePotions = new int[6];
    [SerializeField] private TextMeshProUGUI[] craftablePotionAmount = new TextMeshProUGUI[6];

    [SerializeField] private TextMeshProUGUI[] ingredientAmount = new TextMeshProUGUI[6];
    [SerializeField] private TextMeshProUGUI[] potionAmount = new TextMeshProUGUI[6];

    [SerializeField] private PotionCombination combos;

    private PlayerInput m_Input;
    private ItemController itemCon;
    private PlayerPotionMixing pMix;
    private UtilityController utilController;
    private KeyCubeUI keyCubeUI;
    private PauseMenu pauseMenu;

    [Header("Animators")]
    [SerializeField] private Animator BagParentAnim;
    [SerializeField] private Animator SatchelAnim;
    [SerializeField] private Animator PotionWheelAnim;
    [SerializeField] private Animator RecipeSheetAnim;

    public int Selection
    {
        get
        {
            return Transition[NodeSelection];
        }
    }

    private int CraftingSelection
    {
        get
        {
            return Transition[newNodeSelection];
        }
    }

    public int BottleSelection(int bottle)
    {
        return Transition[bottle];
    }

    /// <summary>
    /// The potion enum integer translated from the node integer.
    /// </summary>
    Dictionary<int, int> Transition = new Dictionary<int, int>()
    {
        {0, 0}, //White
        {1, 2}, //Yellow
        {2, 4}, //Blue
        {3, 5}, //Mega
        {4, 3}, //Green
        {5, 1}  //Red
    };

    /// <summary>
    /// The potion enum integer translated to the node integer.
    /// </summary>
    Dictionary<int, int> OppositeTransition = new Dictionary<int, int>()
    {
        {0, 0}, //White
        {1, 5}, //Red
        {2, 1}, //Yellow
        {3, 4}, //Green
        {4, 2}, //Blue
        {5, 3}  //Mega
    };

    /// <summary>
    /// The angle of the joystick in degrees corresponding to the node integer.
    /// </summary>
    Dictionary<int, Vector2> NodeRanges = new Dictionary<int, Vector2>()
    {
        {0, new Vector2(-30f, 30f) },
        {1, new Vector2(30f, 90f) },
        {2, new Vector2(90f, 150f) },
        {4, new Vector2(-150f, -90f) },
        {5, new Vector2(-90f, -30f) },
    };

    Dictionary<int, float> PointRotation = new Dictionary<int, float>()
    {
        {0, 0f},
        {1, -60f},
        {2, -120f},
        {3, 180f},
        {4, 120f},
        {5, 60f}
    };

    // Start is called before the first frame update
    void Start()
    {
        m_Input = GameManager.Instance.player.GetComponent<PlayerInput>();
        itemCon = GameManager.Instance.player.GetComponent<ItemController>();
        pMix = GameManager.Instance.player.GetComponent<PlayerPotionMixing>();
        utilController = GameManager.Instance.player.GetComponent<UtilityController>();
        keyCubeUI = GetComponent<KeyCubeUI>();
        pauseMenu = PlayerUIManager.Instance.pauseMenu;

        InitializePotionWheelNode();
        InitializeListIngredients();

        itemCon.LearnedNewPotion += ItemController_LearnedNewPotion;
    }

    private void ItemController_LearnedNewPotion(object sender, int e)
    {
        potionWheelImages[OppositeTransition[e]].color = learnedPotionImageColor;
    }

    // Update is called once per frame
    void Update()
    {
        Inputs();
        IngredientAmount();
        PotionAmount();
        PotionSelection();
        TempKeyboardButtons();
        PouchTimer();
    }

    public bool SatchelOpen
    {
        get { return satchelFade; }
        private set { satchelFade = value; }
    }

    public bool SatchelPrevOpen
    {
        get { return satchelPrevFade; }
        private set { satchelPrevFade = value; }
    }

    private void Inputs()
    {
        if(!pauseMenu.PauseMenuOpen)
        {
            //Open/Close Satchel
            if (m_Input.Button3)
            {
                TogglePouch();
            }

            //Select potion type
            else if (m_Input.Button0)
            {
                if (SatchelOpen)
                {
                    SetPotionSelect();
                }
            }

            //Craft potion type
            else if (m_Input.Button2)
            {
                SetCraftedPotionSelect();
            }
        }
    }

    /// <summary>
    /// Toggles the pouch open/closed
    /// </summary>
    private void TogglePouch()
    {
        if (!pouchFade)
        {
            BagParentAnim.SetBool("ToggleFade", !BagParentAnim.GetBool("ToggleFade"));
        }

        //Bounces Satchel
        BagParentAnim.SetTrigger("Bounce");

        //Toggles recipe sheet based on animator current bool value
        RecipeSheetAnim.SetBool("ToggleOpen", !RecipeSheetAnim.GetBool("ToggleOpen"));

        //Toggles satchel based on animator current bool value
        SatchelAnim.SetBool("ToggleOpen", !SatchelAnim.GetBool("ToggleOpen"));
        //satchelFade = !satchelFade;

        //Toggles whether satchel is currenly open
        SatchelOpen = !SatchelOpen;

        Time.timeScale = SatchelOpen ? 0f : 1f;

        //Toggles KeyCube UI visibility.
        keyCubeUI.ToggleSelection();
    }

    /// <summary>
    /// Selects a potion type based on current selection
    /// </summary>
    void SetPotionSelect()
    {
        if(SatchelOpen)
        {
            //Select potion
            if (itemCon.AvailablePotions[CraftingSelection] && itemCon.potionAmount[CraftingSelection] > 0)
            {
                NodeSelection = newNodeSelection;
                utilController.ChangeSelectedPotion(Transition[NodeSelection]);
            }
        }        
    }

    /// <summary>
    /// Selects and crafts a potion type base on current selection
    /// </summary>
    void SetCraftedPotionSelect()
    {
        if(SatchelOpen)
        {
            if (itemCon.AvailablePotions[CraftingSelection] && itemCon.ingredientAmount[CraftingSelection] > 0)
            {
                //Craft potion
                pMix.CraftPotion(CraftingSelection);
                NodeSelection = newNodeSelection;
                utilController.ChangeSelectedPotion(Transition[NodeSelection]);
            }
            else if (itemCon.AvailablePotions[CraftingSelection] && itemCon.potionAmount[CraftingSelection] > 0)
            {
                NodeSelection = newNodeSelection;
                utilController.ChangeSelectedPotion(Transition[NodeSelection]);
            }
        }        
    }

    /// <summary>
    /// Gets the image component for the potion bottle sprites
    /// </summary>
    private void InitializePotionWheelNode()
    {
        for (int i = 0; i < PotionWheel.transform.childCount; i++)
        {
            potionWheelImages[i] = PotionWheel.transform.GetChild(i).GetComponent<Image>();
        }
    }

    /// <summary>
    /// Gets the Recipe sheet image components and sets their respective sprites.
    /// </summary>
    private void InitializeListIngredients()
    {
        for (int i = 0; i < PotionSheet.transform.childCount; i++)
        {
            for (int j = 0; j < PotionSheet.transform.GetChild(i).GetChild(0).childCount; j++)
            {
                PotionSheet.transform.GetChild(i).GetChild(0).GetChild(j).GetComponent<Image>().sprite = combos.ingredientSprites[(int)char.GetNumericValue(combos.GetPotionCombo(i)[j])];
            }
        }
    }

    /// <summary>
    /// Displays how many of an ingredient type the player is holding.
    /// </summary>
    private void IngredientAmount()
    {
        for (int i = 0; i < ingredientAmount.Length; i++)
        {
            if (ingredientAmount[i] != null)
            {
                if (i == 0)
                {
                    ingredientAmount[i].text = "X \u221E";
                }

                else
                {
                    ingredientAmount[i].text = "x " + itemCon.ingredientAmount[i].ToString();
                }
            }
        }
    }

    /// <summary>
    /// Displays how mnay of a potioin type the player is holding.
    /// </summary>
    private void PotionAmount()
    {
        for (int i = 0; i < potionAmount.Length; i++)
        {
            if (potionAmount[i] != null)
            {
                if (i == 0)
                {
                    potionAmount[i].text = "\u221E";
                }

                else
                {
                    potionAmount[i].text = itemCon.potionAmount[i].ToString();
                }
            }
        }
    }

    /// <summary>
    /// Gets player joystick input and sets the scale of the selected node.
    /// </summary>
    void PotionSelection()
    {
        if (SatchelOpen && !pauseMenu.PauseMenuOpen)
        {
            float LSDeadzoneX = m_Input.LSInput.x > deadzone || m_Input.LSInput.x < -deadzone ? m_Input.LSInput.x : 0f;
            float LSDeadzoneY = m_Input.LSInput.y > deadzone || m_Input.LSInput.y < -deadzone ? m_Input.LSInput.y : 0f;

            float ang = Mathf.Atan2(LSDeadzoneX, LSDeadzoneY) * Mathf.Rad2Deg;
            float angl = Mathf.Atan2(m_Input.LSInput.x, m_Input.LSInput.y) * Mathf.Rad2Deg;

            if (new Vector2(LSDeadzoneX, LSDeadzoneY) != Vector2.zero)
            {
                if (itemCon.AvailablePotions[BottleSelection(Node(angl))] && itemCon.potionAmount[BottleSelection(Node(angl))] > 0)
                {
                    //NodeSelection = Node(ang);
                }

                prevNewNodeSelection = newNodeSelection;
                newNodeSelection = Node(angl);

                pointer.rotation = Quaternion.Euler(new Vector3(0f, 0f, PointRotation[newNodeSelection]));

                if(prevNewNodeSelection != newNodeSelection)
                {
                    for (int i = 0; i < PotionWheel.transform.childCount; i++)
                    {
                        potionWheelImages[i].sprite = (i == newNodeSelection) ? combos.highlightedSprites[Transition[i]] : combos.unhighlightedSprites[Transition[i]];
                    }

                    potionWheelImages[newNodeSelection].GetComponent<Animator>().SetTrigger("Jiggle");
                }
            }

            SatchelPrevOpen = true;
        }

        else if(!SatchelOpen && SatchelPrevOpen)
        {
            newNodeSelection = NodeSelection;

            pointer.rotation = Quaternion.Euler(new Vector3(0f, 0f, PointRotation[newNodeSelection]));

            for (int i = 0; i < PotionWheel.transform.childCount; i++)
            {
                //WheelNodes[i].localScale = (i == newNodeSelection) ? new Vector3(nodeSize, nodeSize, nodeSize) : Vector3.one;
                potionWheelImages[i].sprite = (i == newNodeSelection) ? combos.highlightedSprites[Transition[i]] : combos.unhighlightedSprites[Transition[i]];
            }

            SatchelPrevOpen = false;
        }
    }

    /// <summary>
    /// Keyboard input to craft potion.
    /// </summary>
    void TempKeyboardButtons()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            KeyPress(0);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            KeyPress(1);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            KeyPress(2);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            KeyPress(3);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha5))
        {
            KeyPress(4);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha6))
        {
            KeyPress(5);
        }
    }

    /// <summary>
    /// Craft potion from keyboard.
    /// </summary>
    /// <param name="potion">Potion index to add.</param>
    void KeyPress(int potion)
    {
        pMix.CraftPotion(potion);
        NodeSelection = OppositeTransition[potion];
    }

    /// <summary>
    /// Returns node integer based on direction of left joystick.
    /// </summary>
    /// <param name="angle"> The angle of the left joystick. </param>
    /// <returns></returns>
    int Node(float angle)
    {
        for (int i = 0; i < PotionWheel.transform.childCount; i++)
        {
            if (i != 3)
            {
                if (angle > NodeRanges[i].x && angle <= NodeRanges[i].y)
                {
                    return i;
                }
            }
        }

        return 3;
    }

    /// <summary>
    /// Shows ingredient pickup in UI.
    /// </summary>
    /// <param name="ingredientNum">Ingredient index to pick up</param>
    public void ItemPickup(int ingredientNum)
    {
        pouches[ingredientNum - 1].GetComponent<Animator>().SetBool("ToggleOpen", true);
        pouchTimers[ingredientNum - 1] = 0f;
        pouchResetTimers[ingredientNum - 1] = true;

        if (!SatchelOpen && !pouchFade)
        {
            BagParentAnim.SetBool("ToggleFade", !BagParentAnim.GetBool("ToggleFade"));
        }

        //BagParentAnim.SetTrigger("Bounce");

        Vector3 playerScreenPos = Camera.main.WorldToScreenPoint(GameManager.Instance.PlayerCOM.position);
        Instantiate(ingredientUI[ingredientNum - 1], playerScreenPos, Quaternion.identity, transform);
    }

    /// <summary>
    /// Bounces the pouch of the given ingredient index.
    /// </summary>
    /// <param name="pouchNum">The ingredient pouch index.</param>
    public void PouchBounce(int pouchNum)
    {
        pouches[pouchNum - 1].GetComponent<Animator>().SetTrigger("Bounce");
    }

    /// <summary>
    /// Fades the pouch out if no pouches have been used after specified time.
    /// </summary>
    private void PouchTimer()
    {
        for(int i = 0; i < pouchTimers.Length; i++)
        {
            if(pouchTimers[i] >= pouchCloseTimer && pouchResetTimers[i])
            {
                pouches[i].GetComponent<Animator>().SetBool("ToggleOpen", false);
                pouchResetTimers[i] = false;
            }

            else if(pouchTimers[i] < pouchCloseTimer)
            {
                pouchTimers[i] += Time.fixedDeltaTime;
            }
        }

        pouchFade = pouchResetTimers.Any(x => x) ? true : false;

        if (!SatchelOpen && !pouchFade && BagParentAnim.GetBool("ToggleFade"))
        {
            BagParentAnim.SetBool("ToggleFade", !BagParentAnim.GetBool("ToggleFade"));
            BagParentAnim.SetTrigger("Bounce");
        }
    }
}
