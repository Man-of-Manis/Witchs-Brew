using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerPotionMixing : MonoBehaviour
{
    private enum PotionType { Ingredients, Potions};

    [SerializeField] private PotionType ingredientsOrPotions;

    public List<int> combination;

    private PlayerInput m_Input;

    private ItemController itemCon;

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
    }

    // Update is called once per frame
    void Update()
    {
        //PotionMaking();
    }

    void PotionMaking()
    {
        if(m_Input.DPad_Y < 0f)
        {
            //ingredientsOrPotions = !ingredientsOrPotions;
            ingredientsOrPotions = ingredientsOrPotions == PotionType.Ingredients ? PotionType.Potions : PotionType.Ingredients;
            combination.Clear();
        }
    }

    private void RemoveElements(string ingredients)
    {
        char[] comboSplit = ingredients.ToCharArray();
        int[] comboIngredientType = new int[comboSplit.Length];

        for(int i = 0; i < comboSplit.Length; i++)
        {
            comboIngredientType[i] = int.Parse(comboSplit[i].ToString());
        }

        //remove ingredients
        for (int i = 0; i < comboIngredientType.Length; i++) //Combo array
        {
            for(int j = 0; j < 5; j++) //Ingredient list
            {
                if(comboIngredientType[i] == j)
                {
                    itemCon.Ingredients(j, -1);
                    return;
                }
            }
        }

        Debug.Log("Removed Ingredients for potion.");
    }

    //Deprecated
    /*
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

            Debug.Log("Removed Ingredients for potion.");
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

            Debug.Log("Removed Potions for Mega Potion.");
        }
    }
    */
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
            Debug.Log("You made the White Potion!"); RemoveElements(combos.whitePotion); itemCon.Potions(0, combos.whitePotionAmount);
        }
        else if(combos.redPotion == combo)
        {
            Debug.Log("You made the Red Potion!"); RemoveElements(combos.redPotion); itemCon.Potions(1, combos.redPotionAmount);
        }
        else if(combos.yellowPotion == combo)
        {
            Debug.Log("You made the Yellow Potion!"); RemoveElements(combos.yellowPotion); itemCon.Potions(2, combos.yellowPotionAmount);
        }
        else if (combos.greenPotion == combo)
        {
            Debug.Log("You made the Green Potion!"); RemoveElements(combos.greenPotion); itemCon.Potions(3, combos.greenPotionAmount);
        }
        else if (combos.bluePotion == combo)
        {
            Debug.Log("You made the Blue Potion!"); RemoveElements(combos.bluePotion); itemCon.Potions(4, combos.bluePotionAmount);
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
                PotionText("White", type); RemoveElements(combos.whitePotion); itemCon.Potions(0, combos.whitePotionAmount);
                break;
            case (int)PotionPickup.PotionType.Red:
                PotionText("Red", type); RemoveElements(combos.redPotion); itemCon.Potions(1, combos.redPotionAmount);
                break;
            case (int)PotionPickup.PotionType.Yellow:
                PotionText("Yellow", type); RemoveElements(combos.yellowPotion); itemCon.Potions(2, combos.yellowPotionAmount);
                break;
            case (int)PotionPickup.PotionType.Green:
                PotionText("Green", type); RemoveElements(combos.greenPotion); itemCon.Potions(3, combos.greenPotionAmount);
                break;
            case (int)PotionPickup.PotionType.Blue:
                PotionText("Blue", type); RemoveElements(combos.bluePotion); itemCon.Potions(4, combos.bluePotionAmount);
                break;
            case (int)PotionPickup.PotionType.Mega:
                PotionText("Mega", type); RemoveElements(combos.megaPotion); itemCon.Potions(5, combos.megaPotionAmount);
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
            Debug.Log("You made the Mega Potion!"); RemoveElements(combos.megaPotion); itemCon.Potions(5, combos.megaPotionAmount);
        }

        else
        {
            Debug.Log("Something went wrong with that concoction...");
        }
    }
}
