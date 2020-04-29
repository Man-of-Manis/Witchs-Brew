using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class GiantDoorOpener : MonoBehaviour
{
    [SerializeField] GameObject[] specialCubes = new GameObject[6];
    [SerializeField] Transform[] doors = new Transform[2];
    private bool opened;

    // Start is called before the first frame update
    void Start()
    {
        for(int i = 0; i < doors.Length; i++)
        {
            doors[i] = transform.GetChild(i);
        }
    }

    // Update is called once per frame
    void Update()
    {
        //AttemptOpening();
    }

    public void AttemptOpening()
    {
        for(int i = 0; i < specialCubes.Length; i++)
        {
            if(i < 3)
            {
                specialCubes[i] = doors[0].GetChild(0).GetComponent<SpecialCubeHolder>().specialcubes[i];
            }
            else
            {
                specialCubes[i] = doors[1].GetChild(0).GetComponent<SpecialCubeHolder>().specialcubes[i - 3];
            }
        }

        if(specialCubes.All(x => x != null) && !opened)
        {
            OpenDoors();
            opened = true;
        }

        else if(specialCubes.Any(x => x == null))
        {
            Debug.Log("Not all cubes have been collected.");
        }
    }

    private void OpenDoors()
    {
        for(int i = 0; i < doors.Length; i++)
        {
            doors[i].GetComponent<Animator>().SetTrigger("Open");
        }
    }
}
