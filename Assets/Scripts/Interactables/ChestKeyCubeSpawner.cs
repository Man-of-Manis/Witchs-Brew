using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class ChestKeyCubeSpawner : MonoBehaviour, IChest
{
    [Header("Spawn Type")]
    [SerializeField] private KeyCubeColor keyCubeSpawnType;
    [Header("Prefabs")]
    [SerializeField] private GameObject[] keyCubes;
    [Header("Spawn")]
    [SerializeField] private Transform spawnPoint;

    [Header("Spawned Key Cube")]
    [SerializeField] private GameObject spawnedKeyCube;

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

    private void SpawnCube()
    {
        spawnedKeyCube = Instantiate(keyCubes[(int)keyCubeSpawnType], spawnPoint.position, Quaternion.LookRotation(transform.forward));        
        spawnedKeyCube.GetComponent<Rigidbody>().AddRelativeForce(new Vector3(Random.Range(-100f, 100f), 250f, 200f));

        KeyCube cube = spawnedKeyCube.GetComponent<KeyCube>();

        if(cube != null)
        {
            cube.Spawner = this;
        }

        opened = true;
    }

    public void ResetChest()
    {
        spawnedKeyCube = null;
        Animator anim = gameObject.GetComponent<Animator>();
        anim.SetTrigger("Close");
        opened = false;
    }

    IEnumerator Unlock()
    {
        Animator anim = gameObject.GetComponent<Animator>();
        anim.SetTrigger("Open");
        GetComponent<AudioSource>().Play();
        yield return new WaitForSeconds(2f);
        SpawnCube();
        co = null;
    }
}
