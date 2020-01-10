using System.Collections;
using System.Linq;
using System.Collections.Generic;
using UnityEngine;

public class EssenceBar : MonoBehaviour
{
    
    public Transform essenceBar;
    public Transform dividerParent;

    [Range(0, 10)]
    public int currentHealth;

    [Range(1, 10)]
    public int maxHealth;

    public int Health
    {
        get
        {
            return currentHealth;
        }

        set
        {
            currentHealth = value;
            SetEssenceBar();
        }
    }

    
    private void OnValidate()
    {
        //SetEssenceBar();
    }

    void SetEssenceBar()
    {
        int numDividers = currentHealth - 1;
        float posDividers = 10 / maxHealth;

        if(currentHealth > maxHealth)
        {
            currentHealth = maxHealth;
        }

        int children = dividerParent.childCount;

        for (int i = 0; i < children; i++)
        {
            //StartCoroutine(DestroyThis(dividerParent.GetChild(i).gameObject));
            dividerParent.GetChild(i).gameObject.SetActive(false);
        }

        for (int i = 0; i < numDividers; i++)
        {
            /*
            Transform div = Instantiate(divider, transform.position, transform.localRotation, dividerParent);
            div.localPosition = new Vector3(0f, (float)i / maxHealth * 0.5f + 0.5f / maxHealth, 0f);
            */

            dividerParent.GetChild(i).transform.localPosition = new Vector3(0f, (float)i / maxHealth * 0.5f + 0.5f / maxHealth, 0f);
            dividerParent.GetChild(i).gameObject.SetActive(true);
        }

        essenceBar.localScale = new Vector3(1f, (float)currentHealth / maxHealth * 10f, 1f);

        if(currentHealth == 0)
        {
            essenceBar.gameObject.SetActive(false);
        }

        else
        {
            essenceBar.gameObject.SetActive(true);
        }
    }

    IEnumerator DestroyThis(GameObject go)
    {
        yield return new WaitForEndOfFrame();
        DestroyImmediate(go);
    }
}
