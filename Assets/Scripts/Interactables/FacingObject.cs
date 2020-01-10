using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FacingObject : MonoBehaviour
{
    private Transform player;
    public Transform entrance;

    public bool FacingTarget
    {
        get { return facing; }
    }

    protected bool facing;
    protected bool used;

    // Start is called before the first frame update
    void Start()
    {
        player = GameManager.Instance.FollowCam.transform;
    }

    // Update is called once per frame
    void Update()
    {
        facing = Witch.FacingTarget((entrance != null ? entrance : transform), player);
    }
}
