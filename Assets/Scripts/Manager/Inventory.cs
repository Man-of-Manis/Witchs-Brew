using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum PotionType { Air, Fire, Lightning, Nature, Ice, Mega};

public class Inventory : MonoBehaviour
{
    [Header("Potions")]
    [SerializeField] private bool[] m_LearnedPotions = new bool[] { true, false, false, false, false, false};
    [SerializeField] private int[] m_PotionAmounts = new int[6];

    /// <summary>
    /// Enables given potion type.
    /// </summary>
    /// <param name="type">The potion type to enable.</param>
    public void EnablePotion(PotionType type)
    {
        m_LearnedPotions[(int)type] = true;
    }

    /// <summary>
    /// Disables given potion type.
    /// </summary>
    /// <param name="type">The potion type to disable.</param>
    public void DisablePotion(PotionType type)
    {
        m_LearnedPotions[(int)type] = false;
    }

    /// <summary>
    /// Adds given amount of a potion held by the player.
    /// </summary>
    /// <param name="type">The type of potion to add to.</param>
    /// <param name="potionAmount">The amount of potion to add. Defaults to 1.</param>
    public void AddPotion(PotionType type, int potionAmount = 1)
    {
        m_PotionAmounts[(int)type] += potionAmount;
    }

    /// <summary>
    /// Removes given amount of a potion held by the player.
    /// </summary>
    /// <param name="type">The type of potion to remove from.</param>
    /// <param name="potionAmount">The amount of potion to remove. Defaults to 1.</param>
    public void RemovePotion(PotionType type, int potionAmount = 1)
    {
        m_PotionAmounts[(int)type] -= potionAmount;
    }
}
