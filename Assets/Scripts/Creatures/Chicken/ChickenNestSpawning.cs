using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class ChickenNestSpawning : MonoBehaviour
{
    [SerializeField] private GameObject chickenPrefab;
    [SerializeField] private GameObject[] spawnedChickens = new GameObject[4];
    [SerializeField] private Transform spawnPoint;
    [SerializeField] private Vector3 launchForce;

    void Update()
    {
        ChickenSpawn();
    }

    /// <summary>
    /// Checks if any of the spawned chickens is null and spawns new ones.
    /// </summary>
    private void ChickenSpawn()
    {
        if (spawnedChickens.Any(x => x == null))
        {
            for (int i = 0; i < spawnedChickens.Count(); i++)
            {
                if (spawnedChickens[i] == null)
                {
                    //Chicken Respawning sound (OneShot)
                    FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.chicken.chickenEggCrack, gameObject);

                    spawnedChickens[i] = Instantiate(chickenPrefab, spawnPoint.position, Quaternion.identity);
                    spawnedChickens[i].GetComponent<Rigidbody>().AddForce(
                        new Vector3(Random.Range(-launchForce.x, launchForce.x), launchForce.y, Random.Range(-launchForce.z, launchForce.z)), ForceMode.Impulse);
                }
            }
        }
    }
}
