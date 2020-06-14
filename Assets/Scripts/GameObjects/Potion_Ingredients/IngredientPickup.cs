using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(ItemSpin))]
public class IngredientPickup : MonoBehaviour
{
    public Ingredients.IngredientType ingredient;

    [SerializeField] private float activeForce = 5f;
    [SerializeField] private float minScale = 0.75f;

    private const float swapTime = 1.5f;

    public bool ActivePickup { get { return active; } }
    private bool active = false;
    private ItemSpin spin;
    private Transform childMesh;

    private void Awake()
    {
        spin = GetComponent<ItemSpin>();
        childMesh = transform.GetChild(0);
    }

    private void Start()
    {
        if (active && spin != null)
        {
            spin.enabled = true;
        }
        else
        {
            StartCoroutine(PulseSize());
        }
    }

    /// <summary>
    /// Enables the Ingredient for pickup
    /// </summary>
    public void EnableIngredient()
    {
        active = true;
        transform.parent = null;
        Rigidbody rb = GetComponent<Rigidbody>();
        rb.isKinematic = false;
        rb.AddForce(-transform.forward * activeForce, ForceMode.Impulse);
        spin.enabled = true;
    }

    /// <summary>
    /// Triggers when the player overlaps the Ingredient
    /// </summary>
    /// <param name="other"></param>
    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player") && active)
        {
            //other.GetComponent<ItemController>().Ingredients((int)ingredient, 1);
            GameManager.Instance.UIManager.GetComponent<SatchelUI>().ItemPickup((int)ingredient);
            Destroy(gameObject);
        }
    }

    /// <summary>
    /// Scales the Ingredient Mesh
    /// </summary>
    /// <returns></returns>
    private IEnumerator PulseSize()
    {
        float timer = 0f;
        float scale = 0f;
        float startTime = Time.time;

        //Scales Ingredient to 1
        while(timer < swapTime)
        {
            timer = Time.time - startTime;
            scale = Mathf.Abs(Mathf.Sin(timer));
            childMesh.localScale = Vector3.one * scale;
            yield return null;
        }

        //Scales Ingredient between 1 and minScale
        while(!active)
        {
            timer = Time.time - startTime;
            scale = (Mathf.Abs(Mathf.Sin(timer)) * (1 - minScale)) + minScale;
            childMesh.localScale = Vector3.one * scale;
            yield return null;
        }

        childMesh.localScale = Vector3.one;
    }
}
