using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class PlayerUI : MonoBehaviour
{
    private GameManager gm;
    public Image health;
    public TextMeshProUGUI beanCount;
    public TextMeshProUGUI bronzeWizardCards;
    public TextMeshProUGUI silverWizardCards;
    public TextMeshProUGUI goldWizardCards;
    public TextMeshProUGUI FPS;
    private int frames;

    void Awake()
    {
        gm = GameObject.FindGameObjectWithTag("GameManager").GetComponent<GameManager>();
        InvokeRepeating("FPSCounter", 0.0f, 0.25f);
    }

    public void HealthUpdate()
    {
        health.fillAmount = (float)gm.stats.GetHealth() / gm.stats.GetMaxHealth();
    }

    public void BeanUpdate()
    {
        beanCount.text = gm.stats.GetBeans().ToString();
    }
    
    public void FPSCounter()
    {
        float current = 0f;
        current = (1f / Time.unscaledDeltaTime);
        frames = (int)current;
        FPS.text = "FPS: " + frames.ToString();
    }
}
