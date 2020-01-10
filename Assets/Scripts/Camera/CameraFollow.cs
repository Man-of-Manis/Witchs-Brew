using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class CameraFollow : MonoBehaviour
{
    [Header("Properties")]
    public float cameraMoveSpeed = 120.0f;
    public float clampAngle = 80.0f;
    public float inputSensitivity = 150.0f;   
    
    [Header("Inputs")]
    public Vector2 mouse;
    public Vector2 RStick;

    public bool useMouse = false;

    [Header("Cameras")]
    public GameObject centerCam;
    public GameObject leftCam;
    public GameObject rightCam;

    [Header("Camera Postions")]
    public Vector3 centerCamPos;
    public Vector3 leftCamPos;
    public Vector3 rightCamPos;

    public Vector3 cameraOffset;

    private float finalInputX;
    private float finalInputY;
    float rotY = 0.0f;
    float rotX = 0.0f;

    [SerializeField] private Transform cameraFollowObj;
    public GameObject playerObj;
    private PlayerInput m_Input;

    void Awake()
    {
        m_Input = FindObjectOfType<PlayerInput>();
    }

    // Start is called before the first frame update
    void Start()
    {
        Vector3 cameraRot = transform.localRotation.eulerAngles;
        if(playerObj != null)
        {
            Vector3 playerRot = playerObj.transform.localRotation.eulerAngles;
            rotY = playerRot.y;
        }

        cameraFollowObj = GameManager.Instance.player.transform.Find("COM_Target");


        rotX = cameraRot.x;

        centerCam.transform.localPosition = centerCamPos;
        leftCam.transform.localPosition = leftCamPos;
        rightCam.transform.localPosition = rightCamPos;

        if(useMouse)
        {
            //Cursor.visible = false;
            //Cursor.lockState = CursorLockMode.Locked;
        }
    }

    void PlayerInputs()
    {
        
        if(useMouse)
        {
            mouse.x = Input.GetAxis("Mouse X");
            mouse.y = Input.GetAxis("Mouse Y");
        }

        else
        {
            Vector2 moveInput = m_Input.LookInput;
            RStick.x = moveInput.x;
            RStick.y = moveInput.y;
        }
        
        /*
        mouse.x = Input.GetAxis("Mouse X");
        mouse.y = Input.GetAxis("Mouse Y");

        Vector2 moveInput = m_Input.CameraInput;
        RStick.x = moveInput.x;
        RStick.y = moveInput.y;
        */
        finalInputX = mouse.x + RStick.x;
        finalInputY = mouse.y + RStick.y;

        rotY += finalInputX * inputSensitivity * Time.deltaTime;
        rotX += finalInputY * inputSensitivity * Time.deltaTime;

        rotX = Mathf.Clamp(rotX, -clampAngle, clampAngle);

        Quaternion localRotation = Quaternion.Euler(rotX, rotY, 0.0f);
        transform.rotation = localRotation;

        /*
        if(playerObj != null)
        {
            playerObj.transform.rotation = Quaternion.Euler(0.0f, rotY, 0.0f);
        }
        */
    }

    void LateUpdate()
    {
        PlayerInputs();
        AimingSide();
        CameraUpdater();
    }

    public void PlayerReset(float y)
    {
        rotY = y;
        rotX = 0f;
    }

    void CameraUpdater()
    {
        float step = cameraMoveSpeed * Time.deltaTime;
        transform.position = Vector3.MoveTowards(transform.position, cameraFollowObj.position + cameraOffset, step);
    }

    void AimingSide()
    {
        if(m_Input.SwitchAimSide)
        {
            rightCam.SetActive(!rightCam.activeSelf);
            Debug.Log("Aiming cam has swapped sides.");
        }
    }
}
