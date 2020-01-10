using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemController : MonoBehaviour
{
    public int[] potionAmount { get; private set;} = new int[6];

    public int[] ingredientAmount { get; private set; } = new int[5];

    [SerializeField] private bool[] LearnedPotions = new bool[6];

    public bool[] AvailablePotions
    {
        get { return LearnedPotions; }
    }

    Dictionary<int, string> TextColor = new Dictionary<int, string>
    {
        {0, "<color=white>"},
        {1, "<color=red>"},
        {2, "<color=yellow>"},
        {3, "<color=green>"},
        {4, "<color=blue>"},
        {5, "<color=purple>"}
    };

    private void Start()
    {
        //gm = FindObjectOfType<GameManager>();
        LearnedPotions[0] = true;
        ingredientAmount[0] = int.MaxValue;
    }

    public void Potions(int elementNum, int amount)
    {
        potionAmount[elementNum] += amount;
        //PlayerUIManager.Instance.UpdateUI();
    }

    public void Ingredients(int elementNum, int amount)
    {
        ingredientAmount[elementNum] += amount;
        GameManager.Instance.playerAudioScript.CollectItem();
        //PlayerUIManager.Instance.PickupIngredient();
    }

    public void LearnNewPotion(int potion)
    {
        LearnedPotions[potion] = true;
        Debug.Log("You learned the " + TextColor[potion] + potion + "</color> Potion!");
    }
}
