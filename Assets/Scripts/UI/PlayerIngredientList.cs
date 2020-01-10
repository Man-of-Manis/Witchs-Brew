using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class PlayerIngredientList : MonoBehaviour
{
    public GameObject potionWheel;
    public GameObject ingredientList;
    public GameObject potionAmount;

    public GameObject[] ingredientLists = new GameObject[6];

    private Outline[] potionListsOutline = new Outline[6];
    public PotionArray[] potions = new PotionArray[6];
    public int[] craftablePotions = new int[6];
    TextMeshProUGUI[] craftablePotionAmount = new TextMeshProUGUI[6];

    private Sprite[] ingredientSprites = new Sprite[5];

    private ItemController itemCon;
    [SerializeField] private PotionCombination combos;

    Dictionary<int, int> Transition = new Dictionary<int, int>()
    {
        {0, 0}, //White
        {1, 2}, //Yellow
        {2, 4}, //Blue
        {3, 5}, //Mega
        {4, 3}, //Green
        {5, 1}  //Red
    };

    void Start()
    {
        itemCon = GameManager.Instance.player.GetComponent<ItemController>();

        /*
        for (int i = 0; i < potionListsOutline.Length; i++)
        {
            potionListsOutline[i] = ingredientList.transform.GetChild(i).GetComponent<Outline>();
        }
        */

        //InitializePotionCombos();

        InitializeListIngredients();
    }

    /// <summary>
    /// Gets the potion combinations and sets arrays for the amount of ingredients needed for each.
    /// </summary>
    private void InitializePotionCombos()
    {
        for (int i = 0; i < potions.Length; i++)
        {
            for (int j = 0; j < 4; j++)
            {
                potions[i].ingredientRequirement[(int)char.GetNumericValue(combos.GetPotionCombo(i)[j])] += 1;
            }

            craftablePotionAmount[i] = potionAmount.transform.GetChild(i).GetComponent<TextMeshProUGUI>();
        }
    }

    private void InitializeListIngredients()
    {
        for (int i = 0; i < ingredientList.transform.childCount; i++)
        {
            for (int j = 0; j < ingredientList.transform.GetChild(i).GetChild(0).childCount; j++)
            {
                ingredientList.transform.GetChild(i).GetChild(0).GetChild(j).GetComponent<Image>().sprite = combos.ingredientSprites[(int)char.GetNumericValue(combos.GetPotionCombo(i)[j])];
            }
        }

        /*
        for(int i = 0; i < ingredientList.transform.childCount; i++)
        {
            for(int j = 0; j < ingredientList.transform.GetChild(i).childCount; j++)
            {
                ingredientList.transform.GetChild(i).GetChild(j).GetComponent<Image>().sprite = combos.ingredientSprites[(int)char.GetNumericValue(combos.GetPotionCombo(i)[j])];
            }
        }
        */
    }

    void Update()
    {
        ingredientList.SetActive(potionWheel.activeSelf);
        potionAmount.SetActive(potionWheel.activeSelf);
        //SetListOutline();
    }

    /// <summary>
    /// Gets the current amount of ingredients and sets the outline color if the player has enough to craft the potion.
    /// </summary>
    private void SetListOutline()
    {
        if (potionWheel.activeSelf)
        {
            for (int i = 0; i < potionListsOutline.Length; i++)
            {
                //potionListsOutline[i].effectColor = PotionTest(i) ? Color.white : Color.red;
                craftablePotionAmount[i].text = craftablePotions[i] > 256 ? Mathf.Infinity.ToString() : craftablePotions[i].ToString();
            }
        }
    }

    /// <summary>
    /// Determintes if the player has enough ingredients to complete a potion. Returns false if not enough ingredients.
    /// </summary>
    /// <param name="i"> The potion integer. </param>
    /// <returns></returns>
    private bool PotionTest(int i)
    {
        int c = int.MaxValue;

        for (int k = 0; k < 5; k++)
        {
            if (potions[i].ingredientRequirement[k] > itemCon.ingredientAmount[k])
            {
                craftablePotions[i] = 0;
                return false;
            }

            if(potions[i].ingredientRequirement[k] != 0)
            {
                int result = itemCon.ingredientAmount[k] / potions[i].ingredientRequirement[k];
                c = c > result ? result : c;
            }
        }

        craftablePotions[i] = c;
        return true;
    }

    /// <summary>
    /// Serializable class that holds a potion's needed ingredients in an array.
    /// </summary>
    [System.Serializable]
    public class PotionArray
    {
        public int[] ingredientRequirement = new int[5];
    }
}
