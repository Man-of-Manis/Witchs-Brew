using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class BrazierDoor : MonoBehaviour
{
    public List<Brazier> braziers = new List<Brazier>();
    private List<bool> Lit = new List<bool>();

    bool allLit;

    // Start is called before the first frame update
    void Start()
    {
        for(int i = 0; i < braziers.Count; i++)
        {
            Lit.Add(braziers[i].isLit);
        }
    }

    // Update is called once per frame
    void Update()
    {
        CheckLit();       
    }

    /// <summary>
    /// Gets current state of brazier and sets bool list. Checks if all bools are true and opens door when all are active.
    /// </summary>
    private void CheckLit()
    {
        for (int i = 0; i < Lit.Count; i++)
        {
            Lit[i] = braziers[i].isLit;
        }

        if (Lit.All<bool>(x => x))
        {
            allLit = true;
        }

        if (allLit)
        {
            RaiseDoor();
        }
    }

    private void RaiseDoor()
    {
        gameObject.SetActive(false);
    }

    
}
