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

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(spawnedChickens.Any(x => x == null))
        {
            for(int i = 0; i < spawnedChickens.Count(); i++)
            {
                if(spawnedChickens[i] == null)
                {
                    spawnedChickens[i] = Instantiate(chickenPrefab, spawnPoint.position, Quaternion.identity);
                    spawnedChickens[i].GetComponent<Rigidbody>().AddForce(
                        new Vector3(Random.Range(-launchForce.x, launchForce.x), launchForce.y, Random.Range(-launchForce.z, launchForce.z)), ForceMode.Impulse);
                }                
            }
        }
    }
}
