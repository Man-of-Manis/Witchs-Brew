/*
 * Toggles active player utility and keeps track of last 
 */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UtilityController : MonoBehaviour
{
    private enum SeletionType { Spells = 0, Potions = 1, Ingredients = 2, Holders = 3};
    public int[] Selection = new int[4];

    [Header("Holders")]
    public GameObject Wand_Holder;
    public GameObject Potion_Holder;
    public GameObject Ingredient_Holder;
    private List<GameObject> Type_Holder = new List<GameObject>();

    [Header("Potions")]
    public GameObject potionPouch;
    [SerializeField] private GameObject jumpPotion;
    public GameObject[] prefabPotions = new GameObject[5];
    public GameObject[] instPotions = new GameObject[5];
    [SerializeField] private int currentSelectedPotion = 0;

    [Header("Pickups")]
    [SerializeField] private PlayerItemPickup pickup;
    [SerializeField] private Transform pickupPos;

    private PlayerInput m_Input;
    private PotionCalculation potionCalc;
    private SecondaryArcCalculation secondCalc;
    private PotionKnockbackStrength pStrength;
    private ItemController itemCon;
    private Animator animator;
    private PlayerPotionWheel potionWheel;
    private SatchelUI satchel;

    /// <summary>
    /// Sets text color of potions in Console
    /// </summary>
    Dictionary<int, string> TextColor = new Dictionary<int, string>
    {
        {0, "<color=white>"},
        {1, "<color=red>"},
        {2, "<color=yellow>"},
        {3, "<color=green>"},
        {4, "<color=blue>"},
        {5, "<color=purple>"}
    };

    void Awake()
    {
        m_Input = FindObjectOfType<PlayerInput>();
        potionCalc = GetComponent<PotionCalculation>();
        secondCalc = GetComponent<SecondaryArcCalculation>();
        pStrength = GetComponent<PotionKnockbackStrength>();
        itemCon = GetComponent<ItemController>();
        animator = GetComponent<Animator>();
        potionWheel = GetComponent<PlayerPotionWheel>();
        
    }

    private void Start()
    {
        satchel = PlayerUIManager.Instance.satchelUI;
        
        //Type_Holder.Add(Wand_Holder);
        //Type_Holder.Add(Potion_Holder);
        InstantiateAllType(prefabPotions, instPotions, potionPouch.transform);

        //ItemChanging();
        
    }
    /*
    void LateUpdate()
    {

        if (Selection[(int)SeletionType.Holders] == (int)SeletionType.Spells) //Wand
        {
            potionCalc.HidePotionPath();
        }

        else if(Selection[(int)SeletionType.Holders] == (int)SeletionType.Potions) //Potion
        {
            //DisableSpellEffects();
            SelectItemType((int)SeletionType.Potions, prefabPotions, instPotions);
            ThrowPotion((int)SeletionType.Potions, prefabPotions, instPotions, potionPouch.transform);
        }
    }
    */

    private void LateUpdate()
    {
        Inputs();
    }

    /// <summary>
    /// Performs actions based on player inputs.
    /// </summary>
    private void Inputs()
    {
        if(m_Input.AimInput)
        {
            if (m_Input.UseDownInput) //Throw
            {
                if(pickup.pickup != null) //Holding pickup obj
                {
                    if(itemCon.potionAmount[0] > 0) //Air Potion amount > 0
                    {
                        //Straight Throw pickup object using air potion
                        StraightThrowObject();
                    }
                    else
                    {
                        //Drop obj
                        pickup.DropPickup();
                    }
                }
                else
                {
                    if(itemCon.potionAmount[currentSelectedPotion] > 0) //Selected Potion amount > 0
                    {
                        //Arc Throw Potion
                        ArcThrowPotion();
                    }
                    else
                    {
                        //Don't show Arc Throw
                    }
                }
            }

            else if(m_Input.Button2) //Pickup or Drop pickup object
            {
                pickup.BoxCast();
            }

            else if(m_Input.Button1) //Drop pickup object or potion
            {
                if(pickup.pickup != null)
                {
                    pickup.DropPickup();
                }    
                else
                {
                    if (itemCon.potionAmount[currentSelectedPotion] > 0) //Selected Potion amount > 0
                    {
                        //Drop Potion
                        DropThrowPotion();
                    }
                    else
                    {
                        //Do Nothing
                        HideArcThrow();
                    }
                }
            }

            else if(m_Input.JumpInput) //Jump 
            {
                JumpPotion();
            }

            else if(pickup.pickup != null)  //While aiming and holding a pickup
            {
                if (itemCon.potionAmount[0] > 0) //Air Potion amount > 0
                {
                    HideArcThrow();
                    ShowStraightThrow();
                }
                else
                {
                    //Do Nothing
                }
                
            }

            else if(pickup.pickup == null)  //While aiming and not holding a pickup
            {
                if (itemCon.potionAmount[currentSelectedPotion] > 0) //Selected Potion amount > 0
                {
                    //Show potion arc throw
                    ShowArcThrow();
                }
                else
                {
                    //Do Nothing
                }
            }
        }

        else if (m_Input.JumpInput) //Jump 
        {
            JumpPotion();
        }

        else if (m_Input.Button2) //Pickup or Drop pickup object
        {
            pickup.BoxCast();
        }

        else if(!m_Input.AimInput)
        {
            HideArcThrow();
            HideStraightThrow();
        }
    }

    /// <summary>
    /// Set the currently selected potion.
    /// </summary>
    /// <param name="potionType">The integer value of the selected potion.</param>
    public void ChangeSelectedPotion(int potionType)
    {
        currentSelectedPotion = potionType;

        //Secondary check. Potion shouldn't be set if not available
        if (itemCon.AvailablePotions[currentSelectedPotion] && itemCon.potionAmount[currentSelectedPotion] > 0) 
        {
            ShowInstPotions(currentSelectedPotion);
        }
    }

    /// <summary>
    /// Enables the selected potion and disables all other instantiated potions.
    /// </summary>
    /// <param name="selectedPotion"></param>
    private void ShowInstPotions(int selectedPotion)
    {
        for (int i = 0; i < instPotions.Length; i++)
        {
            if (i == selectedPotion)
            {
                if (instPotions[i] != null)
                {
                    instPotions[i].SetActive(true);
                }
            }

            else
            {
                if (instPotions[i] != null)
                {
                    instPotions[i].SetActive(false);
                }
            }
        }
    }

    private void ArcThrowPotion()
    {
        Vector3 vel = potionCalc.SetPotionVelocity();

        //Throw potion
        ItemThrow( prefabPotions, instPotions, potionPouch.transform, 0, vel);
    }

    private void DropThrowPotion()
    {
        ItemThrow( prefabPotions, instPotions, potionPouch.transform, 1, new Vector3(0f, -1f, 0f));
    }

    private void StraightThrowObject()
    {

    }

    private void ShowArcThrow()
    {
        Vector3 target = potionCalc.UpdateAimData(potionCalc.GetPoints(potionPouch.transform.position, potionPouch.transform.forward));

        secondCalc.PotionAvailable = true;

        if (!target.Equals(Vector3.zero))
        {
            potionCalc.SetPotionReticle(target);

            potionCalc.ShowPotionPath();
        }
    }

    private void ShowStraightThrow()
    {
        Vector3 target = potionCalc.UpdateAimData(potionCalc.GetPoints(pickup.pickup.transform.position, potionPouch.transform.forward));

        //secondCalc.PotionAvailable = true;

        if (!target.Equals(Vector3.zero))
        {
            potionCalc.SetPotionReticle(target);

            potionCalc.ShowPotionPath();
        }
    }

    private void HideArcThrow()
    {
        potionCalc.HidePotionPath();
        secondCalc.PotionAvailable = false;
    }

    private void HideStraightThrow()
    {

    }

    private void JumpPotion()
    {
        if(!animator.GetBool("Grounded") && animator.GetBool("Jump_Secondary"))
        {
            GameObject obj = Instantiate(jumpPotion, potionPouch.transform.position, Quaternion.identity);
            obj.GetComponent<PotionBreak>().InstantBreak();
        }        
    }

    private void ItemThrow(GameObject[] prefabType, GameObject[] instType, Transform pouch, int releaseType, Vector3 vel)
    {
        Rigidbody obj = instType[currentSelectedPotion].GetComponent<Rigidbody>();
        instType[currentSelectedPotion] = null;
        obj.transform.SetParent(null);
        obj.isKinematic = false;
        obj.collisionDetectionMode = CollisionDetectionMode.ContinuousDynamic;
        obj.velocity = vel;

        obj.AddRelativeTorque(new Vector3(0f, 0f, UnityEngine.Random.Range(-2f, 2f)), ForceMode.Impulse);

        obj.GetComponentInChildren<PotionBreak>().EnablePotion();
        if (obj.GetComponent<WhitePotionEffect>())
        {
            obj.GetComponent<WhitePotionEffect>().forceMultiplier = pStrength.Velocity;
        }

        switch (releaseType)
        {
            case 0:
                obj.GetComponent<PotionBreak>().SetBreak(true);
                break;
            case 1:
                obj.GetComponent<PotionBreak>().DelayBreak();
                break;
            case 2:
                obj.GetComponent<PotionBreak>().InstantBreak();
                break;

        }


        obj = null;

        itemCon.Potions(currentSelectedPotion, -1);
        StartCoroutine(InstantiateItem(1, currentSelectedPotion, prefabType, instType, pouch));
    }





    /// <summary>
    /// Switches between using Spells, Potions, and Ingredients
    /// </summary>
    private void ItemChanging()
    {
        Selection[(int)SeletionType.Holders] = Selection[(int)SeletionType.Holders] == (int)SeletionType.Spells ? (int)SeletionType.Potions : (int)SeletionType.Spells;

        //HolderActivation(Type_Holder[Selection[((int)SeletionType.Holders)]].name + " was selected");

        if (Selection[(int)SeletionType.Holders] == (int)SeletionType.Potions)
        {
            ShowItemType((int)SeletionType.Potions, prefabPotions, instPotions);
        }
    }

    /// <summary>
    /// Shuffles between item type variations.
    /// </summary>
    /// <param name="type"></param>
    /// <param name="prefabType"></param>
    /// <param name="instType"></param>
    public void SelectItemType(int type, GameObject[] prefabType, GameObject[] instType)
    {
        int prevSelection = Selection[type];
        Selection[type] = satchel.Selection; //Sets potion to potion wheel selection


        if (instType[Selection[type]] != null)
        {
            if (prevSelection != Selection[type])
            {
                ShowItemType(type, prefabType, instType);
            }

            else if (!instType[Selection[type]].activeSelf && itemCon.potionAmount[Selection[type]] > 0)
            {
                ShowItemType(type, prefabType, instType);
            }
        }        
    }

    /// <summary>
    /// Shows player spawned item variations based on selected type //Implement check if player has item variation before switching
    /// </summary>
    /// <param name="type"></param>
    /// <param name="prefabType"></param>
    /// <param name="instType"></param>
    void ShowItemType(int type, GameObject[] prefabType, GameObject[] instType)
    {
        if (itemCon.AvailablePotions[Selection[type]] && itemCon.potionAmount[Selection[type]] > 0)
        {
            for (int i = 0; i < prefabType.Length; i++)
            {
                if (i == Selection[type])
                {
                    if (instType[i] != null)
                    {
                        instType[i].SetActive(true);
                    }
                }

                else
                {
                    if (instType[i] != null)
                    {
                        instType[i].SetActive(false);
                    }
                }
            }
        }

        if (instType[Selection[type]] != null && itemCon.AvailablePotions[Selection[type]])
        {
            string name = instType[Selection[type]].name;
            name = name.Substring(12, name.Length - 19) + " Potion"; //Removes prefab name prefix
            Debug.Log(TextColor[Selection[type]] + name + "</color> has been activated/selected.");
        }
    }

    /// <summary>
    /// Spawns one of each type of potion //--TESTING ONLY--//
    /// </summary>
    /// <param name="prefabType"></param>
    /// <param name="instType"></param>
    /// <param name="pouch"></param>
    void InstantiateAllType(GameObject[] prefabType, GameObject[] instType, Transform pouch)
    {
        for(int i = 0; i < prefabType.Length; i++)
        {
            if(instType[i] == null)
            {
                GameObject item = Instantiate(prefabType[i], pouch.position, Quaternion.identity, pouch);
                instType[i] = item;
                instType[i].SetActive(false);
            }
        }
    }

    /// <summary>
    /// Spawns a new potion after one has been used //--TESTING ONLY--//
    /// </summary>
    /// <param name="itemType"></param>
    /// <param name="itemVariation"></param>
    /// <param name="prefabType"></param>
    /// <param name="instType"></param>
    /// <param name="pouch"></param>
    /// <returns></returns>
    IEnumerator InstantiateItem(int itemType, int itemVariation, GameObject[] prefabType, GameObject[] instType, Transform pouch)
    {
        yield return new WaitForSeconds(0.5f); //Spawn delay of potion

        if (instType[itemVariation] == null)
        {
            GameObject newItem = Instantiate(prefabType[itemVariation], pouch.position, Quaternion.Euler(Vector3.zero), pouch);
            newItem.transform.SetSiblingIndex(itemVariation);//Sets child position of potion
            instType[itemVariation] = newItem;


            if(Selection[itemType] != itemVariation || itemCon.potionAmount[itemVariation] == 0)
            {
                if(instType[itemVariation] != null)
                {
                    instType[itemVariation].SetActive(false); //Hides potion if player swaps to a new potion before new potion is instantiated
                }
            }            
        }
    }


    //Throwing potions----------------------------------------------------------------------------------------Throwing potions

    /// <summary>
    /// Gets player input to aim potion and throw it
    /// </summary>
    /// <param name="itemType"></param>
    /// <param name="prefabType"></param>
    /// <param name="instType"></param>
    /// <param name="pouch"></param>
    void ThrowPotion(int itemType, GameObject[] prefabType, GameObject[] instType, Transform pouch)
    {
        if (m_Input.AimInput && itemCon.potionAmount[Selection[itemType]] > 0)
        {
            Vector3 target = potionCalc.UpdateAimData(potionCalc.GetPoints(potionPouch.transform.position, potionPouch.transform.forward));

            secondCalc.PotionAvailable = true;

            if (!target.Equals(Vector3.zero))
            {
                potionCalc.SetPotionReticle(target);

                potionCalc.ShowPotionPath();

                if (m_Input.UseDownInput) //Throws Potions
                {
                    Vector3 vel = potionCalc.SetPotionVelocity();

                    if (instType[Selection[itemType]] != null)
                    {
                        ItemThrow(itemType, prefabType, instType, pouch, 0, vel); //Implement potion check
                    }
                }

                else if (m_Input.Drop)
                {
                    if (instType[Selection[itemType]] != null)
                    {
                        ItemThrow(itemType, prefabType, instType, pouch, 1, new Vector3(0f, -1f, 0f)); //Implement potion check
                    }
                }
            }
        }

        else
        {
            potionCalc.HidePotionPath();
            secondCalc.PotionAvailable = false;
        }

        if (m_Input.JumpInput && !animator.GetBool("Grounded") && animator.GetBool("Jump_Secondary"))
        {
            GameObject obj = Instantiate(jumpPotion, pouch.position, Quaternion.identity);
            obj.GetComponent<PotionBreak>().InstantBreak();
        }
    }

    private void ItemThrow(int itemType, GameObject[] prefabType, GameObject[] instType, Transform pouch, int releaseType, Vector3 vel)
    {
        Rigidbody obj = instType[Selection[itemType]].GetComponent<Rigidbody>();
        instType[Selection[itemType]] = null;
        obj.transform.SetParent(null);
        obj.isKinematic = false;
        obj.collisionDetectionMode = CollisionDetectionMode.ContinuousDynamic;
        obj.velocity = vel;

        obj.AddRelativeTorque(new Vector3(0f, 0f, UnityEngine.Random.Range(-2f, 2f)), ForceMode.Impulse);

        if(itemType.Equals((int)SeletionType.Potions))
        {
            obj.GetComponentInChildren<PotionBreak>().EnablePotion();
            if(obj.GetComponent<WhitePotionEffect>())
            {
                obj.GetComponent<WhitePotionEffect>().forceMultiplier = pStrength.Velocity;
            }

            switch(releaseType)
            {
                case 0:
                    obj.GetComponent<PotionBreak>().SetBreak(true);
                    break;
                case 1:
                    obj.GetComponent<PotionBreak>().DelayBreak();
                    break;
                case 2:
                    obj.GetComponent<PotionBreak>().InstantBreak();
                    break;
               
            }        
        }

        else if(itemType.Equals((int)SeletionType.Ingredients))
        {
            obj.GetComponentInChildren<IngredientPickup>().Activation(0.25f);
        }

        obj = null;

        itemCon.Potions(Selection[itemType], -1);
        StartCoroutine(InstantiateItem(itemType, Selection[itemType], prefabType, instType, pouch));
    }
    //Throwing potions----------------------------------------------------------------------------------------Throwing potions

}
