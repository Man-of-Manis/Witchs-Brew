using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum KeyCubeColor { Red = 0, Orange = 1, Yellow = 2, Green = 3, Blue = 4, Purple = 5 };

public class KeyCube : MonoBehaviour, IItems
{
    [SerializeField] private KeyCubeColor keyCubeType;
    private ChestKeyCubeSpawner cubeSpawner;

    /// <summary>
    /// Gets the color of the KeyCube.
    /// </summary>
    public KeyCubeColor KeyColor
    {
        get { return keyCubeType; }
    }    

    /// <summary>
    /// Gets and Sets the chest the KeyCube spawned from.
    /// </summary>
    public ChestKeyCubeSpawner Spawner
    {
        get { return cubeSpawner; }
        set { cubeSpawner = value; }
    }    

    /// <summary>
    /// Resets the chest the cube spawned from and destroys the cube.
    /// </summary>
    public void Killbox()
    {
        if (Spawner != null)
        {
            Spawner.ResetChest();
        }

        Destroy(this.gameObject);
    }

    /// <summary>
    /// Destroys KeyCube when added to satchel.
    /// </summary>
    public void AddToSatchel()
    {
        Destroy(this.gameObject);
    }
}
