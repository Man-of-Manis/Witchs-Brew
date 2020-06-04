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

    /// <summary>
    /// Starts coroutine to open chest.
    /// </summary>
    public void Activate()
    {
        if (!opened)
        {
            if (co != null)
            {
                StopCoroutine(co);
            }

            co = StartCoroutine(Unlock());

            opened = true;
        }        
    }

    /// <summary>
    /// Resets chest to be opened again.
    /// </summary>
    public void ResetChest()
    {
        spawnedKeyCube = null;
        Animator anim = gameObject.GetComponent<Animator>();
        anim.SetTrigger("Close");
        opened = false;
    }
    
    /// <summary>
    /// Spawns new cube from chest by shooting it out in a random forward direction.
    /// </summary>
    public void SpawnCube()
    {
        spawnedKeyCube = Instantiate(keyCubes[(int)keyCubeSpawnType], spawnPoint.position, Quaternion.LookRotation(-transform.right));        
        spawnedKeyCube.GetComponent<Rigidbody>().AddRelativeForce(new Vector3(Random.Range(-100f, 100f), 250f, 200f));

        KeyCube cube = spawnedKeyCube.GetComponent<KeyCube>();

        if(cube != null)
        {
            cube.Spawner = this;
        }

        co = null;
    }
    
    /// <summary>
    /// Coroutine to open chest and spawn KeyCube.
    /// </summary>
    /// <returns></returns>
    IEnumerator Unlock()
    {
        Animator anim = gameObject.GetComponent<Animator>();
        anim.SetTrigger("Open");
        yield return null;
    }
}
