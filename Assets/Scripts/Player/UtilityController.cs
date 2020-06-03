/*
 * Toggles active player utility and keeps track of last 
 */

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UtilityController : MonoBehaviour
{
    [Header("Potions")]
    public GameObject potionPouch;
    [SerializeField] private GameObject jumpPotion;
    [SerializeField] private GameObject straightThrowPotion;
    public GameObject[] prefabPotions = new GameObject[5];
    public GameObject[] instPotions = new GameObject[5];
    [SerializeField] private int currentSelectedPotion = 0;
    [SerializeField] private PotionPool[] potionPools = new PotionPool[6];

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
    private PauseMenu pauseMenu;
    private KeyCubeUI keyCube;
    private bool previouslyAiming;

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
        pauseMenu = PlayerUIManager.Instance.pauseMenu;
        InstantiateAllType(prefabPotions, instPotions, potionPouch.transform);
    }

    private void LateUpdate()
    {
        Inputs();
    }

    /// <summary>
    /// Performs actions based on player inputs.
    /// </summary>
    private void Inputs()
    {
        if(!satchel.SatchelOpen && !pauseMenu.PauseMenuOpen)
        {
            if (m_Input.AimInput)
            {
                if (m_Input.UseDownInput) //Throw
                {
                    if (pickup.pickup != null) //Holding pickup obj
                    {
                        if (itemCon.potionAmount[0] > 0) //Air Potion amount > 0
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
                        if (itemCon.potionAmount[currentSelectedPotion] > 0) //Selected Potion amount > 0
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

                else if (m_Input.Button2 && !satchel.SatchelOpen) //Pickup or Drop pickup object
                {
                    pickup.BoxCast();
                }

                else if (m_Input.Button1) //Drop pickup object or potion
                {
                    if (pickup.pickup != null)
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

                else if (m_Input.DPad_Y < 0f)
                {
                    Debug.Log("Pickup Button");

                    if (pickup.pickup != null)   //If pickup object in hand
                    {
                        if (satchel.SatchelOpen)    //If potion wheel is open
                        {
                            pickup.RemoveFromSatchel();
                        }
                        else    //If potion wheel is closed
                        {
                            pickup.AddToSatchel();
                        }
                    }
                    else    //If no pickup object
                    {
                        if (satchel.SatchelOpen)    //If potion wheel is open
                        {
                            pickup.RemoveFromSatchel();
                        }
                    }
                }

                else if (m_Input.JumpInput) //Jump 
                {
                    JumpPotion();
                }

                else if (pickup.pickup != null)  //While aiming and holding a pickup
                {
                    if (itemCon.potionAmount[0] > 0) //Air Potion amount > 0
                    {
                        HideArcThrow();
                        ShowStraightThrow();
                    }
                    else
                    {
                        //Do Nothing
                        HideArcThrow();
                    }

                }

                else if (pickup.pickup == null)  //While aiming and not holding a pickup
                {
                    if (itemCon.potionAmount[currentSelectedPotion] > 0) //Selected Potion amount > 0
                    {
                        //Show potion arc throw
                        ShowArcThrow();
                    }
                    else
                    {
                        //Do Nothing
                        HideArcThrow();
                    }
                }

                if (instPotions[currentSelectedPotion] != null && itemCon.potionAmount[currentSelectedPotion] > 0)
                {
                    if (!previouslyAiming)
                    {
                        animator.SetTrigger("Aim_Potion");
                        previouslyAiming = true;
                    }

                    animator.SetBool("Aiming_Potion", true);
                }
                else
                {
                    animator.SetBool("Aiming_Potion", false);
                    previouslyAiming = false;
                }
            }

            else if (m_Input.JumpInput) //Jump 
            {
                JumpPotion();
            }

            else if (m_Input.Button2 && !satchel.SatchelOpen) //Pickup or Drop pickup object
            {
                pickup.BoxCast();
            }

            else if (m_Input.Button1) //Drop pickup object or potion
            {
                if (pickup.pickup != null)
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

            else if (m_Input.DPad_Y < 0f)
            {
                if (pickup.pickup != null)   //If pickup object in hand
                {
                    if (!satchel.SatchelOpen)    //If potion wheel is open
                    {
                        pickup.AddToSatchel();
                        Debug.Log("Add to satchel.");
                    }
                }
            }

            else if (!m_Input.AimInput)
            {
                HideArcThrow();
                HideStraightThrow();

                if (m_Input.UseDownInput) //Throw
                {
                    if (pickup.pickup != null) //Holding pickup obj
                    {
                        if (itemCon.potionAmount[0] > 0) //Air Potion amount > 0
                        {
                            //Straight Throw pickup object using air potion
                            //StraightThrowObject();
                        }
                        else
                        {
                            //Drop obj
                            pickup.DropPickup();
                        }
                    }
                }

                animator.SetBool("Aiming_Potion", false);
                previouslyAiming = false;
            }
        }

        if(satchel.SatchelOpen && !pauseMenu.PauseMenuOpen)
        {
            if (m_Input.DPad_Y < 0f)
            {
                if (pickup.pickup != null)   //If pickup object in hand
                {
                    if (satchel.SatchelOpen)    //If potion wheel is open
                    {
                        pickup.RemoveFromSatchel();
                        Debug.Log("Add to satchel and replace.");
                    }
                }
                else    //If no pickup object
                {
                    if (satchel.SatchelOpen)    //If potion wheel is open
                    {
                        pickup.RemoveFromSatchel();
                        Debug.Log("remove from satchel.");
                    }
                }
            }
        }
    }

    /// <summary>
    /// Returns a potion from spawn pool or instaniates new potion.
    /// </summary>
    /// <param name="potionType">The potion index to return.</param>
    /// <returns></returns>
    private GameObject GetPotionFromPool(int potionType)
    {
        //Searches type pool for inactive potion
        foreach(GameObject potion in potionPools[potionType].potions)
        {
            if(!potion.activeSelf)
            {
                //Returns an inactive potion from type pool
                potion.transform.position = potionPouch.transform.position;
                potion.transform.rotation = Quaternion.Euler(Vector3.zero);
                potion.transform.parent = potionPouch.transform;
                return potion;
            }
        }

        //Instantiates new potion
        GameObject newPotion = Instantiate(prefabPotions[potionType]);
        newPotion.transform.position = potionPouch.transform.position;
        newPotion.transform.rotation = Quaternion.Euler(Vector3.zero);
        newPotion.transform.parent = potionPouch.transform;

        //Adds potion to type pool
        potionPools[potionType].potions.Add(newPotion);

        return newPotion;
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

    /// <summary>
    /// Throws the currently selected potion in an arc.
    /// </summary>
    private void ArcThrowPotion()
    {
        Vector3 vel = potionCalc.SetPotionVelocity();

        //Throw potion
        PotionThrow( prefabPotions, instPotions, potionPouch.transform, 0, vel);
    }

    /// <summary>
    /// Drops the currently selected potion on the ground.
    /// </summary>
    private void DropThrowPotion()
    {
        PotionThrow( prefabPotions, instPotions, potionPouch.transform, 1, new Vector3(0f, -1f, 0f));
    }

    /// <summary>
    /// Throws a picked up object in a straight line.
    /// </summary>
    private void StraightThrowObject()
    {
        GameObject obj = Instantiate(straightThrowPotion, potionPouch.transform.position, Quaternion.identity);
        obj.GetComponent<PotionBreak>().InstantBreak();

        GameObject objThrow = pickup.pickup.gameObject;
        pickup.DropPickup();
        Vector3 vel = potionCalc.SetPotionVelocity() * 1.5f;

        PickupThrow(objThrow, vel);
    }

    /// <summary>
    /// Displays the line renderer in an arc.
    /// </summary>
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

    /// <summary>
    /// Displays the line renderer in a straight line.
    /// </summary>
    private void ShowStraightThrow()
    {
        Vector3 target = potionCalc.UpdateAimData(potionCalc.GetPoints(pickup.pickup.transform.position, potionPouch.transform.forward, 1.5f));
        //secondCalc.PotionAvailable = true;

        if (!target.Equals(Vector3.zero))
        {
            potionCalc.SetPotionReticle(target);

            potionCalc.ShowPotionPath();
        }
    }

    /// <summary>
    /// Hides the line renderer for the arc.
    /// </summary>
    private void HideArcThrow()
    {
        potionCalc.HidePotionPath();
        secondCalc.PotionAvailable = false;
    }

    /// <summary>
    /// Hides the line renderer for the straight line.
    /// </summary>
    private void HideStraightThrow()
    {
        potionCalc.HidePotionPath();
        secondCalc.PotionAvailable = false;
    }

    /// <summary>
    /// Instantiates the jump potion for the player's second jump.
    /// </summary>
    private void JumpPotion()
    {
        if(!animator.GetBool("Grounded") && animator.GetBool("Jump_Secondary"))
        {
            GameObject obj = Instantiate(jumpPotion, potionPouch.transform.position, Quaternion.identity);
            obj.GetComponent<PotionBreak>().InstantBreak();
        }        
    }

    /// <summary>
    /// Creates the velocity of a pickup object for a straight throw.
    /// </summary>
    /// <param name="pickup">The object to launch.</param>
    /// <param name="velocity">The velocity to launch the object.</param>
    private void PickupThrow(GameObject pickup, Vector3 velocity)
    {
        Rigidbody obj = pickup.GetComponent<Rigidbody>();
        obj.transform.SetParent(null);
        obj.isKinematic = false;
        obj.collisionDetectionMode = CollisionDetectionMode.ContinuousDynamic;
        obj.velocity = velocity;
        //Calls the throw animation
        animator.SetTrigger("Throw_Potion");
    }

    /// <summary>
    /// Creates the velocity to launch the selected potion.
    /// </summary>
    /// <param name="prefabType">The prefab array of the potions.</param>
    /// <param name="instType">The instantiated array of potions.</param>
    /// <param name="pouch">The parent transform of the instantiated potions.</param>
    /// <param name="releaseType">The ground interaction with the potion when it spawns.</param>
    /// <param name="vel">The velocity to launch the object with.</param>
    private void PotionThrow(GameObject[] prefabType, GameObject[] instType, Transform pouch, int releaseType, Vector3 vel)
    {
        if(instType[currentSelectedPotion] != null)
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
                    obj.gameObject.layer = LayerMask.NameToLayer("Potion_Dropped");
                    break;
                case 2:
                    obj.GetComponent<PotionBreak>().InstantBreak();
                    break;

            }

            obj = null;

            itemCon.Potions(currentSelectedPotion, -1);
            StartCoroutine(InstantiateItem(1, currentSelectedPotion, prefabType, instType, pouch));
            //Calls the throw animation
            animator.SetTrigger("Throw_Potion");
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
                potionPools[i].potions.Add(item);
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
            //GameObject newItem = Instantiate(prefabType[itemVariation], pouch.position, Quaternion.Euler(Vector3.zero), pouch);
            //Gets potion from type pool
            GameObject newItem = GetPotionFromPool(itemVariation);
            newItem.SetActive(true);
            newItem.transform.position = pouch.position;
            newItem.transform.rotation = Quaternion.Euler(Vector3.zero);
            newItem.transform.parent = pouch;

            newItem.transform.SetSiblingIndex(itemVariation);//Sets child position of potion
            instType[itemVariation] = newItem;


            if(itemCon.potionAmount[itemVariation] == 0)
            {
                if(instType[itemVariation] != null)
                {
                    instType[itemVariation].SetActive(false); //Hides potion if player swaps to a new potion before new potion is instantiated
                }
            }            
        }
    }

}

[System.Serializable]
public class PotionPool
{
    public List<GameObject> potions = new List<GameObject>();
}
