using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//[ExecuteInEditMode]
public class GameManager : MonoBehaviour
{
    [Header("References")]
    public GameObject player;
    public PlayerStats stats;    
    public PlayerAudio playerAudioScript;
    public AudioSource pAudio;
    public Camera MainCamera;

    [Header("Prefabs")]
    public GameObject PlayerCameraUIPrefab;
    public GameObject CameraSystemPrefab;

    public static GameManager Instance;

    protected Transform m_PlayerCOM;
    protected PlayerUIManager m_PlayerCameraUI;
    protected GameObject m_CameraSystem;
    protected CameraFollow m_CameraFollow;
    protected Inventory m_Inventory;

    private GameObject TechnicalObjects;

    public Transform PlayerCOM
    {
        get
        {
            return m_PlayerCOM;
        }
    }

    public CameraFollow FollowCam
    {
        get
        {
            return m_CameraFollow;
        }
    }

    public PlayerUIManager UIManager
    {
        get
        {
            return m_PlayerCameraUI;
        }
    }

    public Inventory Inventory
    {
        get
        {
            return m_Inventory;
        }
        private set
        {
            m_Inventory = value;
        }
    }

    // Start is called before the first frame update
    void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
        }
        else
        {
            DestroyImmediate(gameObject);
        }

        Initialized();

        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Confined;
    }

    private void Initialized()
    {
        TechnicalObjects = GameObject.Find("-----Technical Objects-----") == null
                    ? new GameObject("-----Technical Objects-----")
                    : GameObject.Find("-----Technical Objects-----");



        m_PlayerCameraUI = FindObjectOfType<PlayerUIManager>() == null
            ? Instantiate(PlayerCameraUIPrefab, TechnicalObjects.transform).GetComponent<PlayerUIManager>()
            : FindObjectOfType<PlayerUIManager>();

        m_CameraSystem = GameObject.FindGameObjectWithTag("CameraSystem") == null
            ? Instantiate(CameraSystemPrefab, TechnicalObjects.transform)
            : GameObject.FindGameObjectWithTag("CameraSystem");


        player = GameObject.FindGameObjectWithTag("Player");
        m_PlayerCOM = player.transform.Find("COM_Target");
        m_CameraFollow = FindObjectOfType<CameraFollow>();
        stats = GetComponent<PlayerStats>();
        playerAudioScript = player.GetComponent<PlayerAudio>();
        pAudio = player.GetComponent<AudioSource>();
        MainCamera = GameObject.FindGameObjectWithTag("MainCamera").GetComponent<Camera>();
        Inventory = GetComponent<Inventory>();
    }
}
