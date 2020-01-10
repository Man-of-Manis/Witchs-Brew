using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerStats : MonoBehaviour
{
    GameManager gm;
    int playerHealth;
    int playerMaxHealth;

    int beanTotal;
    int bronzeWizardCards;
    int silverWizardCards;
    int goldWizardCards;

    void Awake()
    {
        gm = GetComponent<GameManager>();
    }

    public void SetHealth(int amount)
    {
        playerHealth = amount;
        //gm.playerUI.HealthUpdate();
    }

    public int GetHealth()
    {
        return playerHealth;
    }

    public void SetMaxHealth(int amount)
    {
        playerMaxHealth = amount;
        //gm.playerUI.HealthUpdate();
    }

    public int GetMaxHealth()
    {
        return playerMaxHealth;
    }

    public void AddHealth(int amount)
    {
        playerHealth += amount;
        //gm.playerUI.HealthUpdate();
    }

    public void RemoveHealth(int amount)
    {
        playerHealth -= amount;
        //gm.playerUI.HealthUpdate();
    }

    public void SetBeans(int amount)
    {
        beanTotal = amount;
        //gm.playerUI.BeanUpdate();
    }

    public int GetBeans()
    {
        return beanTotal;
    }

    public void AddBeans(int amount)
    {
        beanTotal += amount;
        //gm.playerUI.BeanUpdate();
    }

    public void RemoveBeans(int amount)
    {
        beanTotal -= amount;
        //gm.playerUI.BeanUpdate();
    }

    public void SetBronzeCard(int amount)
    {
        bronzeWizardCards = amount;
    }

    public void AddBronzeCard(int amount)
    {
        bronzeWizardCards += amount;
    }

    public void SetSilverCard(int amount)
    {
        silverWizardCards = amount;
    }

    public void AddSilverCard(int amount)
    {
        silverWizardCards += amount;
    }

    public void SetGoldCard(int amount)
    {
        goldWizardCards = amount;
    }

    public void AddGoldCard(int amount)
    {
        goldWizardCards += amount;
    }
}
