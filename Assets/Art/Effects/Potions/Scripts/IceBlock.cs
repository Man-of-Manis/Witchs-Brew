using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IceBlock : MonoBehaviour
{
    public bool melting = false;
    public const float meltSpeed = 2.5f;

    private void Start()
    {
        BirdMovement bird = GetComponentInParent<BirdMovement>();

        if (bird != null)
        {
            bird.Frozen(true);
        }
    }

    private void Update()
    {
        if (melting)
        {
            MeltingBlock();
        }
    }

    void MeltingBlock()
    {
        if (transform.localScale.x > 0.01f)
        {
            transform.localScale += transform.localScale * -Time.deltaTime * meltSpeed;
        }
    }

    public void Melt()
    {
        StartCoroutine(MeltCountdown());
    }

    IEnumerator MeltCountdown()
    {
        BirdMovement bird = GetComponentInParent<BirdMovement>();
        melting = true;
        yield return new WaitForSeconds(1f);

        if(bird != null)
        {
            //Disable bird
            bird.Frozen(false);
        }

        Destroy(gameObject);
    }
}
