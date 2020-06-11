using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerPotionWheel : MonoBehaviour
{
    public float deadzone = 0.45f;

    public GameObject Wheel;
    public RectTransform pointer;
    public Sprite[] unhighlightedPotions = new Sprite[6];
    public Sprite[] highlightedPotions = new Sprite[6];

    private Image[] potionNodes = new Image[6];


    public int Selection
    {
        get
        {
            return Transition[NodeSelection];
        }
    }

    private int CraftingSelection
    {
        get
        {
            return Transition[newNodeSelection];
        }
    }

    public int BottleSelection(int bottle)
    {
        return Transition[bottle];
    }

    private RectTransform[] WheelNodes = new RectTransform[6];
    private float nodeSize = 1.15f;
    private int NodeSelection = 0;
    private int newNodeSelection = 0;
    private bool wheelToggle = false;

    private PlayerInput m_Input;
    private ItemController itemCon;
    private PlayerPotionMixing pMix;

    /// <summary>
    /// The potion enum integer translated to the node integer.
    /// </summary>
    Dictionary<int, int> Transition = new Dictionary<int, int>()
    {
        {0, 0}, //White
        {1, 2}, //Yellow
        {2, 4}, //Blue
        {3, 5}, //Mega
        {4, 3}, //Green
        {5, 1}  //Red
    };

    /// <summary>
    /// The potion enum integer translated to the node integer.
    /// </summary>
    Dictionary<int, int> OppositeTransition = new Dictionary<int, int>()
    {
        {0, 0}, //White
        {1, 5}, //Red
        {2, 1}, //Yellow
        {3, 4}, //Green
        {4, 2}, //Blue
        {5, 3}  //Mega
    };

    /// <summary>
    /// The angle of the joystick in degrees corresponding to the node integer.
    /// </summary>
    Dictionary<int, Vector2> NodeRanges = new Dictionary<int, Vector2>()
    {
        {0, new Vector2(-30f, 30f) },
        {1, new Vector2(30f, 90f) },
        {2, new Vector2(90f, 150f) },
        {4, new Vector2(-150f, -90f) },
        {5, new Vector2(-90f, -30f) },
    };

    Dictionary<int, float> PointRotation = new Dictionary<int, float>()
    {
        {0, 0f},
        {1, -60f},
        {2, -120f},
        {3, 180f},
        {4, 120f},
        {5, 60f}
    };


    void Start()
    {
        Wheel = PlayerUIManager.Instance.Wheel;
        pointer = PlayerUIManager.Instance.WheelPointer.GetComponent<RectTransform>();

        if (Wheel != null)
        {
            Setup();
        }
    }

    void Update()
    {
        if(Wheel != null)
        {
            //PotionSelection();
            Debug.Log("Bad Y Button Pressed");
        }        
    }

    /// <summary>
    /// Initial node setup when the scene is loaded.
    /// </summary>
    private void Setup()
    {
        m_Input = GetComponent<PlayerInput>();
        itemCon = GetComponent<ItemController>();
        pMix = GetComponent<PlayerPotionMixing>();

        for (int i = 0; i < Wheel.transform.childCount; i++)
        {
            potionNodes[i] = Wheel.transform.GetChild(i).GetComponent<Image>();
        }

        /*
        for (int i = 0; i < Wheel.transform.childCount; i++)
        {
            WheelNodes[i] = Wheel.transform.GetChild(i).GetComponent<RectTransform>();
        }

        
        for (int i = 0; i < Wheel.transform.childCount; i++)
        {
            WheelNodes[i].localScale = i == NodeSelection ? new Vector3(nodeSize, nodeSize, nodeSize) : Vector3.one;
        }
        */
    }

    /// <summary>
    /// Gets player joystick input and sets the scale of the selected node.
    /// </summary>
    void PotionSelection()
    {
        if(m_Input.ToggleButton3)
        {
            Time.timeScale = 0.1f;
            Wheel.SetActive(true);

            float LSDeadzoneX = m_Input.LSInput.x > deadzone || m_Input.LSInput.x < -deadzone ? m_Input.LSInput.x : 0f;
            float LSDeadzoneY = m_Input.LSInput.y > deadzone || m_Input.LSInput.y < -deadzone ? m_Input.LSInput.y : 0f;

            float ang = Mathf.Atan2(LSDeadzoneX, LSDeadzoneY) * Mathf.Rad2Deg;
            float angl = Mathf.Atan2(m_Input.LSInput.x, m_Input.LSInput.y) * Mathf.Rad2Deg;

            if (new Vector2(LSDeadzoneX, LSDeadzoneY) != Vector2.zero)
            {
                if(itemCon.AvailablePotions[BottleSelection(Node(angl))] && itemCon.potionAmount[BottleSelection(Node(angl))] > 0)
                {
                    //NodeSelection = Node(ang);
                }

                newNodeSelection = Node(angl);

                pointer.rotation = Quaternion.Euler(new Vector3(0f, 0f, PointRotation[newNodeSelection]));

                for (int i = 0; i < Wheel.transform.childCount; i++)
                {
                    //WheelNodes[i].localScale = (i == newNodeSelection) ? new Vector3(nodeSize, nodeSize, nodeSize) : Vector3.one;
                    potionNodes[i].sprite = (i == newNodeSelection) ? highlightedPotions[Transition[i]] : unhighlightedPotions[Transition[i]];
                }
            }
        }

        else
        {
            Time.timeScale = 1.0f;
            Wheel.SetActive(false);

            newNodeSelection = NodeSelection;

            pointer.rotation = Quaternion.Euler(new Vector3(0f, 0f, PointRotation[newNodeSelection]));

            for (int i = 0; i < Wheel.transform.childCount; i++)
            {
                //WheelNodes[i].localScale = (i == newNodeSelection) ? new Vector3(nodeSize, nodeSize, nodeSize) : Vector3.one;
                potionNodes[i].sprite = (i == newNodeSelection) ? highlightedPotions[Transition[i]] : unhighlightedPotions[Transition[i]];
            }
        }

        ControllerButtons();

        TempKeyboardButtons();
        
    }
    
    void ControllerButtons()
    {
        if (m_Input.ToggleButton3 && m_Input.Button0)
        {
            //Select potion
            if (itemCon.AvailablePotions[CraftingSelection] && itemCon.potionAmount[CraftingSelection] > 0)
            {
                NodeSelection = newNodeSelection;
                m_Input.UntoggleButton3();
            }
            else
            {

            }
        }

        else if (m_Input.ToggleButton3 && m_Input.Button2)
        {
            //Craft potion
            pMix.CraftPotion(CraftingSelection);
            NodeSelection = newNodeSelection;
        }
    }
    

    void TempKeyboardButtons()
    {
        if(Input.GetKeyDown(KeyCode.Alpha1))
        {
            KeyPress(0);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            KeyPress(1);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            KeyPress(2);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            KeyPress(3);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha5))
        {
            KeyPress(4);
        }
        else if (Input.GetKeyDown(KeyCode.Alpha6))
        {
            KeyPress(5);
        }
    }

    void KeyPress(int potion)
    {
        pMix.CraftPotion(potion);
        NodeSelection = OppositeTransition[potion];
    }

    /// <summary>
    /// Returns node integer based on direction of left joystick.
    /// </summary>
    /// <param name="angle"> The angle of the left joystick. </param>
    /// <returns></returns>
    int Node(float angle)
    {
        for(int i = 0; i < Wheel.transform.childCount; i++)
        {
            if(i != 3)
            {
                if (angle > NodeRanges[i].x && angle <= NodeRanges[i].y)
                {
                    return i;
                }
            }            
        }

        return 3;
    }
}
