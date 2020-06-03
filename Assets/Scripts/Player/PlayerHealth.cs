﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth : MonoBehaviour, IDamagable
{
    [Header("Health")]
    [Range(0, 10)]
    public int currentHealth;

    [Range(1, 10)]
    public int maxHealth;

    [SerializeField] private float InvincibilityTime = 3f;
    [SerializeField] private float deathSequenceDelay = 2f;
    private bool invincible = false;

    public EssenceBar essenceBar;

    public GameObject[] essenceBars = new GameObject[3];

    [Header("Damaged")]
    [SerializeField] private Color invincibilityColor = Color.yellow;
    [SerializeField] private float lerpTime;
    [SerializeField] private float verticalKnockbackForce = 5f;
    [SerializeField] private float horizontalKnockbackForce = 0.5f;

    private float timer;
    private float controlTime = 1f;
    private bool upDown;
    private Coroutine invinCo;
    private Coroutine controlCo;

    [Header("References")]
    public Checkpoint currentCheckpoint;

    [SerializeField] private PlayerMixamoController controller;
    [SerializeField] private PlayerInput m_Input;
    [SerializeField] private Renderer rend;

    private FMODUnity.StudioEventEmitter eventEmitterRef; //Grant was here

    void Awake()
    {
        eventEmitterRef = GetComponent<FMODUnity.StudioEventEmitter>(); //Grant was here
    }
    /*
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.K))
        {
            FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.witchHealth.witchHurt, gameObject);
        }
    }
    */
    public int Health
    {
        get
        {
            return currentHealth;
        }
        /*
        set
        {
            //Debug.Log("Applying " + value + " damage to player");

            if( currentHealth + value > 0)
            {
                if (value < 0)
                {
                    if(!invincible)
                    {
                        InvincibilityCo();
                        Control();
                        DamageKnockback();
                    }

                    else
                    {
                        return;
                    }
                }
                currentHealth += value;
                HealthChanged();
                //audio here 
                eventEmitterRef.Play();

            }

            else if(currentHealth + value <= 0 && !invincible)
            {
                currentHealth = 0;
                HealthChanged();
                //audio here 
                eventEmitterRef.Play();

            }

        }
        */
    }

    public int MaximumHealth
    {
        get
        {
            return maxHealth;
        }
        set
        {
            maxHealth = value;
            HealthChanged();
        }
    }

    public void ResetHealth()
    {
        if (GameManager.Instance != null)
        {
            GameManager.Instance.FollowCam.PlayerReset(currentCheckpoint.transform.localEulerAngles.y);
        }

        controller.SetPlayerRotation(currentCheckpoint.transform.localEulerAngles.y, currentCheckpoint.transform.position);

        currentHealth = MaximumHealth;
        HealthChanged();
        m_Input.GainControl();
    }

    /// <summary>
    /// Health changes for healing or no knockback damage.
    /// </summary>
    /// <param name="healthAmount"></param>
    public void HealthChange(int healthAmount)
    {
        if (currentHealth + healthAmount > 0)
        {
            if (healthAmount < 0)
            {
                if (!invincible)
                {
                    InvincibilityCo();
                    Control();

                    //Witch Takes Damage Sound Here (OneShot)
                    //eventEmitterRef.Play(); //Grant Was Here
                    FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.witchHealth.witchHurt, gameObject);
                }

                else
                {
                    return;
                }
            }
            else
            {
                //Witch Heals Sound Here (OneShot)
                FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.witchHealth.witchHeal, gameObject);
            }

            currentHealth += healthAmount;
            HealthChanged();
        }

        else if (currentHealth + healthAmount <= 0 && !invincible)
        {
            currentHealth = 0;
            HealthChanged();
            Death();
        }
    }

    /// <summary>
    /// Health changes for damage without consistant knockback.
    /// </summary>
    /// <param name="healthAmount"></param>
    /// <param name="damageDirection"></param>
    public void HealthChange(int healthAmount, Vector3 damageDirection, bool alwaysKnockback)
    {
        if (currentHealth + healthAmount > 0)
        {
            if (healthAmount < 0)
            {
                if (!invincible)
                {
                    InvincibilityCo();
                    Control();
                    DamageKnockback(damageDirection);

                    //Witch Takes Damage Sound Here (OneShot)
                    //eventEmitterRef.Play(); //Grant Was Here
                    FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.witchHealth.witchHurt, gameObject);
                }

                else
                {
                    if(alwaysKnockback)
                    {
                        Control();
                        DamageKnockback(damageDirection);
                    }

                    return;
                }
            }
            else
            {

                //Witch Heals Sound Here (OneShot)
                FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.witchHealth.witchHeal, gameObject);
            }

            currentHealth += healthAmount;
            HealthChanged();
        }

        else if(currentHealth + healthAmount <= 0 && invincible)
        {
            if (alwaysKnockback)
            {
                Control();
                DamageKnockback(damageDirection);
            }
        }

        else if (currentHealth + healthAmount <= 0 && !invincible)
        {
            
            currentHealth = 0;
            Death();
        }
    }

    private void DamageKnockback(Vector3 direction)
    {
        controller.KnockbackForce(direction.normalized, horizontalKnockbackForce, verticalKnockbackForce);
    }

    private void Death()
    {
        StartCoroutine(DeathSequence());
    }

    void HealthChanged()
    {
        essenceBar.maxHealth = MaximumHealth;
        essenceBar.Health = Health;
    }

    public void BottlePosition(int bottle)
    {
        for(int i = 0; i < essenceBars.Length; i++)
        {
            if(i == bottle)
            {
                essenceBars[i].SetActive(true);
            }

            else
            {
                essenceBars[i].SetActive(false);
            }
        }
    }

    private void InvincibilityCo()
    {
        if(invinCo != null)
        {
            StopCoroutine(invinCo);
        }

        invinCo = StartCoroutine(InvincibilityTimer());
    }

    private void Control()
    {
        if (controlCo != null)
        {
            StopCoroutine(controlCo);
        }

        controlCo = StartCoroutine(DamageControl());
    }

    IEnumerator InvincibilityTimer()
    {
        invincible = true;

        for (float j = 0; j < InvincibilityTime; j += Time.deltaTime * 15f)
        {
            if (upDown)
            {
                for (float i = 0; i < 1f; i += Time.deltaTime / lerpTime)
                {
                    //rend.material.SetColor("_BaseColor", Color32.Lerp(new Color32(114, 180, 77, 255), invincibilityColor, i));
                    yield return null;
                }

                upDown = false;
            }
            else
            {
                for (float i = 1f; i > 0f; i += Time.deltaTime / -lerpTime)
                {
                    //rend.material.SetColor("_BaseColor", Color32.Lerp(new Color32(114, 180, 77, 255), invincibilityColor, i));
                    yield return null;
                }

                upDown = true;
            }

            yield return null;
        }        

        //yield return new WaitForSeconds(InvincibilityTime);
        invincible = false;

        for (float i = 0f; i < 1f; i += Time.deltaTime * (1f / 0.1f))
        {
            //rend.material.SetColor("_BaseColor", Color32.Lerp(rend.material.GetColor("_BaseColor"), new Color32(114, 180, 77, 255), i));
            yield return null;
        }
    }

    IEnumerator DamageControl()
    {
        m_Input.ReleaseControl();
        yield return new WaitForSeconds(controlTime);
        m_Input.GainControl();
    }

    IEnumerator DeathSequence()
    {
        //Witch Death Sound Here (OneShot)
        FMODUnity.RuntimeManager.PlayOneShotAttached(AudioEvents.Instance.witchHealth.witchDeath, gameObject);

        if (invinCo != null)
        {
            StopCoroutine(invinCo);
        }

        if (controlCo != null)
        {
            StopCoroutine(controlCo);
        }

        m_Input.ReleaseControl();

        yield return new WaitForSeconds(deathSequenceDelay);

        LoadingScreenBar.Instance.DeathFadeOut();
    }
}
