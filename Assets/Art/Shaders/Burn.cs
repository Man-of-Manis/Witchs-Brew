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
        col = GetComponentInChildren<Collider>();
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

        burnAmount += Time.deltaTime * 0.5f;

        if (burnAmount >= 0.65f && burnAmount < 0.8f)
        {
            col.enabled = false;
        }

        else if (burnAmount >= 0.95f)
        {
            gameObject.SetActive(false);
            //GetComponentInParent<VineGroup>().DestroyedMesh(transform.GetSiblingIndex());
            //Destroy(gameObject);
        }
    }
}
