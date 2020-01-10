using System;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "PotionCombo", menuName = "Witch Game/PotionCombo")]
public class PotionCombination : ScriptableObject
{
    public string whitePotion;
    public string redPotion;
    public string yellowPotion;
    public string greenPotion;
    public string bluePotion;
    public string megaPotion;

    public int whitePotionAmount;
    public int redPotionAmount;
    public int yellowPotionAmount;
    public int greenPotionAmount;
    public int bluePotionAmount;
    public int megaPotionAmount;

    public Sprite[] ingredientSprites = new Sprite[5];

    public Sprite[] unhighlightedSprites = new Sprite[6];
    public Sprite[] highlightedSprites = new Sprite[6];

    public string GetPotionCombo(int value)
    {
        switch(value)
        {
            case 0:
                return whitePotion;
            case 1:
                return redPotion;
            case 2:
                return yellowPotion;
            case 3:
                return greenPotion;
            case 4:
                return bluePotion;
            case 5:
                return megaPotion;
            default:
                return whitePotion;
        }
    }


    /*
    public List<IngredientCombo> Potions = new List<IngredientCombo>();

    public string this[string key]
    {
        get
        {
            for (int i = 0; i < Potions.Count; i++)
            {
                if (Potions[i].key == key)
                {
                    return Potions[i].value;
                }
            }

            return "Key not found.";
        }
    }
    */
}

[Serializable]
public class IngredientCombo
{
    public string key;
    public string value;
}