using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemMagnetism : MonoBehaviour
{
    public float magnetismForce = 10f;
    private float triggerRadius = 3f;

    private List<IngredientPickup> ingredients = new List<IngredientPickup>();

    private void Start()
    {
        triggerRadius = GetComponent<SphereCollider>().radius;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Potion_Ingredient"))
        {
            ingredients.Add(other.GetComponent<IngredientPickup>());
            other.GetComponent<Rigidbody>().useGravity = false;
            other.GetComponent<Rigidbody>().velocity = Vector3.zero;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Potion_Ingredient"))
        {
            IngredientPickup ingredient = other.GetComponent<IngredientPickup>();

            if (ingredients.Contains(ingredient))
            {
                ingredients.Remove(ingredient);
                other.GetComponent<Rigidbody>().useGravity = true;
            }
        }
    }

    private void Update()
    {
        for(int i = 0; i < ingredients.Count; i++)
        {
            if (ingredients[i] == null)
            {
                ingredients.Remove(ingredients[i]);
            }

            else
            {
                if (ingredients[i].ActivePickup)
                {
                    //float magnitude = (transform.position - ingredients[i].transform.position).magnitude <= 3f ? (transform.position - ingredients[i].transform.position).magnitude : triggerRadius;
                    //float strength = ( triggerRadius - magnitude) / triggerRadius;
                    //ingredientsRB[i].velocity = Vector3.zero;
                    ingredients[i].transform.position = Vector3.MoveTowards(ingredients[i].transform.position, transform.position, Time.deltaTime * magnetismForce);
                }
            }
        }
    }
}
