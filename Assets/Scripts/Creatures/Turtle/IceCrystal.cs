using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IceCrystal : MonoBehaviour
{
    [SerializeField] private GameObject turtlePrefab;
    [SerializeField] private Transform turtleSpawnPoint;
    [SerializeField] private GameObject spawnedTurtle;
    [SerializeField] private bool spawnTurtle;

    private void Update()
    {
        if (spawnedTurtle == null && spawnTurtle)
        {
            spawnedTurtle = Instantiate(turtlePrefab, turtleSpawnPoint.position, Quaternion.identity);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Turtle"))
        {
            TurtleMove turtle = other.GetComponent<TurtleMove>();

            if(turtle != null)
            {
                turtle.elementState = Creatures.ElementalState.Elemental;
            }
        }
    }
}
