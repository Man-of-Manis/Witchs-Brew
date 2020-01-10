using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class PlayerUIManager : MonoBehaviour
{
    public static PlayerUIManager Instance;

    [Header("References")]
    public SatchelUI satchelUI;

    [Header("Inventory")]
    public bool displayingtype = true;
    public Image DisplayBG;
    public Image[] itemType = new Image[5];
    public TextMeshProUGUI[] itemAmount = new TextMeshProUGUI[5];

    public Sprite[] potionsSprite = new Sprite[5];
    public Sprite[] ingredientsSprite = new Sprite[5];

    private bool overrideIngredient = false;

    private Coroutine overrideCo;

    private Coroutine transparencyCo;

    private const float fadeTimer = 5f;
    private float timer = 5f;
    private bool resetTimer = false;

    private ItemController itemCon;
    private PlayerInput m_Input;

    protected GameObject m_PotionComboUI;
    protected GameObject m_PotionCreationUI;

    public GameObject PotionComboUI
    {
        get
        {
            return m_PotionComboUI;
        }
    }

    public GameObject PotionCreationUI
    {
        get
        {
            return m_PotionCreationUI;
        }
    }

    [Header("Potion Mixing UI")]
    public Sprite[] ingredientsUI = new Sprite[5];

    public Sprite[] potionsUI = new Sprite[6];

    public Image[] buttonUI = new Image[5];

    public Image[] buttonSpriteUI = new Image[4];

    public Image[] combinationUI = new Image[4];

    public Image[] mixture = new Image[2];

    [Header("Potion Wheel")]
    public GameObject Wheel;
    public GameObject WheelPointer;

    [Header("Item Controller")]
    public GameObject PotionSprites;

    public GameObject IngredientSprites;

    public GameObject ItemAmount;

    private RectTransform[] PotionTransforms = new RectTransform[4];

    private RectTransform[] IngredientTransforms = new RectTransform[4];

    private TextMeshProUGUI[] ItemAmountText = new TextMeshProUGUI[4];

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }

        else
        {
            Destroy(gameObject);
        }

        GetObjects();
    }

    private void GetObjects()
    {
        itemCon = FindObjectOfType<ItemController>();
        m_Input = FindObjectOfType<PlayerInput>();

        m_PotionComboUI = transform.Find("Potion_Combos_List").gameObject;
        m_PotionCreationUI = transform.Find("Potion_Creation").gameObject;
    }

    private void Start()
    {
        for (int i = 0; i < 4; i++)
        {
            PotionTransforms[i] = PotionSprites.transform.GetChild(i).GetComponent<RectTransform>();
            IngredientTransforms[i] = IngredientSprites.transform.GetChild(i).GetComponent<RectTransform>();
            ItemAmountText[i] = ItemAmount.transform.GetChild(i).GetComponent<TextMeshProUGUI>();
        }

        //SetTransparency();
    }
    

    private void Update()
    {
        //Timer();
        //DisplayingType();
        
    }

    /// <summary>
    /// Sets initial transparency of inventory UI to 0.
    /// </summary>
    private void SetTransparency()
    {
        DisplayBG.color = new Color(DisplayBG.color.r, DisplayBG.color.g, DisplayBG.color.b, 0f);

        for (int i = 0; i < itemType.Length; i++)
        {
            itemType[i].color = new Color(itemType[i].color.r, itemType[i].color.g, itemType[i].color.b, 0f);
            itemAmount[i].color = new Color(itemAmount[i].color.r, itemAmount[i].color.g, itemAmount[i].color.b, 0f);
        }
    }

    /// <summary>
    /// Decides whether Potions or Ingredients are being shown.
    /// </summary>
    private void DisplayingType()
    {
        /*
        if (m_Input.MakePotion)
        {
            UpdateUI();
            displayingtype = true;
        }
        */

        if ((m_Input.AimInput || m_Input.HoldButton3) && !overrideIngredient)
        {
            //UpdateUI();
            //displayingtype = false;
        }
    }

    /*
    /// <summary>
    /// Updates inventory UI values.
    /// </summary>
    public void UpdateUI()
    {
        for(int i = 0; i < itemType.Length; i++)
        {
            if(displayingtype)
            {
                if(itemType[i] != null && itemAmount[i] != null)
                {
                    itemType[i].sprite = ingredientsSprite[i];

                    if(i == 0)
                    {
                        itemAmount[i].text = "X \u221E";
                    }

                    else
                    {
                        itemAmount[i].text = "x " + itemCon.ingredientAmount[i].ToString();
                    }                    
                }
            }

            else
            {
                if (itemType[i] != null && itemAmount[i] != null)
                {
                    itemType[i].sprite = potionsSprite[i];

                    itemAmount[i].text = "X " + itemCon.potionAmount[i].ToString();
                    
                    if (i == 0)
                    {
                        itemAmount[i].text = "X \u221E";
                    }

                    else
                    {
                        itemAmount[i].text = "X " + itemCon.PotionNum[i].ToString();
                    }
                    
                }
            }
        }
    }

    /// <summary>
    /// Timer for to automatically fade inventory UI out.
    /// </summary>
    private void Timer()
    {
        if(!m_Input.AimInput && !m_Input.ToggleButton3)
        {
            timer += Time.deltaTime;

            if(timer >= fadeTimer && resetTimer)
            {
                FadeOut();
                resetTimer = false;
            }
        }

        else if(m_Input.AimInput || m_Input.ToggleButton3)
        {
            timer = 0f;

            if (!resetTimer)
            {
                FadeIn();
                resetTimer = true;
            }
        }
    }

    /// <summary>
    /// Updates UI values and fades it in.
    /// </summary>
    public void PickupIngredient()
    {
        UpdateUI();

        if(overrideCo != null)
        {
            StopCoroutine(overrideCo);
        }

        overrideCo = StartCoroutine(IngredientPickupOverride());

        timer = 0f;
        displayingtype = true;
        FadeIn();
        resetTimer = true;
    }

    /// <summary>
    /// Method that fades inventory in.
    /// </summary>
    private void FadeIn()
    {
        if(transparencyCo != null)
        {
            StopCoroutine(transparencyCo);
        }
        
        transparencyCo = StartCoroutine(FadeUI(0.6f, 1.0f));
    }

    /// <summary>
    /// Method that fades inventory out.
    /// </summary>
    private void FadeOut()
    {
        if (transparencyCo != null)
        {
            StopCoroutine(transparencyCo);
        }

        transparencyCo = StartCoroutine(FadeUI(0.0f, 2.0f));
    }

    /// <summary>
    /// Fades the inventory UI to a specified transparency in a given amount of time.
    /// </summary>
    /// <param name="transparency"></param>
    /// <param name="aTime"></param>
    /// <returns></returns>
    IEnumerator FadeUI(float transparency, float aTime)
    {
        for (float j = 0.0f; j < 1.0f; j += Time.deltaTime / aTime)
        {
            DisplayBG.color = new Color(DisplayBG.color.r, DisplayBG.color.g, DisplayBG.color.b, Mathf.Lerp(DisplayBG.color.a, transparency, j));

            for (int i = 0; i < itemType.Length; i++)
            {
                itemType[i].color = new Color(itemType[i].color.r, itemType[i].color.g, itemType[i].color.b, Mathf.Lerp(itemType[i].color.a, transparency, j));
                itemAmount[i].color = new Color(itemAmount[i].color.r, itemAmount[i].color.g, itemAmount[i].color.b, Mathf.Lerp(itemAmount[i].color.a, transparency > 0f ? 1.0f : 0.0f, j));
            }           

            yield return null;
        }
    }

    /// <summary>
    /// Forces the ingredient UI to stay active after picking up an ingredient.
    /// </summary>
    /// <returns></returns>
    IEnumerator IngredientPickupOverride()
    {
        overrideIngredient = true;
        yield return new WaitForSeconds(1f);
        overrideIngredient = false;
    }
    */
}
