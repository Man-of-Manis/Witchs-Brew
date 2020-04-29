using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum KeyCubeColor { Red, Orange, Yellow, Green, Blue, Purple };

public class KeyCube : MonoBehaviour, IItems
{
    public KeyCubeColor KeyColor
    {
        get { return keyCubeType; }
    }    

    public ChestKeyCubeSpawner Spawner
    {
        get { return cubeSpawner; }
        set { cubeSpawner = value; }
    }

    [SerializeField] private KeyCubeColor keyCubeType;
    private ChestKeyCubeSpawner cubeSpawner;

    void OnDestroy()
    {
        if(Spawner != null)
        {
            Spawner.ResetChest();
        }        
    }

    public void Killbox()
    {
        Destroy(this.gameObject);
    }
}
