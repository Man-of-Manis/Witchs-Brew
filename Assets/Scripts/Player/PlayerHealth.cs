using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth : MonoBehaviour
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
    private float timer;
    private bool upDown;

    public Checkpoint currentCheckpoint;

    private PlayerMixamoController controller;

    public int Health
    {
        get
        {
            return currentHealth;
        }
        set
        {
            if( currentHealth + value > 0)
            {
                if (value < 0)
                {
                    if(!invincible)
                    {
                        Invincibiliy();
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

    private void Death()
    {
        if(Health <= 0)
        {
            GameManager.Instance.FollowCam.PlayerReset(currentCheckpoint.transform.eulerAngles.y);
            controller.SetPlayerRotation( new Vector3(0f, currentCheckpoint.transform.eulerAngles.y, 0f), currentCheckpoint.transform.position);
            

            //controller.SetPlayerRotation(Vector3.zero, Vector3.zero);
            Debug.Log("Reset Player");

            Health = MaximumHealth;
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

    private void Invincibiliy()
    {
        StartCoroutine(InvincibilityTimer());
    }

    IEnumerator InvincibilityTimer()
    {
        timer = 0f;
        invincible = true;
        yield return new WaitForSeconds(InvincibilityTime);
        invincible = false;
    }
}
