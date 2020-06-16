using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public class PlayerItemPickup : MonoBehaviour
{
    public Transform pickup;
    public LayerMask pickupLayer;

    [Header("Pickup")]
    public Vector3 pickupPositionOffset;
    public Vector3 pickupHalfExtents;
    [SerializeField] private float minimumPickupDistance;
    [SerializeField] private LayerMask wallLayer;

    [Header("KeyCubes")]
    [SerializeField] private GameObject[] keyCubePrefabs;

    public GameObject[] KeyCubes
    {
        get { return keyCubePrefabs; }
    }

    [Header("Chests")]
    [SerializeField] private ChestKeyCubeSpawner[] chestSpawners = new ChestKeyCubeSpawner[6];

    private float pickupPositionDistance;
    private Vector3 pickupPosition;
    private Rigidbody pickupRB;

    [Header("Drop Off")]
    [SerializeField] private int dropOffPosAmount = 8;
    [SerializeField] private float dropOffDistance = 1f;

    [Header("References")]
    [SerializeField] private PlayerInput m_Input;
    [SerializeField] private KeyCubeUI keyCubeUI;
    private Animator anim;

    public event EventHandler OnChickenPickupHandler;
    public event EventHandler<bool> OnKeyCubePickupHandler;

    public Vector3 PickupDropPosition
    {
        get { return PositionDrop(); }
    }

    private void Start()
    {
        keyCubeUI = GameManager.Instance.UIManager.GetComponent<KeyCubeUI>();
        anim = GetComponent<Animator>();
    }

    void LateUpdate()
    {
        WallDetection();

        pickupPosition = transform.position + (transform.forward * pickupPositionDistance) + (Vector3.up * pickupPositionOffset.y);

        CurrentPickup();

        if(anim != null)
        {
            anim.SetBool("Pickup", pickup != null);
        }        
    }

    /// <summary>
    /// Boxcasts an area in front of the player to pick up objects.
    /// </summary>
    public void BoxCast()
    {
        if (pickup == null)
        {
            Collider[] pickups = Physics.OverlapBox(pickupPosition, pickupHalfExtents, transform.rotation, pickupLayer);

            if (pickups.Length > 0)
            {
                GameObject pick = null;
                float dist = float.MaxValue;

                for (int i = 0; i < pickups.Length; i++)
                {
                    float distance = Vector3.Distance(pickupPosition, pickups[i].transform.position);

                    if (distance < dist)
                    {
                        if (!pickups[i].gameObject.CompareTag("Turtle"))
                        {
                            pick = pickups[i].gameObject;
                            dist = distance;
                        }
                    }
                }

                PickUp(pick);

            }
            else
            {
                //Debug.Log("Overlap Nothing");
            }
        }
        else
        {
            DropOff();
        }
    }

    /// <summary>
    /// If pickup is not null, drops the current pickup.
    /// </summary>
    public void DropPickup()
    {
        if (pickup != null)
        {
            DropOff();
        }
    }

    public void AddToSatchel()
    {
        KeyCube cube = pickup.GetComponent<KeyCube>();

        if(cube != null)
        {
            //Debug.Log("Adding KeyCube to SatchelUI");
            keyCubeUI.AddKeyCube((int)cube.KeyColor);
            chestSpawners[(int)cube.KeyColor] = cube.Spawner;
            cube.AddToSatchel();
            OnKeyCubePickupHandler?.Invoke(this, true);
        }
    }

    public void RemoveFromSatchel()
    {
        bool available = false;
        int selection = -1;
        int addedCube = -1;
        KeyCube cube;

        if (pickup != null)
        {
            
            cube = pickup.GetComponent<KeyCube>();

            if (cube != null)
            {
                addedCube = (int)cube.KeyColor;
                keyCubeUI.AddKeyCube(addedCube);
                chestSpawners[addedCube] = cube.Spawner;
                cube.AddToSatchel();
                pickup = null;
                cube = null;
            }
            else
            {
                DropPickup(); //Drop pickup to the side so that KeyCube has room?
            }
        }        

        keyCubeUI.RemoveKeyCube(out available, out selection, addedCube);

        if(available && selection != addedCube)
        {
            pickup = Instantiate(keyCubePrefabs[selection], pickupPosition, transform.rotation).transform;
            pickup.GetComponent<Rigidbody>().isKinematic = true;
            
            cube = pickup.GetComponent<KeyCube>();

            if(cube != null)
            {
                cube.Spawner = chestSpawners[(int)cube.KeyColor];
            }
        }
    }

    /// <summary>
    /// Checks if there is a wall in front of the player and moves the pickup object back away from it.
    /// </summary>
    private void WallDetection()
    {
        if(Physics.SphereCast(transform.position + (Vector3.up * pickupPositionOffset.y), 0.125f, transform.forward, out RaycastHit hit, pickupPositionOffset.z, wallLayer))
        {
            if (hit.distance >= minimumPickupDistance)
            {
                pickupPositionDistance = hit.distance;
            }
            else
            {
                pickupPositionDistance = minimumPickupDistance;
            }
            
        }
        else
        {
            pickupPositionDistance = pickupPositionOffset.z;
        }
    }

    /// <summary>
    /// Sets the position and rotation of the current pickup.
    /// </summary>
    private void CurrentPickup()
    {
        if(pickup != null)
        {
            pickup.position = pickupPosition;
            pickup.rotation = transform.rotation;
        }
    }

    /// <summary>
    /// Picks up the given object.
    /// </summary>
    /// <param name="pick">Object to pick up.</param>
    private void PickUp(GameObject pick)
    {
        if (pick != null)
        {
            if (pick.gameObject.CompareTag("Chicken"))
            {
                OnChickenPickupHandler?.Invoke(this, null);
            }

            KeyCube cube = pick.GetComponent<KeyCube>();

            if (cube != null)
            {
                OnKeyCubePickupHandler?.Invoke(this, false);
                FMODUnity.RuntimeManager.PlayOneShotAttached("event:/Witch/Witch. pick up", gameObject);
            }

                pickup = pick.transform;
            pickup.GetComponent<Rigidbody>().isKinematic = true;

            //Colliders(false);

            //Debug.Log("Overlap Item: " + pick.name);
        }
    }

    /// <summary>
    /// Drops the currently help object.
    /// </summary>
    private void DropOff()
    {
        pickup.position = PositionDrop();

        pickup.GetComponent<Rigidbody>().isKinematic = false;
        //Colliders(true);
        pickup = null;

        //Debug.Log("Dropped Item");
    }

    /// <summary>
    /// Gets a position around the player to drop the picked up object.
    /// </summary>
    /// <returns>Returns an empty position.</returns>
    private Vector3 PositionDrop()
    {
        Vector3[] pos = OpenSpacePos();

        for (int i = 0; i < pos.Length; i++)
        {
            if (!RayToPos(transform.position + (Vector3.up * pickupPositionOffset.y), pos[i], i))
            {
                if (!CastAtPos(pos[i]))
                {
                    return pos[i];
                }
            }
        }

        return transform.position + Vector3.up * 2.5f;
    }

    /// <summary>
    /// Sets the enabled state of the pickup's colliders
    /// </summary>
    /// <param name="enableCollider"></param>
    private void Colliders(bool enableCollider)
    {
        Collider[] cols = pickup.GetComponents<Collider>();
        foreach (Collider col in cols)
        {
            col.enabled = enableCollider;
        }
    }

    /// <summary>
    /// Gets positions in a circle around the player to check for empty space.
    /// </summary>
    /// <returns></returns>
    private Vector3[] OpenSpacePos()
    {
        Vector3[] positions = new Vector3[dropOffPosAmount];

        for(int i = 0; i < dropOffPosAmount; i++)
        {
            float x = -Mathf.Cos((i * (360 / dropOffPosAmount) + 90 + transform.eulerAngles.y) * Mathf.Deg2Rad) * dropOffDistance;
            float z = -Mathf.Sin((i * (360 / dropOffPosAmount) + 270 + transform.eulerAngles.y) * Mathf.Deg2Rad) * dropOffDistance;

            positions[i] = new Vector3(transform.position.x + x, transform.position.y + pickupPositionOffset.y, transform.position.z + z);
        }

        return positions;
    }

    /// <summary>
    /// Checks if there is a wall between two points.
    /// </summary>
    /// <param name="from">Starting position.</param>
    /// <param name="to">End position.</param>
    /// <returns>Returns true if there is a wall.</returns>
    private bool RayToPos(Vector3 from, Vector3 to, int index)
    {
        if(Physics.Linecast(from, to, out RaycastHit hit, wallLayer ))
        {
            //Debug.Log("Index: " + index + ", Name: "+ hit.collider.name);
            return true;
        }

        return false;
    }

    /// <summary>
    /// Checks the space in a given position is empty.
    /// </summary>
    /// <param name="pos">The position in world space to check.</param>
    /// <returns>Returns true if the space is occupied.</returns>
    private bool CastAtPos(Vector3 pos)
    {
        if(Physics.CheckSphere(pos, 0.25f, wallLayer))
        {
            return true;
        }

        return false;
    }
    /*
    /// <summary>
    /// Draws the box area of the pickup BoxCast.
    /// </summary>
    private void OnDrawGizmos()
    {
        Gizmos.color = new Color(0.2f, 0.2f, 0.2f, 0.3f);
        Gizmos.DrawCube(pickupPosition, pickupHalfExtents);

        Gizmos.color = Color.yellow;
        Vector3[] pos = OpenSpacePos();

        for(int i = 0; i < pos.Length; i++)
        {
            Gizmos.DrawSphere(pos[i], 0.25f);
        }
    }
    */
}
