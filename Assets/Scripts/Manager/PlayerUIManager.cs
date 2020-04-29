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

    protected GameObject m_PotionComboUI;
    protected GameObject m_PotionCreationUI;

    [Header("Potion Wheel")]
    public GameObject Wheel;
    public GameObject WheelPointer;

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
    }
}
