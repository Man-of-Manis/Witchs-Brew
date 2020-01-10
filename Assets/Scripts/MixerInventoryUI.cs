using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class MixerInventoryUI : MonoBehaviour
{
    private PotionMixing mixer;

    private Transform PotionSet;
    private Transform IngredientSet;

    private GameObject[] potions = new GameObject[4];
    private GameObject[] ingredients = new GameObject[4];

    private TextMeshProUGUI[] values = new TextMeshProUGUI[8];

    // Start is called before the first frame update
    void Start()
    {
        mixer = GetComponentInParent<PotionMixing>();
        PotionSet = transform.GetChild(0);
        IngredientSet = transform.GetChild(1);

        for(int i = 0; i < potions.Length; i++)
        {
            potions[i] = PotionSet.GetChild(i).gameObject;
        }

        for (int i = 0; i < ingredients.Length; i++)
        {
            ingredients[i] = IngredientSet.GetChild(i).gameObject;
        }

        for(int i = 0; i < values.Length; i++)
        {
            if(i < potions.Length)
            {
                values[i] = potions[i].GetComponentInChildren<TextMeshProUGUI>();
            }

            else
            {
                values[i] = ingredients[i - potions.Length].GetComponentInChildren<TextMeshProUGUI>();
            }
        }
    }

    public void UpdateValues()
    {
        for(int i = 0; i < values.Length; i++)
        {
            int[] pot = mixer.PotionAmount;
            int[] ing = mixer.IngredientAmount;

            if(i < potions.Length)
            {
                values[i].SetText(pot[i].ToString());
            }

            else
            {
                values[i].SetText(ing[i - potions.Length].ToString());
            }
        }
    }
}
