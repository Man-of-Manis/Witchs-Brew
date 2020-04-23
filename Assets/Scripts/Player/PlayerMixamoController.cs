using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class PlayerMixamoController : MonoBehaviour
{
    public float maxForwardSpeed = 8f;        // How fast the chracter can run.
    public float gravity = 20f;               // How fast the chracter accelerates downwards when airborne.
    public float jumpSpeed = 10f;             // How fast the chracter takes off when jumping.
    public bool useGravity = true;

    public Rigidbody playerRB;

    protected bool m_IsGrounded = true;            // Whether or not the chracter is currently standing on the ground.
    protected bool m_PreviouslyGrounded = true;    // Whether or not the chracter was standing on the ground last frame.
    protected bool m_ReadyToJump;                  // Whether or not the input state and the chracter are correct to allow jumping.
    protected float m_DesiredForwardSpeed;         // How fast the chracter aims be going along the ground based on input.
    public float m_ForwardSpeed;                // How fast the chracter is currently going along the ground.
    public float m_VerticalSpeed;               // How fast the chracter is currently moving up or down.

    public float Speed = 0f;
    private Vector2 Char_Movement;
    private bool PressedJump = false;
    private bool isJumping = false;
    private bool Aim = false;
    private bool Run = true;
    private bool rightShoulder = true;
    [HideInInspector] public bool SecondaryJump = false;
    [HideInInspector] public Vector3 externalMovement;

    private Animator animator;
    private Transform cam;
    private Transform aimCam;
    public Vector3 dir;
    public Vector3 smoothDir;
    Quaternion rot;
    Vector3 vel;
    public float smoothTurn = 0.1f;
    private PlayerInput m_Input;
    private CharacterController m_CharCtrl;
    private CameraFollow followCam;
    private Transform COMTarget;
    public float knockbackForceStart = 0.25f;
    private float knockbackForce;
    private Vector3 knockbackDirection;

    const float k_AirborneTurnSpeedProportion = 5.4f;
    const float k_GroundedRayDistance = 1f;
    const float k_JumpAbortSpeed = 10f;
    const float k_MinEnemyDotCoeff = 0.2f;
    const float k_InverseOneEighty = 1f / 180f;
    const float k_StickingGravityProportion = 0.3f;
    const float k_GroundAcceleration = 20f;
    const float k_GroundDeceleration = 25f;

    readonly int m_HashAirborneVerticalSpeed = Animator.StringToHash("AirborneVerticalSpeed");
    readonly int m_HashForwardSpeed = Animator.StringToHash("ForwardSpeed");
    readonly int m_HashAngleDeltaRad = Animator.StringToHash("AngleDeltaRad");
    readonly int m_HashTimeoutToIdle = Animator.StringToHash("TimeoutToIdle");
    readonly int m_HashGrounded = Animator.StringToHash("Grounded");

    //-----------------------------------------------------------------------------------------------

    // Start is called before the first frame update
    void Awake()
    {
        m_Input = GetComponent<PlayerInput>();
        m_CharCtrl = GetComponent<CharacterController>();
        animator = GetComponent<Animator>();
        //cam = FindObjectOfType<Camera>().transform.parent.transform;
        cam = GameObject.FindGameObjectWithTag("MainCamera").transform; //FindObjectOfType<Camera>().transform;
        aimCam = cam.transform.parent.transform;
        followCam = FindObjectOfType<CameraFollow>();
        COMTarget = transform.Find("COM_Target");
        playerRB = GetComponent<Rigidbody>();
    }

    private void Start()
    {
        SetPlayerRotation(transform.localEulerAngles.y, transform.localPosition);
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.L))
        {
            SetPlayerRotation(-90f, Vector3.zero);
        }

        Inputs();
        CameraAngle();
        Movement();

        //COMTargetChange();

        //Animations();
    }

    void FixedUpdate()
    {
        if (Input.GetKeyDown(KeyCode.K))
        {
            SetPlayerRotation(90f, Vector3.zero);
        }
        //Movement();
        CalculateForwardMovement();
        CalculateVerticalMovement();
    }

    public bool IsGrounded
    {
        get { return m_IsGrounded; }
    }

    protected bool IsMoveInput
    {
        get { return !Mathf.Approximately(m_Input.MoveInput.sqrMagnitude, 0f); }
    }

    private void Inputs()
    {
        Char_Movement = m_Input.MoveInput;

        if(Char_Movement.sqrMagnitude > 1f)
        {
            Char_Movement.Normalize();
        }

        Speed = Char_Movement.magnitude;

        Aim = m_Input.AimInput;

        //Run = m_Input.RunInput;
    }

    private void CameraAngle()
    {
        //if((Aim || m_Input.MakePotion) && rightShoulder)
        if (Aim && rightShoulder)
        {
            followCam.centerCam.SetActive(false);
        }

        else
        {
            followCam.centerCam.SetActive(true);
        }
    }

    private void COMTargetChange()
    {
        if(animator.GetBool("Craft_Potion"))
        {
            COMTarget.localPosition = Vector3.Lerp(COMTarget.localPosition, Vector3.zero, Time.deltaTime * 3f);
        }

        else
        {
            COMTarget.localPosition = Vector3.Lerp(COMTarget.localPosition, Vector3.up, Time.deltaTime * 3f);
        }
    }

    public void SetPlayerRotation(float newRotDirection, Vector3 newPos)
    {
        //Vector3 flatcam = Quaternion.AngleAxis(cam.eulerAngles.y, Vector3.up) * Vector3.forward;
        //dir = Quaternion.AngleAxis(newRotDirection, Vector3.up) * flatcam;
        //smoothDir = Vector3.SmoothDamp(smoothDir, dir, ref vel, smoothTurn);
        //rot = Quaternion.LookRotation(smoothDir, Vector3.up);
        transform.eulerAngles = new Vector3(0f, newRotDirection, 0f);
        transform.position = newPos;
        Debug.Log("Player has been reset");
    }

    private void Movement()
    {
        if(useGravity)
        {
            Debug.DrawRay(transform.position, dir, Color.red);

            //float angle = Vector2.Angle(Vector2.zero, Char_Movement.normalized);

            

            if (!Char_Movement.Equals(Vector2.zero) && !Aim)
            {
                float ang = Mathf.Atan2(Char_Movement.x, Char_Movement.y) * Mathf.Rad2Deg;

                Vector3 flatcam = Quaternion.AngleAxis(cam.eulerAngles.y, Vector3.up) * Vector3.forward;

                dir = Quaternion.AngleAxis(ang, Vector3.up) * flatcam;

                smoothDir = Vector3.SmoothDamp(smoothDir, dir, ref vel, smoothTurn);

                if (!smoothDir.sqrMagnitude.Equals(0f))
                {
                    rot = Quaternion.LookRotation(smoothDir, Vector3.up);

                    transform.rotation = rot;
                }
            }

            else if (Aim && m_IsGrounded)
            {
                Vector3 boxcam = Quaternion.AngleAxis(aimCam.eulerAngles.y, Vector3.up) * Vector3.forward;

                smoothDir = boxcam;

                rot = Quaternion.LookRotation(smoothDir, Vector3.up);

                transform.rotation = rot;
            }
        }        
    }

    // Called each physics step.
    void CalculateForwardMovement()
    {
        // Cache the move input and cap it's magnitude at 1.
        Vector2 moveInput = m_Input.MoveInput;
        if (moveInput.sqrMagnitude > 1f)
        {
            moveInput.Normalize();
        }
        // Calculate the speed intended by input.
        m_DesiredForwardSpeed = moveInput.magnitude * maxForwardSpeed;

        // Determine change to speed based on whether there is currently any move input.
        float acceleration = IsMoveInput ? k_GroundAcceleration : k_GroundDeceleration;

        // Adjust the forward speed towards the desired speed.
        m_ForwardSpeed = Mathf.MoveTowards(m_ForwardSpeed, m_DesiredForwardSpeed, acceleration * Time.deltaTime);

        // Set the animator parameter to control what animation is being played.
        //animator.SetFloat(m_HashForwardSpeed, m_ForwardSpeed);
    }

    // Called each physics step.
    void CalculateVerticalMovement()
    {
        // If jump is not currently held and the chracter is on the ground then she is ready to jump.
        if (!m_Input.JumpInput &&  m_IsGrounded)
        {
            m_ReadyToJump = true;
        }
           
        if(useGravity)
        {
            if (m_IsGrounded)
            {
                // When grounded we apply a slight negative vertical speed to make the chracter "stick" to the ground.
                m_VerticalSpeed = -gravity * k_StickingGravityProportion;

                // If jump is held, the chracter is ready to jump and not currently in the middle of a melee combo...
                //if (m_Input.JumpInput && m_ReadyToJump && !m_InCombo)
                if (m_Input.JumpInput && m_ReadyToJump)
                {
                    // ... then override the previously set vertical speed and make sure she cannot jump again.
                    //m_VerticalSpeed = jumpSpeed;
                    m_IsGrounded = false;
                    m_ReadyToJump = false;
                }
            }
            else
            {
                // If the chracter is airborne, the jump button is not held and the chracter is currently moving upwards...
                if (!m_Input.JumpInput && m_VerticalSpeed > 0.0f)
                {
                    // ... decrease the chracter's vertical speed.
                    // This is what causes holding jump to jump higher than tapping jump. Comment out to remove drag.
                    //m_VerticalSpeed -= k_JumpAbortSpeed * Time.deltaTime;
                }

                // If a jump is approximately peaking, make it absolute.
                if (Mathf.Approximately(m_VerticalSpeed, 0f))
                {
                    m_VerticalSpeed = 0f;
                }

                // If the chracter is airborne, apply gravity.
                m_VerticalSpeed -= gravity * Time.deltaTime;
            }
        }
    }

    private void Animations()
    {
        Debug.Log("How?");

        animator.SetFloat("Walk_Speed", Speed);

        if(PressedJump)
        {
            animator.SetTrigger("Jump");
            animator.SetBool("Has_Jumped", true);
        }

        animator.SetBool("Strafe", Aim);

        animator.SetFloat("Left_Right", Char_Movement.x);

        animator.SetFloat("Walk_Forward", Char_Movement.y);

        animator.SetBool("Run", true /*Run*/);

        if(animator.GetCurrentAnimatorStateInfo(0).IsName("Idle 2"))
        {
            animator.SetBool("Has_Jumped", false);
            isJumping = false;
        }
    }

    // Called each physics step (so long as the Animator component is set to Animate Physics) after FixedUpdate to override root motion.
    void OnAnimatorMove()
    {
        Vector3 movement;

        if(useGravity)
        {
            // If the chracter is on the ground...
            if (m_IsGrounded)
            {
                // ... raycast into the ground...
                RaycastHit hit;
                Ray ray = new Ray(transform.position + Vector3.up * k_GroundedRayDistance * 0.5f, -Vector3.up);
                if (Physics.Raycast(ray, out hit, k_GroundedRayDistance, Physics.AllLayers, QueryTriggerInteraction.Ignore))
                {
                    // ... and get the movement of the root motion rotated to lie along the plane of the ground.

                    if (animator.GetCurrentAnimatorStateInfo(0).IsName("Landing"))
                    {
                        movement = Vector3.ProjectOnPlane(m_ForwardSpeed * transform.forward * Time.deltaTime, hit.normal);
                    }
                    else
                    {
                        movement = Vector3.ProjectOnPlane(animator.deltaPosition, hit.normal);
                    }
                    //Debug.Log("delta");

                    // Also store the current walking surface so the correct audio is played.
                    //Renderer groundRenderer = hit.collider.GetComponentInChildren<Renderer>();
                    //m_CurrentWalkingSurface = groundRenderer ? groundRenderer.sharedMaterial : null;
                }
                else
                {
                    // If no ground is hit just get the movement as the root motion.
                    // Theoretically this should rarely happen as when grounded the ray should always hit.
                    movement = animator.deltaPosition;
                    //Debug.Log("broken");
                    //m_CurrentWalkingSurface = null;
                }
            }
            else
            {
                // If not grounded the movement is just in the forward direction.
                movement = m_ForwardSpeed * transform.forward * Time.deltaTime;
                //Debug.Log("transform");
            }

            // Rotate the transform of the character controller by the animation's root rotation.
            //m_CharCtrl.transform.rotation *= animator.deltaRotation;

            // Add to the movement with the calculated vertical speed.
            movement += m_VerticalSpeed * Vector3.up * Time.deltaTime;

            // Move the character controller.
            //Debug.Log("X: " + movement.x + " " + "Y: " + movement.y + " " + "Z: " + movement.z);

            if(knockbackForce > 0f)
            {
                knockbackForce -= Time.deltaTime;
                externalMovement = new Vector3(knockbackDirection.x, 0f, knockbackDirection.z) * knockbackForce;
            }
            else
            {
                externalMovement = Vector3.zero;
            }

            m_CharCtrl.Move(movement + externalMovement);
        }

        // After the movement store whether or not the character controller is grounded.
        m_IsGrounded = m_CharCtrl.isGrounded;

        // If the chracter is not on the ground then send the vertical speed to the animator.
        // This is so the vertical speed is kept when landing so the correct landing animation is played.
        if (!m_IsGrounded)
        {
            //animator.SetFloat(m_HashAirborneVerticalSpeed, m_VerticalSpeed);
        }

        // Send whether or not the chracter is on the ground to the animator.
        animator.SetBool(m_HashGrounded, m_IsGrounded);
    }

    public void KnockbackForce(Vector3 direction, float horizontalForce, float verticalForce)
    {
        m_VerticalSpeed = verticalForce;
        knockbackForce = horizontalForce;
        knockbackDirection = direction;
    }
}
