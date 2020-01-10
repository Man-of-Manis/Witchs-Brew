using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    public static PlayerInput Instance
    {
        get { return s_Instance; }
    }

    protected static PlayerInput s_Instance;

    [HideInInspector]
    public bool playerControllerInputBlocked;

    [HideInInspector]
    public bool playerControllerMovementBlocked;

    protected Vector2 m_Movement;
    protected Vector2 m_Camera;
    protected bool m_Jump;
    protected bool m_prevJump;
    protected bool m_Use;
    protected bool m_UseDown;
    protected bool prevUse;
    protected bool m_Aim;
    protected bool m_SwitchAimingSide;
    protected bool m_Run;
    protected bool m_Attack;
    protected bool m_Drop;
    protected bool m_Button0;
    protected bool m_Button1;
    protected bool m_Button2;
    protected bool m_Button3;
    protected bool m_HoldButton3;
    protected bool m_ToggleButton3;
    protected bool m_LBumperHold;
    protected bool m_LBumper;
    protected bool m_RBumperHold;
    protected bool m_RBumper;
    protected bool m_ShuffleType;
    protected bool m_PotionCombos;
    protected bool prevShuffle;
    protected float DPad_X_Direction;
    protected bool prevType;
    protected float DPad_Y_Direction;
    protected bool m_Pause;
    protected bool m_ExternalInputBlocked;

    public Vector2 MoveInput
    {
        get
        {
            if (playerControllerInputBlocked || m_ExternalInputBlocked || playerControllerMovementBlocked)
            {
                return Vector2.zero;
            }
                
            return m_Movement;
        }
    }

    public Vector2 LookInput
    {
        get
        {
            if (playerControllerInputBlocked || m_ExternalInputBlocked)
            {
                return Vector2.zero;
            }
                
            return m_Camera;
        }
    }

    public Vector2 LSInput
    {
        get
        {
            if (playerControllerInputBlocked || m_ExternalInputBlocked)
            {
                return Vector2.zero;
            }

            return m_Movement;
        }
    }

    public Vector2 RSInput
    {
        get
        {
            if (playerControllerInputBlocked || m_ExternalInputBlocked)
            {
                return Vector2.zero;
            }

            return m_Camera;
        }
    }

    public bool JumpInput
    {
        get        {            return m_Jump && !playerControllerInputBlocked && !m_ExternalInputBlocked && !playerControllerMovementBlocked;        }
    }

    public bool UseInput
    {
        get        {            return m_Use && !playerControllerInputBlocked && !m_ExternalInputBlocked;        }
    }

    public bool UseDownInput
    {
        get        {            return m_UseDown && !playerControllerInputBlocked && !m_ExternalInputBlocked;        }
    }

    public bool AimInput
    {
        get        {            return m_Aim && !playerControllerInputBlocked && !m_ExternalInputBlocked;        }
    }

    public bool SwitchAimSide
    {
        get        {            return m_SwitchAimingSide && !playerControllerInputBlocked && !m_ExternalInputBlocked;        }
    }

    public bool RunInput
    {
        get        {            return m_Run && !playerControllerInputBlocked && !m_ExternalInputBlocked;        }
    }

    public bool Attack
    {
        get        {            return m_Attack && !playerControllerInputBlocked && !m_ExternalInputBlocked;        }
    }

    public bool Drop
    {
        get { return m_Drop && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }

    public bool Button0
    {
        get { return m_Button0 && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }

    public bool Button1
    {
        get { return m_Button1 && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }

    public bool Button2
    {
        get { return m_Button2 && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }

    public bool Button3
    {
        get { return m_Button3 && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }

    public bool HoldButton3
    {
        get { return m_HoldButton3 && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }

    public bool ToggleButton3
    {
        get { return m_ToggleButton3 && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }

    public bool LBumperHold
    {
        get { return m_LBumperHold && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }
    public bool LBumper
    {
        get { return m_LBumper && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }
    public bool RBumperHold
    {
        get { return m_RBumperHold && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }
    public bool RBumper
    {
        get { return m_RBumper && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }
    public bool ShuffleType
    {
        get { return m_ShuffleType && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }
    public bool PotionCombos
    {
        get { return m_PotionCombos && !playerControllerInputBlocked && !m_ExternalInputBlocked; }
    }

    public float DPad_X
    {
        get
        {
            if(!playerControllerInputBlocked && !m_ExternalInputBlocked)
            {
                return DPad_X_Direction;
            }
            else
            {
                return 0;
            }
        }
    }

    public float DPad_Y
    {
        get
        {
            if (!playerControllerInputBlocked && !m_ExternalInputBlocked)
            {
                return DPad_Y_Direction;
            }
            else
            {
                return 0;
            }
        }
    }

    WaitForSeconds m_AttackInputWait;
    Coroutine m_AttackWaitCoroutine;

    WaitForSeconds m_ShuffleInputWait;
    Coroutine m_ShuffleWaitCoroutine;

    WaitForSeconds m_NewInputWait;
    Coroutine m_NewWaitCoroutine;

    const float k_AttackInputDuration = 0.03f;

    void Awake()
    {
        m_AttackInputWait = new WaitForSeconds(k_AttackInputDuration);
        m_ShuffleInputWait = new WaitForSeconds(k_AttackInputDuration);
        m_NewInputWait = new WaitForSeconds(k_AttackInputDuration);

        if (s_Instance == null)
            s_Instance = this;
        else if (s_Instance != this)
            throw new UnityException("There cannot be more than one PlayerInput script.  The instances are " + s_Instance.name + " and " + name + ".");
    }

    void Update()
    {
        GetInputs();

        if(Input.GetKeyDown(KeyCode.Escape))
        {
            Application.Quit();
        }
    }

    private void GetInputs()
    {
        m_Movement.Set(Input.GetAxis("Horizontal"), Input.GetAxis("Vertical"));
        m_Camera.Set(Input.GetAxis("Camera X"), Input.GetAxis("Camera Y"));
        m_Jump = Input.GetButtonDown("Jump") && !Input.GetButton("MakePotion");
        m_Use = Input.GetAxis("C_Use") > 0f || Input.GetButton("M_Use");
        m_Aim = Input.GetAxis("C_Aim") > 0f || Input.GetButton("M_Aim");
        m_SwitchAimingSide = Input.GetButtonDown("Aim_Side");
        m_Drop = Input.GetButtonDown("Drop");
        m_Button0 = Input.GetButtonDown("Button0");
        m_Button1 = Input.GetButtonDown("Button1");
        m_Button2 = Input.GetButtonDown("Button2");
        m_Button3 = Input.GetButtonDown("Button3");
        m_HoldButton3 = Input.GetButton("Button3");
        m_ToggleButton3 = Input.GetButtonDown("Button3") ? !m_ToggleButton3 : m_ToggleButton3;
        m_LBumperHold = Input.GetButton("MakePotion");
        m_LBumper = Input.GetButtonDown("MakePotion");
        m_RBumperHold = Input.GetButton("ShuffleType");
        m_RBumper = Input.GetButtonDown("ShuffleType");
        m_ShuffleType = Input.GetButtonDown("ShuffleType");
        m_PotionCombos = Input.GetButton("PotionCombos");
        //m_Run = Input.GetAxis("Run") > 0f;

        m_Run = true;

        if (Input.GetButtonDown("Fire1"))
        {
            if (m_AttackWaitCoroutine != null)
            {
                StopCoroutine(m_AttackWaitCoroutine);
            }

            m_AttackWaitCoroutine = StartCoroutine(AttackWait());
        }

        if((Input.GetAxis("C_Use") > 0f || Input.GetButton("M_Use")) && !prevUse)
        {
            m_UseDown = true;
            prevUse = true;
        }

        else if((Input.GetAxis("C_Use") == 0f && !Input.GetButton("M_Use")) && prevUse)
        {
            prevUse = false;
        }

        else
        {
            m_UseDown = false;
        }

        if ((Input.GetAxisRaw("DPad_X") != 0.0f || Input.GetButtonDown("DPad_X")) && !prevShuffle)
        {
            DPad_X_Direction = Input.GetAxisRaw("DPad_X") > 0f ? 1f : -1f;
            prevShuffle = true;
        }

        else if (Input.GetAxisRaw("DPad_X") == 0.0f && prevShuffle)
        {
            prevShuffle = false;
        }

        else
        {
            DPad_X_Direction = 0.0f;
        }

        if ((Input.GetAxisRaw("DPad_Y") != 0.0f || Input.GetButtonDown("DPad_Y")) && !prevType)
        {
            DPad_Y_Direction = Input.GetAxisRaw("DPad_Y") > 0f ? 1f : -1f;
            prevType = true;
        }

        else if(Input.GetAxisRaw("DPad_Y") == 0.0f && prevType)
        {            
            prevType = false;
        }

        else
        {
            DPad_Y_Direction = 0.0f;
        }

        playerControllerMovementBlocked = ToggleButton3;
    }

    IEnumerator AttackWait()
    {
        m_Attack = true;

        yield return m_AttackInputWait;

        m_Attack = false;
    }

    public void UntoggleButton3()
    {
        m_ToggleButton3 = false;
    }

    public bool HaveControl()
    {
        return !m_ExternalInputBlocked;
    }

    public void ReleaseControl()
    {
        m_ExternalInputBlocked = true;
    }

    public void GainControl()
    {
        m_ExternalInputBlocked = false;
    }
}
