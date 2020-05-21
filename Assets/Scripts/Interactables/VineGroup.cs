using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class VineGroup : MonoBehaviour
{
    public float burnDelay = 0.5f;
    [SerializeField] private List<Burn> vines = new List<Burn>();

    [SerializeField] private List<bool> vineBurns = new List<bool>();
    [SerializeField] private List<bool> prevVineBurns = new List<bool>();
    private bool setupFinished = false;

    void Start()
    {
        StartCoroutine(DelayedGet());
    }

    void Update()
    {
        if (setupFinished)
        {
            for (int i = 0; i < vineBurns.Count; i++)
            {
                prevVineBurns[i] = vineBurns[i];
                vineBurns[i] = vines[i].EnableBurn;

                if (prevVineBurns[i] != vineBurns[i])
                {
                    StartCoroutine(VineBurnDelay(i));
                }
            }

            if (vines.All(x => !x.gameObject.activeSelf))
            {
                Destroy(gameObject);
            }
        }
    }

    public void Burner(int index)
    {
        if (index < vines.Count)
        {
            vines[index].EnableBurn = true;
        }
        else
        {
            vines[(vines.Count - 1)].EnableBurn = true;
        }
    }

    IEnumerator VineBurnDelay(int vine)
    {
        yield return new WaitForSeconds(burnDelay);

        if ((vine + 1) < vines.Count)
        {
            if (!vines[vine + 1].EnableBurn)
            {
                vines[vine + 1].EnableBurn = true;
            }
        }

        if ((vine - 1) >= 0)
        {
            if (!vines[vine - 1].EnableBurn)
            {
                vines[vine - 1].EnableBurn = true;
            }
        }
    }

    IEnumerator DelayedGet()
    {
        yield return new WaitForSeconds(0.1f);

        for (int i = 0; i < transform.childCount; i++)
        {
            transform.GetChild(i).gameObject.isStatic = false;
            Burn burn = transform.GetChild(i).GetComponent<Burn>();
            vines.Add(burn);
        }

        for (int i = 0; i < vines.Count; i++)
        {
            vineBurns.Add(vines[i].EnableBurn);
            prevVineBurns.Add(vines[i].EnableBurn);
        }

        setupFinished = true;
    }
}
