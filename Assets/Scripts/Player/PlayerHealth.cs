using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth : MonoBehaviour, IDamagable
{
    [Range(0, 10)]
    public int currentHealth;

    [Range(1, 10)]
    public int maxHealth;

    [SerializeField] private float InvincibilityTime = 3f;
    private bool invincible = false;

    public EssenceBar essenceBar;

    public GameObject[] essenceBars = new GameObject[3];

    private Renderer rend;
    [SerializeField] private Color invincibilityColor = Color.yellow;
    [SerializeField] private float lerpTime;
    [SerializeField] private float verticalKnockbackForce = 5f;
    [SerializeField] private float horizontalKnockbackForce = 0.5f;
    private float timer;
    private float controlTime = 1f;
    private bool upDown;

    public Checkpoint currentCheckpoint;

    private PlayerMixamoController controller;
    private PlayerInput m_Input;

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
            }

            else if(currentHealth + value <= 0 && !invincible)
            {
                currentHealth = 0;
                HealthChanged();
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

    private void Start()
    {
        controller = GetComponent<PlayerMixamoController>();
        m_Input = GetComponent<PlayerInput>();
        HealthChanged();
        rend = transform.Find("Beta_Surface").GetComponent<Renderer>();
    }

    private void Update()
    {
        Invincibility();
    }

    private void FixedUpdate()
    {
        Death();
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
                    //DamageKnockback();

                    //Witch Takes Damage Sound Here
                }

                else
                {
                    return;
                }
            }
            else
            {

                //Witch Heals Sound Here
            }

            currentHealth += healthAmount;
            HealthChanged();
        }

        else if (currentHealth + healthAmount <= 0 && !invincible)
        {
            currentHealth = 0;
            HealthChanged();
            //Witch Death Sound Here
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

                    //Witch Takes Damage Sound Here
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

                //Witch Heals Sound Here
            }

            Debug.Log("Applying " + healthAmount + " damage to player");

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
            HealthChanged();
            //Witch Death Sound Here
        }
    }


    private void Invincibility()
    {
        if (invincible)
        {
            timer += Time.deltaTime / (upDown ? lerpTime : -lerpTime);

            if (timer >= 1f)
            {
                upDown = false;
            }

            else if (timer <= 0f)
            {
                upDown = true;
            }

            rend.material.SetColor("_BaseColor", Color32.Lerp(new Color32(114, 180, 77, 255), invincibilityColor, timer));
        }

        else
        {
            if (!rend.material.GetColor("_BaseColor").Equals(new Color32(114, 180, 77, 255)))
            {
                if (timer > 0f)
                {
                    timer += Time.deltaTime / -lerpTime;
                }

                else
                {
                    rend.material.SetColor("_BaseColor", new Color32(114, 180, 77, 255));
                }

                rend.material.SetColor("_BaseColor", Color32.Lerp(rend.material.GetColor("_BaseColor"), new Color32(114, 180, 77, 255), timer));
            }
        }
    }

    private void DamageKnockback(Vector3 direction)
    {
        controller.KnockbackForce(direction.normalized, horizontalKnockbackForce, verticalKnockbackForce);
    }

    private void Death()
    {
        if(Health <= 0)
        {
            if(GameManager.Instance != null)
            {
                GameManager.Instance.FollowCam.PlayerReset(currentCheckpoint.transform.localEulerAngles.y);
            }
            
            controller.SetPlayerRotation(currentCheckpoint.transform.localEulerAngles.y, currentCheckpoint.transform.position);
            

            //controller.SetPlayerRotation(Vector3.zero, Vector3.zero);
            Debug.Log("Reset Player");

            currentHealth = MaximumHealth;
            HealthChanged();
        }
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
        StartCoroutine(InvincibilityTimer());
    }

    private void Control()
    {
        StartCoroutine(DamageControl());
    }

    IEnumerator InvincibilityTimer()
    {
        timer = 0f;
        invincible = true;
        yield return new WaitForSeconds(InvincibilityTime);
        invincible = false;
    }

    IEnumerator DamageControl()
    {
        m_Input.ReleaseControl();
        yield return new WaitForSeconds(controlTime);
        m_Input.GainControl();
    }
}
