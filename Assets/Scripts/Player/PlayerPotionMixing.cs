using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerPotionMixing : MonoBehaviour
{
    private enum PotionType { Ingredients, Potions};

    [SerializeField] private PotionType ingredientsOrPotions;

    public List<int> combination;

    public GameObject potionMixture;

    public Transform ingredientHolder;

    private PlayerInput m_Input;

    private ItemController itemCon;

    public GameObject PotionCreationUI;

    [SerializeField] private Sprite[] ingredientsUI = new Sprite[5];

    [SerializeField] private Sprite[] potionsUI = new Sprite[5];

    [SerializeField] private Image[] buttonUI = new Image[5];

    [SerializeField] private Image[] buttonSpriteUI = new Image[4];

    [SerializeField] private Image[] combinationUI = new Image[4];

    [SerializeField] private Image[] mixture = new Image[2];

    [SerializeField] private GameObject PotionCombosUI;

    [SerializeField] private PotionCombination combos;

    Dictionary<int, string> TextColor = new Dictionary<int, string>
    {
        {0, "<color=white>"},
        {1, "<color=red>"},
        {2, "<color=yellow>"},
        {3, "<color=green>"},
        {4, "<color=blue>"},
        {5, "<color=purple>"}
    };

    void Start()
    {
        m_Input = GetComponent<PlayerInput>();
        itemCon = GetComponent<ItemController>();
        PotionCombosUI = PlayerUIManager.Instance.PotionComboUI;
        PotionCreationUI = PlayerUIManager.Instance.PotionCreationUI;

        GetObjects();
    }

    void GetObjects()
    {
        ingredientsUI = (Sprite[])PlayerUIManager.Instance.ingredientsUI.Clone();
        potionsUI = (Sprite[])PlayerUIManager.Instance.potionsUI.Clone();
        buttonUI = (Image[])PlayerUIManager.Instance.buttonUI.Clone();
        buttonSpriteUI = (Image[])PlayerUIManager.Instance.buttonSpriteUI.Clone();
        combinationUI = (Image[])PlayerUIManager.Instance.combinationUI.Clone();
        mixture = (Image[])PlayerUIManager.Instance.mixture.Clone();
    }

    // Update is called once per frame
    void Update()
    {
        PotionMaking();
    }

    void PotionMaking()
    {
        PotionCombosUI.SetActive(m_Input.PotionCombos);

        if(m_Input.DPad_Y < 0f)
        {
            //ingredientsOrPotions = !ingredientsOrPotions;
            ingredientsOrPotions = ingredientsOrPotions == PotionType.Ingredients ? PotionType.Potions : PotionType.Ingredients;
            combination.Clear();
            ClearCombinationUI();
            ClearCreatedPotionUI();
            
            ShowButtonUI();
            SetElementType();
        }
        /*
        if(m_Input. && !m_Input.PotionCombos)
        {
            PotionCreationUI.SetActive(true);

            if(combination.Count < 4)
            {
                CombiningItems();
            }

            else
            {
                if (ingredientsOrPotions == PotionType.Ingredients)
                {
                    CorrectIngredientMixture(ConcatinateList());
                }

                else
                {
                    CorrectPotionMixture(ConcatinateList());
                }

                combination.Clear();
                //ClearCombinationUI();
            }
        }

        else
        {
            PotionCreationUI.SetActive(false);
            combination.Clear();
            ClearCombinationUI();
            ClearCreatedPotionUI();
            ShowButtonUI();
        }
        */
    }

    private void RemoveElements()
    {
        if (ingredientsOrPotions == PotionType.Ingredients)
        {
            //remove ingredients
            for (int i = 0; i < combination.Count; i++)
            {
                if(combination[i] < 5)
                {
                    itemCon.Ingredients(combination[i], -1);
                }
            }
        }

        else
        {
            //remove potions
            for (int i = 0; i < combination.Count; i++)
            {
                if (combination[i] < 4)
                {
                    itemCon.Potions(combination[i], -1);
                }
            }
        }
    }

    void CombiningItems()
    {
        if (m_Input.ShuffleType && ingredientsOrPotions == PotionType.Ingredients)
        {
            ElementSelect(0);
        }

        else if (m_Input.Button0)
        {
            ElementSelect(1);
        }

        else if (m_Input.Button1)
        {
            ElementSelect(2);
        }

        else if (m_Input.Button2)
        {
            ElementSelect(3);
        }

        else if(m_Input.Button3)
        {
            ElementSelect(4);
        }        
    }

    void ElementSelect(int element)
    {
        if ((ingredientsOrPotions == PotionType.Ingredients ? itemCon.ingredientAmount[element] : itemCon.potionAmount[element]) > 0)
        {
            combination.Add(element);
            ShowButtonUI();
            UIButtonPress(element);
            SetCombinationUI();
            ClearCreatedPotionUI();
        }
    }


    string ConcatinateList()
    {
        string combo = combination[0].ToString();

        for (int i = 1; i < combination.Count; i++)
        {
            combo = combo.ToString() + combination[i].ToString();
        }

        return combo;
    }

    void CorrectIngredientMixture(string combo)
    {
        if(combos.whitePotion == combo)
        {
            Debug.Log("You made the White Potion!"); RemoveElements(); itemCon.Potions(0, combos.whitePotionAmount); CreatedPotionUI(0); HideButtonUI();
        }
        else if(combos.redPotion == combo)
        {
            Debug.Log("You made the Red Potion!"); RemoveElements(); itemCon.Potions(1, combos.redPotionAmount); CreatedPotionUI(1); HideButtonUI();
        }
        else if(combos.yellowPotion == combo)
        {
            Debug.Log("You made the Yellow Potion!"); RemoveElements(); itemCon.Potions(2, combos.yellowPotionAmount); CreatedPotionUI(2); HideButtonUI();
        }
        else if (combos.greenPotion == combo)
        {
            Debug.Log("You made the Green Potion!"); RemoveElements(); itemCon.Potions(3, combos.greenPotionAmount); CreatedPotionUI(3); HideButtonUI();
        }
        else if (combos.bluePotion == combo)
        {
            Debug.Log("You made the Blue Potion!"); RemoveElements(); itemCon.Potions(4, combos.bluePotionAmount); CreatedPotionUI(4); HideButtonUI();
        }
        else
        {
            Debug.Log("Something went wrong with that concoction...");
        }
    }

    public void CraftPotion(int type)
    {
        switch(type)
        {
            case (int)PotionPickup.PotionType.White:
                PotionText("White", type); RemoveElements(); itemCon.Potions(0, combos.whitePotionAmount); CreatedPotionUI(0); HideButtonUI();
                break;
            case (int)PotionPickup.PotionType.Red:
                PotionText("Red", type); RemoveElements(); itemCon.Potions(1, combos.redPotionAmount); CreatedPotionUI(1); HideButtonUI();
                break;
            case (int)PotionPickup.PotionType.Yellow:
                PotionText("Yellow", type); RemoveElements(); itemCon.Potions(2, combos.yellowPotionAmount); CreatedPotionUI(2); HideButtonUI();
                break;
            case (int)PotionPickup.PotionType.Green:
                PotionText("Green", type); RemoveElements(); itemCon.Potions(3, combos.greenPotionAmount); CreatedPotionUI(3); HideButtonUI();
                break;
            case (int)PotionPickup.PotionType.Blue:
                PotionText("Blue", type); RemoveElements(); itemCon.Potions(4, combos.bluePotionAmount); CreatedPotionUI(4); HideButtonUI();
                break;
            case (int)PotionPickup.PotionType.Mega:
                PotionText("Mega", type); RemoveElements(); itemCon.Potions(5, combos.megaPotionAmount); CreatedPotionUI(5); HideButtonUI();
                break;
        }
    }

    private void PotionText(string potion, int type)
    {
        Debug.Log("You made the " + TextColor[type] + potion + "</color> Potion!");
    }

    void CorrectPotionMixture(string combo)
    {
        if (combos.megaPotion == combo)
        {
            Debug.Log("You made the Mega Potion!"); RemoveElements(); itemCon.Potions(5, combos.megaPotionAmount); CreatedPotionUI(5); HideButtonUI();
        }

        else
        {
            Debug.Log("Something went wrong with that concoction...");
        }
    }

    void SetElementType()
    {
        for(int i = 0; i < buttonSpriteUI.Length; i++)
        {
            buttonSpriteUI[i].sprite = ingredientsOrPotions == PotionType.Ingredients ? ingredientsUI[i] : potionsUI[i];
        }
    }

    void UIButtonPress(int element)
    {
        StartCoroutine(UIFade(element));
    }

    IEnumerator UIFade(int element)
    {
        buttonUI[element].color = new Color(1f, 1f, 1f, 0.75f);
        yield return new WaitForSeconds(0.1f);
        buttonUI[element].color = new Color(0f, 0f, 0f, 0.75f);
    }

    void SetCombinationUI()
    {
        for(int i = 0; i < combinationUI.Length; i++)
        {
            if(combination.Count >= i + 1)
            {
                combinationUI[i].sprite = ingredientsOrPotions == PotionType.Ingredients ? ingredientsUI[combination[i]] : potionsUI[combination[i]];
                combinationUI[i].color = new Color(1f, 1f, 1f, 1f);
            }

            else
            {
                combinationUI[i].color = new Color(1f, 1f, 1f, 0f);
                combinationUI[i].sprite = null;
            }
        }
    }

    void ClearCombinationUI()
    {
        for (int i = 0; i < combinationUI.Length; i++)
        {
            combinationUI[i].color = new Color(1f, 1f, 1f, 0f);
            combinationUI[i].sprite = null;
        }
    }

    void CreatedPotionUI(int element)
    {
        mixture[0].color = new Color(0f, 0f, 0f, 0.75f);
        mixture[1].sprite = potionsUI[element];
        mixture[1].color = new Color(1f, 1f, 1f, 1f);
    }

    void ClearCreatedPotionUI()
    {
        mixture[0].color = new Color(0f, 0f, 0f, 0f);
        mixture[1].color = new Color(1f, 1f, 1f, 0f);
        mixture[1].sprite = null;
    }

    void ShowButtonUI()
    {
        for(int i = 0; i < buttonUI.Length; i++)
        {
            buttonUI[i].gameObject.SetActive(true);
        }

        buttonUI[4].gameObject.SetActive((ingredientsOrPotions == PotionType.Ingredients) ? true : false);
    }

    void HideButtonUI()
    {
        for (int i = 0; i < buttonUI.Length; i++)
        {
            buttonUI[i].gameObject.SetActive(false);
        }
    }
}
