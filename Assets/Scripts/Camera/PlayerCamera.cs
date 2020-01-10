using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerCamera : MonoBehaviour
{
    //public Transform platformLookat;
    public Transform camTransform;
    public Transform player;
    public Transform aimLookat;
    public Transform playerArm;

    //public Vector3 platformCameraOffset;
    //public Vector3 otherCameraOffset;

    private Camera cam;
    public float Y_ANGLE_MIN = 0.0f;
    public float Y_ANGLE_MAX = 50.0f;
    public float aimingDistance = 1.2f;
    public float platformDistance = 5.0f;
    public float currentX = 0.0f;
    public float currentY = 0.0f;
    public float aimingSensivityX = 4.0f;
    public float aimingSensivityY = 1.0f;
    public float platformSensivityX = 4.0f;
    public float platformSensivityY = 1.0f;
    public Quaternion originalRotation;
    public Quaternion currentRotation;

    public bool aiming = false;

    private void Start()
    {
        //camTransform = transform;
        cam = Camera.main;
        //originalRotation = player.rotation;
    }

    void OnEnable()
    {
        currentRotation = camTransform.rotation;
        currentRotation.x = 0f;
        currentRotation.z = 0f;
        player.rotation = currentRotation;
    }

    private void FixedUpdate()
    {
        PlayerInput();
        CameraPosition();

    }

    void PlayerInput()
    {
        aiming = Input.GetAxisRaw("Fire2") > 0.1f;
    }

    void CameraPosition()
    {
        currentX += Input.GetAxis("Mouse X") * aimingSensivityX;
        currentY -= Input.GetAxis("Mouse Y") * aimingSensivityY;

        currentY = Mathf.Clamp(currentY, Y_ANGLE_MIN, Y_ANGLE_MAX);

        Quaternion rotation = Quaternion.Euler(currentY, currentX, 0);
        Quaternion rotationY = Quaternion.Euler(currentY, 0, 0);
        Quaternion rotationX = Quaternion.Euler(0, currentX, 0);

        camTransform.localRotation = rotationY;
        player.rotation = rotationX;
        //camTransform.LookAt(aimLookat.position);
        /*
        currentX += Input.GetAxis("Mouse X") * aimingSensivityX;
        currentY -= Input.GetAxis("Mouse Y") * aimingSensivityY;

        currentY = Mathf.Clamp(currentY, Y_ANGLE_MIN, Y_ANGLE_MAX);

        Vector3 dir = new Vector3(0, 0, -aimingDistance);
        Quaternion rotation = Quaternion.Euler(currentY, currentX, 0);
        Quaternion rotationY = Quaternion.Euler(currentY, 0, 0);
        Quaternion rotationX = Quaternion.Euler(0, currentX, 0);
        camTransform.position = aimLookat.position + rotation * dir;
        camTransform.position = rotation * dir;

        playerArm.localRotation = rotationY;
        player.rotation = rotationX;
        camTransform.LookAt(aimLookat.position);
    */
        /*
            currentX += Input.GetAxis("Mouse X") * platformSensivityX;
            currentY -= Input.GetAxis("Mouse Y") * platformSensivityY;

            currentY = Mathf.Clamp(currentY, Y_ANGLE_MIN, Y_ANGLE_MAX);

            Quaternion rotationX = Quaternion.Euler(0, currentX, 0);

            Vector3 dir = new Vector3(0, 0, -platformDistance);
            Quaternion rotation = Quaternion.Euler(currentY, currentX, 0);
            //camTransform.position = platformLookat.position + platformCameraOffset + otherCameraOffset + rotation * dir;
            camTransform.position =  rotation * dir;
            player.rotation = rotationX;
            //camTransform.LookAt(platformLookat.position + platformCameraOffset);
            */
    }
}
