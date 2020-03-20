using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerLedgeDetection : MonoBehaviour
{
    public enum DetectionCondition { AlwaysDetect, DetectOnce };
    public enum JumpCondition {AlwaysJump, JumpWhenNotGrounded, JumpWhenGrounded};
    public JumpCondition jumpCondition;

    public float jumpSpeed = 5f;

    [Header("Ledge Detection")]    
    public DetectionCondition detectCondition;
    public bool showDebugLines;
    public float ledgeRayDist = 0.5f;
    public Vector3 ledgeDetectLocalOffset = new Vector3(0f, 1.5f, 0.5f);

    /*
    [Header("Orientation Detection")]
    public float orientationDetectRayDist = 1f;
    public Vector3 orientationDetectLocalPos = new Vector3(0f, 0.75f, 0.1f);
    */

    [Header("Layer Mask")]
    public LayerMask detectLayerMask;

    private bool metJumpCondition;
    private bool metDetectCondition;
    private bool usedLedgeJump;
    private Vector3 localLedgePos;
    private float ledgeDist;

    private PlayerMixamoController controller;

    // Start is called before the first frame update
    void Start()
    {
        controller = GetComponent<PlayerMixamoController>();
    }

    // Update is called once per frame
    void Update()
    {
        localLedgePos = transform.position + (transform.up * ledgeDetectLocalOffset.y) + (transform.forward * ledgeDetectLocalOffset.z);

        SetConditions();

        LedgeDetection();

        ResetJumpDetectCondition();

        DebugLines();
    }

    void LedgeDetection()
    {
        if(controller != null)
        {
            if(metJumpCondition && metDetectCondition)
            {
                if (Physics.Raycast(localLedgePos, -transform.up, out RaycastHit ledgeHit, ledgeRayDist, detectLayerMask))
                {
                    ledgeDist = ledgeHit.distance;
                    controller.m_VerticalSpeed = jumpSpeed;
                    usedLedgeJump = true;
                    Debug.Log("Grabbed ledge: " + ledgeHit.collider.name);
                }
                else
                {
                    ledgeDist = ledgeRayDist;
                }
            }
            else
            {
                ledgeDist = ledgeRayDist;
            }
        }
    }

    void SetConditions()
    {
        switch(jumpCondition)
        {
            case JumpCondition.AlwaysJump:
                metJumpCondition = true;
                break;
            case JumpCondition.JumpWhenNotGrounded:
                metJumpCondition = !controller.IsGrounded;
                break;
            case JumpCondition.JumpWhenGrounded:
                metJumpCondition = controller.IsGrounded;
                break;
        }

        switch(detectCondition)
        {
            case DetectionCondition.AlwaysDetect:
                metDetectCondition = true;
                break;
            case DetectionCondition.DetectOnce:
                metDetectCondition = !usedLedgeJump;
                break;
        }
    }

    void ResetJumpDetectCondition()
    {
        if(usedLedgeJump && controller.IsGrounded)
        {
            usedLedgeJump = false;
        }
    }

    void DebugLines()
    {
        if(showDebugLines)
        {
            Debug.DrawLine(localLedgePos, localLedgePos + (-transform.up * ledgeDist), Color.red);
        }        
    }
}
