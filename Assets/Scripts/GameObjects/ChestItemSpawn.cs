using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChestItemSpawn : MonoBehaviour, IChest
{
    public Ingredients.IngredientType spawnIngredient;
    [SerializeField] private int SpawnAmount = 5;
    public GameObject[] ingredients;
    public Transform spawnPoint;
    bool opened;

    Coroutine co;

    public void Activate()
    {
        if (!opened)
        {
            if (co != null)
            {
                StopCoroutine(co);
            }

            co = StartCoroutine(Unlock());
        }
    }

    // Start is called before the first frame update
    public void SpawnItems()
    {
        StartCoroutine(SpawnMultiple());
    }

    IEnumerator Unlock()
    {
        Animator anim = gameObject.GetComponent<Animator>();
        anim.SetTrigger("Open");
        GetComponent<AudioSource>().Play();
        yield return new WaitForSeconds(2f);
        SpawnItems();
        opened = true;
    }

    IEnumerator SpawnMultiple()
    {
        for(int i = 0; i < SpawnAmount; i++)
        {
            if(ingredients[(int)spawnIngredient] != null)
            {
                GameObject item = Instantiate(ingredients[(int)spawnIngredient], spawnPoint.position, Quaternion.LookRotation(transform.forward));
                IngredientPickup ing = item.GetComponent<IngredientPickup>();
                if (ing != null)
                {
                    ing.EnableIngredient();
                }

                item.GetComponent<Rigidbody>().AddRelativeForce(new Vector3(Random.Range(-100f, 100f), 250f, 200f));
                yield return new WaitForSeconds(1f);
            }            
        }
    }
}
