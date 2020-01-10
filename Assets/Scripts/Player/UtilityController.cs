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
    
    [Header("Spells")]
    public GameObject SpellSquare;
    //public ParticleSystem spellParticle;
    [SerializeField] private int NumberOfSpells = 3;

    [Header("Potions")]
    public GameObject potionPouch;
    [SerializeField] private GameObject jumpPotion;
    public GameObject[] prefabPotions = new GameObject[5];
    public GameObject[] instPotions = new GameObject[5];
    
    [Header("Ingredients")]
    public GameObject ingredientPouch;
    public GameObject[] prefabIngredients = new GameObject[4];
    public GameObject[] instIngredients = new GameObject[4];
    

    

    private PlayerInput m_Input;
    private PotionCalculation potionCalc;
    private SecondaryArcCalculation secondCalc;
    private PotionKnockbackStrength pStrength;
    private ItemController itemCon;
    private Animator animator;
    private PlayerPotionWheel potionWheel;
    private SatchelUI satchel;

    // Start is called before the first frame update
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
        Type_Holder.Add(Wand_Holder);
        Type_Holder.Add(Potion_Holder);
        //Type_Holder.Add(Ingredient_Holder);

        //Selection[(int)SeletionType.Holders] = (int)SeletionType.Spells;

        HolderActivation("Initialization");
        InstantiateAllType(prefabPotions, instPotions, potionPouch.transform);
        //InstantiateAllType(prefabIngredients, instIngredients, ingredientPouch.transform);

        ItemChanging();
    }

    // Update is called once per frame
    void LateUpdate()
    {
        //ItemChanging();

        if (Selection[(int)SeletionType.Holders] == (int)SeletionType.Spells) //Wand
        {
            potionCalc.HidePotionPath();
            SelectSpellType((int)SeletionType.Spells);
        }

        else if(Selection[(int)SeletionType.Holders] == (int)SeletionType.Potions) //Potion
        {
            DisableSpellEffects();
            SelectItemType((int)SeletionType.Potions, prefabPotions, instPotions);
            ThrowPotion((int)SeletionType.Potions, prefabPotions, instPotions, potionPouch.transform);
        }
    }

    //Switches between using Spells, Potions, and Ingredients
    private void ItemChanging()
    {
        //if(m_Input.Button3 && !m_Input.MakePotion)
        if(true)
        {
            Selection[(int)SeletionType.Holders] = Selection[(int)SeletionType.Holders] == (int)SeletionType.Spells ? (int)SeletionType.Potions : (int)SeletionType.Spells;

            HolderActivation(Type_Holder[Selection[((int)SeletionType.Holders)]].name + " was selected");

            if (Selection[(int)SeletionType.Holders] == (int)SeletionType.Potions)
            {
                ShowItemType((int)SeletionType.Potions, prefabPotions, instPotions);
            }
        }        
    }

    //Shows or hides wand and potion based on selection
    private void HolderActivation(string typeDirection)
    {
        for (int i = 0; i < Type_Holder.Count; i++)
        {
            if (i == Selection[(int)SeletionType.Holders])
            {
                Type_Holder[i].SetActive(true);
            }
            else
            {
                Type_Holder[i].SetActive(false);
            }
        }

        //Debug.Log(typeDirection);
    }

    //Hides spell icon and PS
    void DisableSpellEffects()
    {
        SpellSquare.SetActive(false);
        //spellParticle.Stop();
    }

    //Sets text color of potions in Console
    Dictionary<int, string> TextColor = new Dictionary<int, string>
    {
        {0, "<color=white>"},
        {1, "<color=red>"},
        {2, "<color=yellow>"},
        {3, "<color=green>"},
        {4, "<color=blue>"},
        {5, "<color=purple>"}
    };

    void SelectSpellType(int type)
    {
        if (m_Input.ShuffleType)
        {
            Selection[type] = (Selection[type] >= (NumberOfSpells - 1)) ? 0 : (Selection[type] + 1);
        }
    }

    Dictionary<Vector2, int> PotionSelection = new Dictionary<Vector2, int>
    {
        {new Vector2(0f, 1f), 0},
        {new Vector2(1f, 0f), 1},
        {new Vector2(0f, -1f), 2},
        {new Vector2(-1f, 0f), 3}
    };

    //Shuffles between item type variations
    public void SelectItemType(int type, GameObject[] prefabType, GameObject[] instType)
    {
        int prevSelection = Selection[type];
        //Selection[type] = potionWheel.Selection; //Sets potion to potion wheel selection
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

    //Shows player spawned item variations based on selected type //Implement check if player has item variation before switching
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
            //name = name.Substring(0, name.Length - 7); //Removes "(Clone)" from string
            name = name.Substring(12, name.Length - 19) + " Potion"; //Removes prefab name prefix
            Debug.Log(TextColor[Selection[type]] + name + "</color> has been activated/selected.");
        }
    }

    //Spawns one of each type of potion //--TESTING ONLY--//
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

    //Spawns a new potion after one has been used //--TESTING ONLY--//
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

    //Gets player input to aim potion and throw it
    void ThrowPotion(int itemType, GameObject[] prefabType, GameObject[] instType, Transform pouch)
    {
        //Debug.Log(itemCon.potionAmount[Selection[itemType]] + " / " + Selection[itemType]);

        if (m_Input.AimInput && itemCon.potionAmount[Selection[itemType]] > 0)
        {
            Vector3 target = potionCalc.UpdateAimData(potionCalc.GetPoints());

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
            //obj.GetComponentInChildren<PotionPickup>().Activation(0.25f);
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
