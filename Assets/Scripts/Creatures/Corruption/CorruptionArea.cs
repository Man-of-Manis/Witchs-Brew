using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CorruptionArea : MonoBehaviour
{
    public enum CorruptionAmount { None, Little, Middle, Full}

    [Header("Corruption")]
    public CorruptionAmount CorruptionState = (CorruptionAmount) 3;
    public List<GameObject> corruptionBeings = new List<GameObject>();
    public CorruptionManager corruptMan;

    [Header("Variables")]
    [SerializeField] private float[] areaSize = { 0f, 0.6f, 1.2f, 1.8f};
    [SerializeField] private int[] particleRate = { 0, 100, 200, 300};
    [SerializeField] private float[] particleLife = { 0f, 4f, 5f, 6f };

    [Header("Components")]
    public SphereCollider Area;
    [SerializeField] private ParticleSystem fog;

    [Header("Player")]
    public float playerRayDist = 50f;
    public LayerMask layer;
    protected bool facing;
    private Transform player;

    public bool FacingTarget
    {
        get { return facing; }
    }

    private void OnValidate()
    {
        State();
    }

    void Start()
    {
        //Get corruption simulation
        player = GameManager.Instance.FollowCam.transform;
        corruptMan = GetComponentInParent<CorruptionManager>();
    }

    // Update is called once per frame
    void Update()
    {
        FacingPlayer();
    }

    private void FacingPlayer()
    {
        if (Witch.WithinDistance(player.transform.position, transform.position, 25f))
        {
            if (PlayerRayCast())
            {
                if (!Witch.CloseToTarget(transform, player))
                {
                    facing = Witch.FacingTarget(transform, player);
                }

                else
                {
                    facing = true;
                }
            }
            else
            {
                facing = false;
            }
        }
        else
        {
            facing = false;
        }
    }

    private void State()
    {
        var psm = fog.main;
        var pse = fog.emission;
        psm.startLifetime = particleLife[(int)CorruptionState];
        pse.rateOverTime = particleRate[(int)CorruptionState];
        Area.radius = areaSize[(int)CorruptionState];        
    }

    private bool PlayerRayCast()
    {
        if (Physics.Raycast(transform.position + Vector3.up, Witch.GetFlatDirection(GameManager.Instance.player.transform.position, transform.position), out RaycastHit hit, playerRayDist, layer))
        {
            return hit.collider.gameObject.CompareTag("Player");
        }

        return false;
    }
}
