using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class PotionMixing : MonoBehaviour
{
    [SerializeField] private GameObject[] PotionPrefabs = new GameObject[5];

    [SerializeField] private GameObject[] IngredientPrefabs = new GameObject[4];

    [SerializeField] private int[] InsertedPotions = new int[4];

    [SerializeField] private int[] InsertedIngredients = new int[4];

    private PotionMixerActivation activator;

    private MixerInventoryUI ui;

    public int[] PotionAmount { get { return InsertedPotions; } }
    public int[] IngredientAmount { get { return InsertedIngredients; } }

    private void Start()
    {
        activator = GetComponent<PotionMixerActivation>();
        ui = GetComponentInChildren<MixerInventoryUI>();
    }

    private void OnCollisionEnter(Collision collision)
    {
        if(activator.CanMakePotions)
        {
            if (collision.collider.CompareTag("Potion_Type"))
            {
                if (InsertedIngredients.All(x => x == 0))
                {
                    //Allow potion insertion
                    int variation = (int)collision.collider.GetComponent<PotionPickup>().Potion;

                    if (variation < 4)
                    {
                        AddItems("Potion", variation);
                        Destroy(collision.gameObject);
                    }
                }
            }

            else if (collision.collider.CompareTag("Potion_Ingredient"))
            {
                if (InsertedPotions.All(x => x == 0))
                {
                    //Allow Ingredient insertion
                    int variation = (int)collision.collider.GetComponent<IngredientPickup>().ingredient;

                    if (!LessThanThreeIngredients(variation))
                    {
                        AddItems("Ingredient", variation);
                        Destroy(collision.gameObject);
                    }
                }
            }
        }
        
    }

    private bool LessThanThreeIngredients(int variation) // Checks if more than three ingredient have been entered already
    {
        bool[] b = new bool[3];
        int h = 0;

        for (int i = 0; i < InsertedIngredients.Length; i++)
        {
            if (i != variation)
            {
                b[h] = InsertedIngredients[i] > 0;
                h++;
            }
        }

        return b[0] && b[1] && b[2];
    }

    private bool AtLeastThreeIngredients()
    {
        bool[] b = new bool[3];
        int h = 0;

        for (int i = 0; i < InsertedIngredients.Length; i++)
        {
            if (InsertedIngredients[i] > 0)
            {
                b[h] = true;
                h++;
            }
        }

        return b[0] && b[1] && b[2];
    }

    private int ElementSum()
    {
        int sum = 0;

        for(int i = 0; i < InsertedIngredients.Length; i++)
        {
            if(InsertedIngredients[i] > 0)
            {
                sum += i;
            }
        }

        return sum;
    }

    void AddItems(string type, int element)
    {
        if(type.Equals("Potion"))
        {
            InsertedPotions[element] += 1;
        }

        else if(type.Equals("Ingredient"))
        {
            InsertedIngredients[element] += 1;
        }

        ui.UpdateValues();
    }

    void SubtractPotions()
    {
        InsertedPotions[0] -= 1;
        InsertedPotions[1] -= 1;
        InsertedPotions[2] -= 1;
        InsertedPotions[3] -= 1;
        ui.UpdateValues();
    }

    void SubtractIngredients(int first, int second, int third)
    {
        InsertedIngredients[first] -= 1;
        InsertedIngredients[second] -= 1;
        InsertedIngredients[third] -= 1;
        ui.UpdateValues();
    }

    public void MixPotion()
    {
        if (InsertedPotions.All(x => x > 0)) //Mix Potion
        {
            SubtractPotions();
            RemoveItem(PotionPrefabs[4]); //Special Potion
        }

        else if(AtLeastThreeIngredients())
        {
            switch (ElementSum())
            {
                case 3:
                    SubtractIngredients(0, 1, 2); RemoveItem(PotionPrefabs[0]);
                    break;
                case 4:
                    SubtractIngredients(0, 1, 3); RemoveItem(PotionPrefabs[1]);
                    break;
                case 5:
                    SubtractIngredients(0, 2, 3); RemoveItem(PotionPrefabs[2]);
                    break;
                case 6:
                    SubtractIngredients(1, 2, 3); RemoveItem(PotionPrefabs[3]);
                    break;
                default: Debug.Log("Something has gone wrong. This potion doesn't exist.");
                    break;
            }
        }
    }

    public void RemoveAllItems()
    {
        StartCoroutine(RemoveItems());
    }

    void RemoveItem(GameObject item)
    {
        GameObject potion = Instantiate(item, transform.Find("Spell_Point").position, transform.rotation);

        Rigidbody rb = potion.GetComponent<Rigidbody>();

        rb.isKinematic = false;
        rb.collisionDetectionMode = CollisionDetectionMode.ContinuousDynamic;
        rb.AddRelativeForce(new Vector3(Random.Range(-1f, 1f), 1f, 2f), ForceMode.Impulse);

        //potion.GetComponent<PotionPickup>().Activation(0.25f);
    }

    IEnumerator RemoveItems()
    {
        for (int i = 0; i < InsertedPotions.Length; i++)
        {
            for (int j = InsertedPotions[i]; j > 0; j--)
            {
                RemoveItem(PotionPrefabs[i]);

                yield return new WaitForSeconds(0.5f);
            }
        }

        for (int i = 0; i < InsertedIngredients.Length; i++)
        {
            for (int j = InsertedIngredients[i]; j > 0; j--)
            {
                RemoveItem(IngredientPrefabs[i]);

                yield return new WaitForSeconds(0.5f);
            }
        }
    }
}
