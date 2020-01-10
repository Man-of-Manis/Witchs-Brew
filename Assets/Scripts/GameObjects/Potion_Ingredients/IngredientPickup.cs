using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(ItemSpin))]
public class IngredientPickup : MonoBehaviour
{
    public Ingredients.IngredientType ingredient;

    public bool ActivePickup { get { return active; } }

    public bool active = false;

    private ItemSpin spin;

    private void Awake()
    {
        spin = GetComponent<ItemSpin>();

        if (active && spin != null)
        {
            spin.enabled = true;
        }
    }

    private void Start()
    {
        
    }

    public void Activation(float delay)
    {
        StartCoroutine(ActivationDelay(delay));
    }

    IEnumerator ActivationDelay(float delay)
    {
        yield return new WaitForSeconds(delay);
        active = true;
        spin.enabled = true;
    }

    public void EnableIngredient()
    {
        active = true;
        transform.GetComponent<Rigidbody>().isKinematic = false;
        spin.enabled = true;
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player") && active)
        {
            //other.GetComponent<ItemController>().Ingredients((int)ingredient, 1);
            GameManager.Instance.UIManager.GetComponent<SatchelUI>().ItemPickup((int)ingredient);
            Destroy(gameObject);
        }
    }
}
