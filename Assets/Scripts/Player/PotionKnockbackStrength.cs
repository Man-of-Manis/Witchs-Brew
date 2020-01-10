using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotionKnockbackStrength : MonoBehaviour
{
    public float changeRate = 2f;

    public float Velocity
    {
        get { return potionVelocity; }
    }

    protected float potionVelocity = 1f;

    private PlayerInput m_Input;

    private void Start()
    {
        m_Input = GetComponent<PlayerInput>();
    }
    void Update()
    {
        if(m_Input.LBumperHold)
        {
            potionVelocity -= Time.fixedDeltaTime/changeRate;
            potionVelocity = Mathf.Clamp(potionVelocity, 0.25f, 2f);
        }

        else if(m_Input.RBumperHold)
        {
            potionVelocity += Time.fixedDeltaTime / changeRate;
            potionVelocity = Mathf.Clamp(potionVelocity, 0.25f, 2f);
        }
    }
}
