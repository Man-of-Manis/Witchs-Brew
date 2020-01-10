using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class VineGroup : MonoBehaviour
{
    public float burnDelay = 0.5f;
    [SerializeField] private List<Burn> vines = new List<Burn>();
    private List<bool> vineBurns = new List<bool>();
    private List<bool> prevVineBurns = new List<bool>();

    // Start is called before the first frame update
    void Start()
    {
        for(int i = 0; i < transform.childCount; i++)
        {
            Burn vine = transform.GetChild(i).GetComponent<Burn>();
            if(vine != null)
            {
                vines.Add(vine);
                vineBurns.Add(vine.EnableBurn);
                prevVineBurns.Add(vine.EnableBurn);
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        for (int i = 0; i < vineBurns.Count; i++)
        {
            prevVineBurns[i] = vineBurns[i];
            vineBurns[i] = vines[i].EnableBurn;

            if(prevVineBurns[i] != vineBurns[i])
            {
                StartCoroutine(VineBurnDelay(i));
            }
        }
    }

    IEnumerator VineBurnDelay(int vine)
    {
        yield return new WaitForSeconds(burnDelay);

        if((vine + 1) < vines.Count)
        {
            if(!vines[vine + 1].EnableBurn)
            {
                vines[vine + 1].EnableBurn = true;
            }            
        }
        
        if((vine - 1) >= 0)
        {
            if (!vines[vine - 1].EnableBurn)
            {
                vines[vine - 1].EnableBurn = true;
            }
        }
    }
}
