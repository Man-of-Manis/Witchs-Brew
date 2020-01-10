using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CorruptionArea : MonoBehaviour
{
    public enum CorruptionAmount { None, Little, Middle, Full}

    [Header("Corruption")]
    public CorruptionAmount CorruptionState = (CorruptionAmount) 3;
    public List<GameObject> corruptionBeings = new List<GameObject>();

    public bool FacingTarget
    {
        get { return facing; }
    }

    [Header("Variables")]
    [SerializeField] private float[] areaSize = { 0f, 0.6f, 1.2f, 1.8f};
    [SerializeField] private int[] particleRate = { 0, 100, 200, 300};
    [SerializeField] private float[] particleLife = { 0f, 4f, 5f, 6f };

    [Header("Components")]
    [SerializeField] private SphereCollider area;
    [SerializeField] private ParticleSystem fog;

    private Transform player;

    protected bool facing;

    private void OnValidate()
    {
        State();
    }

    // Start is called before the first frame update
    void Start()
    {
        //Get corruption simulation
        player = GameManager.Instance.FollowCam.transform;
    }

    // Update is called once per frame
    void Update()
    {
        if(!Witch.CloseToTarget(transform, player))
        {
            facing = Witch.FacingTarget(transform, player);
        }

        else
        {
            facing = true;
        }
    }

    private void State()
    {
        var psm = fog.main;
        var pse = fog.emission;
        psm.startLifetime = particleLife[(int)CorruptionState];
        pse.rateOverTime = particleRate[(int)CorruptionState];
        area.radius = areaSize[(int)CorruptionState];
        
    }
}
