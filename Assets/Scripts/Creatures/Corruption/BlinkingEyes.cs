using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlinkingEyes : MonoBehaviour
{
    public Renderer[] eyes;
    public Color grey = new Color(0.25f, 0.25f, 0.25f);
    public Color black = new Color(0f, 0f, 0f);

    public float minBetweenBlinkInterval = 3f;
    public float maxBetweenBlinkInterval = 7f;
    private float timeBetweenblinkInterval;

    private float sleepDistance = 10f; //Distance from player needed to sleep

    private float timer = 0f; //The previous time the eyes were closed
    private bool sleeping = false;
    private bool prevSleeping = false;
    private Coroutine co;

    private void Start()
    {
        GetBlinkInterval();
    }

    void Update()
    {
        SleepDistance();
        RandomBlink();
    }

    /// <summary>
    /// Determines if the player is too far away to show eye color.
    /// </summary>
    void SleepDistance()
    {
        prevSleeping = sleeping;
        sleeping = Vector3.Distance(transform.position, GameManager.Instance.player.transform.position) > sleepDistance ? true : false;
    }

    /// <summary>
    /// Determines whether to blink or not and sets appropriate eye color.
    /// </summary>
    void RandomBlink()
    {
        if(sleeping)
        {
            SetEyeColor(black);
        }

        else
        {
            if(prevSleeping)
            {
                if(co != null)
                {
                    StopCoroutine(co);
                    co = null;
                }

                timer = Time.timeSinceLevelLoad;

                SetEyeColor(grey);
            }

            else
            {
                if (Time.timeSinceLevelLoad >= timer + timeBetweenblinkInterval)
                {
                    co = StartCoroutine(Blink());

                    GetBlinkInterval();

                    timer = Time.timeSinceLevelLoad;
                }
            }            
        }        
    }

    /// <summary>
    /// Gets a random time between blinks as a float.
    /// </summary>
    void GetBlinkInterval()
    {
        timeBetweenblinkInterval = Random.Range(minBetweenBlinkInterval, maxBetweenBlinkInterval);
    }

    /// <summary>
    /// Changes eye color based on input color.
    /// </summary>
    /// <param name="c">The color to change the eyes to.</param>
    void SetEyeColor(Color c)
    {
        foreach (Renderer e in eyes)
        {
            e.material.SetColor("_Color", c);
        }
    }

    /// <summary>
    /// Blinks eyes by changing the color with a pause inbetween.
    /// </summary>
    /// <returns></returns>
    IEnumerator Blink()
    {
        SetEyeColor(black);
        yield return new WaitForSeconds(Random.Range(0.05f, 0.4f));
        SetEyeColor(grey);
    }
}
