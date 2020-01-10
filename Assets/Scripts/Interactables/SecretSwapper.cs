using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SecretSwapper : MonoBehaviour
{
    public GameObject entrance;
    public FacingObject entranceFacing;
    public LivingWall lWall;

    public List<FacingObject> walls = new List<FacingObject>();

    private Vector3 entrancePosition;
    private Vector3 entranceRotation;

    private Vector3 wallPosition;
    private Vector3 wallRotation;

    private float timer;
    public float swapTimer = 3f;

    private bool used;

    // Update is called once per frame
    void Update()
    {
        used = lWall == null;

        if(!used)
        {
            if (!entranceFacing.FacingTarget)
            {
                timer += Time.deltaTime;

                if (timer >= swapTimer)
                {
                    Swap();
                    timer = 0f;
                }
            }
        }
    }

    private void Swap()
    {
        List<int> notFacing = new List<int>();

        for(int i = 0; i < walls.Count; i++)
        {
            if(!walls[i].FacingTarget)
            {
                notFacing.Add(i);
            }
        }

        int swapInt = Random.Range(0, notFacing.Count);

        wallPosition = walls[notFacing[swapInt]].transform.position;
        wallRotation = walls[notFacing[swapInt]].transform.eulerAngles;

        entrancePosition = entrance.transform.position;
        entranceRotation = entrance.transform.eulerAngles;

        walls[notFacing[swapInt]].transform.position = entrancePosition;
        walls[notFacing[swapInt]].transform.eulerAngles = entranceRotation;

        entrance.transform.position = wallPosition;
        entrance.transform.eulerAngles = wallRotation;
    }
}
