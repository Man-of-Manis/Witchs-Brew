using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemSource : MonoBehaviour
{
    [SerializeField] private Ingredients.IngredientType sourceIngredient;
    [SerializeField] private float spawnTimer;
    [SerializeField] private float growthTime = 1f;
    [SerializeField] private GameObject[] prefabIngredients = new GameObject[5];

    private Transform instIngredient = null;
    private float timer = 0f;
    private float currentScale = 0f;

    private Coroutine co;

    void Start()
    {
        SpawnNewIngredient();
    }

    void Update()
    {
        SpawnCountdown();
    }

    private void SpawnCountdown()
    {
        if(instIngredient == null && timer < spawnTimer)
        {
            timer += Time.deltaTime;
        }

        else if(instIngredient == null && timer >= spawnTimer)
        {
            SpawnNewIngredient();
        }

        else
        {
            timer = 0f;
        }
    }

    private void SpawnNewIngredient()
    {
        if (prefabIngredients[(int)sourceIngredient] != null)
        {
            instIngredient = Instantiate(prefabIngredients[(int)sourceIngredient].transform, transform.position, Quaternion.identity, transform);
            instIngredient.localScale = Vector3.zero;

            co = StartCoroutine(GrowIngredient());
        }
    }

    private IEnumerator GrowIngredient()
    {
        for (float i = 0; i < 1.0f; i += Time.deltaTime / growthTime)
        {
            instIngredient.localScale = Vector3.one * Mathf.Lerp(0.0f, 1.0f, i);

            yield return null;
        }
    }
}
