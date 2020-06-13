using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemSource : MonoBehaviour
{
    [SerializeField] private Ingredients.IngredientType sourceIngredient;
    [SerializeField] private float spawnTime;
    [SerializeField] private GameObject[] prefabIngredients = new GameObject[5];

    private GameObject instIngredient = null;

    void Start()
    {
        SpawnNewIngredient();
    }

    public void EnableIngredient()
    {
        if(instIngredient != null)
        {
            instIngredient.GetComponent<IngredientPickup>().EnableIngredient();            
            StartCoroutine(SpawnTimer());
            instIngredient = null;
        }
    }

    private void SpawnNewIngredient()
    {
        if (prefabIngredients[(int)sourceIngredient] != null)
        {
            instIngredient = Instantiate(prefabIngredients[(int)sourceIngredient], transform.position, transform.rotation, transform);
        }
    }

    private IEnumerator SpawnTimer()
    {
        yield return new WaitForSeconds(spawnTime);

        SpawnNewIngredient();
    }
}
