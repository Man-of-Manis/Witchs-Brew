using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IceBridgePiece : MonoBehaviour
{
    [SerializeField] private float freezeSpeed = 1f;

    [SerializeField] private Transform mesh;
    [SerializeField] private Collider col;

    public bool IsFrozen
    {
        get { return frozen; }
    }

    bool frozen;
    bool setFrozen;

    Coroutine co;

    private void Start()
    {
        freezeSpeed = GetComponentInParent<IceBridgeGroup>().Speed;
    }

    public void Melt()
    {
        if(setFrozen)
        {
            if (co != null)
            {
                StopCoroutine(co);
            }

            StartCoroutine(ScaleIce(false, false));
            setFrozen = false;
        }        
    }

    public void Freeze()
    {
        if(!setFrozen)
        {
            if (co != null)
            {
                StopCoroutine(co);
            }

            StartCoroutine(ScaleIce(true, true));
            setFrozen = true;
        }        
    }

    IEnumerator ScaleIce(bool size, bool enable)
    {
        col.enabled = enabled;

        for(float i = 0; i < 1f; i += Time.deltaTime * (1f / freezeSpeed))
        {
            mesh.localScale = Vector3.one * Mathf.Lerp(size ? 0f : 1f, size ? 1f : 0f, i);
            yield return null;
        }

        mesh.localScale = Vector3.one * (size ? 1f : 0f);

        frozen = size;

        if(!size)
        {
            GetComponentInParent<IceBridgeGroup>().DecreaseBridge(transform.GetSiblingIndex());
        }
    }
}
