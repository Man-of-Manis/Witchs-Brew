using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SplineMesh
{
    [ExecuteInEditMode]
    [RequireComponent(typeof(Spline))]
    public class SplinePlacement : MonoBehaviour
    {
        [Header("Prefabs")]
        public GameObject length;
        public GameObject joint;
        public GameObject leaf;

        [Header("Spawning Settings")]
        public int spawnAmountPerUnit;
        private float unitsPerSpawn;
        public Vector3 localJointOffset;
        public float jointAnchorOffset = 0.25f;
        public bool useJointObject = true;

        [Header("Leafe Spawn Settings")]
        public bool useLeaves;    
        
        [Range(0f, 100f)]
        public float leafSpawnChance = 85f;

        [Tooltip("If True, the leaf's Z axis will point in positive Z.")]
        public bool leafDirection = true;
        public bool randomZRotation;

        public float maxRandomXPosition = 0.15f;
        public float maxRandomXRotation = 15f;
        public float maxRandomYRotation = 45f;
        public float YPosition = 0.15f;
        public float leafScale = 1f;

        [Header("Multi-Vine")]
        public bool useMultiVine;
        public ConfigurableJoint childJoint;

        [Header("Joint Component")]
        public bool freezeLastJoint;
        //public bool openEndedJoint;

        private Spline spline;
        private List<GameObject> objects = new List<GameObject>();

        private void OnEnable()
        {
            spline = GetComponent<Spline>();          
        }

        public void DestroyInstantiatedChildren()
        {
            StartCoroutine(DestroyChildren());
        }

        /// <summary>
        /// Spawns the Length, Joint, and Leaf of the vine.
        /// </summary>
        public void ObjectPlacement()
        {
            Debug.Log("Creating Vines");

            if(transform.childCount == spawnAmountPerUnit)
            {
                return;
            }

            objects.Clear();

            DestroyInstantiatedChildren();

            unitsPerSpawn = 1f / spawnAmountPerUnit;
            
            int SpawnAmount = Mathf.RoundToInt(spawnAmountPerUnit * spline.Length);

            //Debug.Log(spline.nodes.Count + " / " + spline.Length + " / " + SpawnAmount);

            float position = 0;

            for (int i = 0; i < SpawnAmount; i++)
            {
                position += unitsPerSpawn;

                //Debug.Log(position);

                if (position > (spline.Length))
                {
                    Debug.Log("Too Many");
                    return;
                }

                CurveSample sample = spline.GetSampleAtDistance(position);

                #region Lengths
                GameObject spawn = Instantiate(length, transform);
                spawn.name = length.name + "_Spawn_" + i;
                spawn.transform.localPosition = sample.location;
                spawn.transform.localRotation = sample.Rotation;
                spawn.SetActive(true);
                spawn.AddComponent<Burn>();
                #endregion

                if (useMultiVine && ((position + unitsPerSpawn) > spline.Length))
                {
                    for(int j = 0; j < spawn.transform.childCount; j++)
                    {
                        spawn.transform.GetChild(j).gameObject.SetActive(false);
                    }

                    objects.Add(spawn);
                    return;
                }

                #region Joints
                if (useJointObject && i != (SpawnAmount - 1))
                {
                    GameObject jointSpawn = Instantiate(joint, spawn.transform);
                    jointSpawn.name = joint.name + "_Joint_" + i;
                    jointSpawn.transform.localPosition = localJointOffset;
                    jointSpawn.transform.localRotation = sample.Rotation;
                    jointSpawn.SetActive(true);
                }
                #endregion

                #region Leaves
                if (useLeaves && i != 0)
                {
                    if(Random.value <= (leafSpawnChance / 100f))
                    {
                        GameObject leafSpawn = Instantiate(leaf, spawn.transform);
                        leafSpawn.name = leaf.name + "_Leaf_" + i;
                        
                        if(randomZRotation)
                        {
                            leafSpawn.transform.localEulerAngles += new Vector3(0f, 0f, Random.Range(-180f, 180f));
                        }
                        /*
                        if (!leafDirection)
                        {
                            leafSpawn.transform.localEulerAngles += new Vector3(0f, 180f, 0f);
                            //leafSpawn.transform.localEulerAngles += new Vector3(0f, (Random.Range(-maxRandomYRotation, maxRandomYRotation) + (leafDirection ? 0f : 180f)), 0f);
                        }
                        */
                        leafSpawn.transform.localEulerAngles += new Vector3(0f, (Random.Range(-maxRandomYRotation, maxRandomYRotation) + (leafDirection ? 0f : 180f)), 0f);

                        leafSpawn.transform.localPosition = Quaternion.Euler(leafSpawn.transform.localEulerAngles) * (Vector3.up * YPosition);
                        leafSpawn.transform.localPosition += Vector3.forward * Random.Range(-maxRandomXPosition, maxRandomXPosition);
                        leafSpawn.transform.localEulerAngles += new Vector3(Random.Range(-maxRandomXRotation, maxRandomXRotation), 0f, 0f);
                        leafSpawn.transform.localScale = Vector3.one * leafScale;
                        leafSpawn.SetActive(true);
                    }                    
                }
                #endregion

                objects.Add(spawn);
            }
        }

        /// <summary>
        /// Sets up Rigidbodys and Joints for instantiated objects
        /// </summary>
        public void ConnectJoints()
        {
            ConfigurableJoint joint = null;

            for(int i = 0; i < objects.Count; i++)
            {
                Rigidbody nextRB = objects[i].GetComponent<Rigidbody>();

                if(i == 0 || (i == (objects.Count - 1) && freezeLastJoint))
                {
                    nextRB.constraints = RigidbodyConstraints.FreezeAll;
                }
                else
                {
                    nextRB.constraints = RigidbodyConstraints.None;
                }

                if(useMultiVine && childJoint != null)
                {
                    if (i == (objects.Count - 1))
                    {
                        childJoint.connectedBody = nextRB;
                    }
                }
                

                if(joint != null)
                {
                    joint.connectedBody = nextRB;
                    joint.anchor = new Vector3(joint.anchor.x, joint.anchor.y, jointAnchorOffset);
                    joint.connectedAnchor = new Vector3(joint.anchor.x, joint.anchor.y, -jointAnchorOffset);
                }

                joint = objects[i].GetComponent<ConfigurableJoint>();
                /*
                if(openEndedJoint && i == (objects.Count - 1))
                {
                    joint.anchor = new Vector3(joint.anchor.x, joint.anchor.y, jointAnchorOffset);
                    joint.connectedAnchor = new Vector3(joint.anchor.x, joint.anchor.y, -jointAnchorOffset);
                }
                */
            }
            /*
            if(!openEndedJoint)
            {
                DestroyImmediate(joint);
            }
            */

            DestroyImmediate(joint);
        }

        IEnumerator DestroyChildren()
        {
            for (int i = transform.childCount - 1; i >= 0; i--)
            {
                DestroyImmediate(transform.GetChild(i).gameObject);
            }
            yield return null;
        }
    }
}