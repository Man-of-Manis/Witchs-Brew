using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Burn : MonoBehaviour
{
    float burnAmount = 0;
    bool isBurning = false;
    Collider col;

    public bool EnableBurn
    {
        get
        {
            return isBurning;
        }
        set
        {
            isBurning = value;
        }
    }

    private void Start()
    {
        col = GetComponent<Collider>();
    }

    void Update()
    {
        if(isBurning)
        {
            Burning();
        }        
    }

    private void Burning()
    {
        Renderer[] rend = GetComponentsInChildren<Renderer>();

        foreach (Renderer r in rend)
        {
            if (r.material.HasProperty("_Burn"))
            {
                r.material.SetFloat("_Burn", burnAmount);
            }
        }

        burnAmount += Time.deltaTime * 0.25f;

        if (burnAmount >= 0.35f)
        {
            col.enabled = false;
        }

        else if (burnAmount >= 0.8f)
        {
            Destroy(gameObject);
        }
    }
}
