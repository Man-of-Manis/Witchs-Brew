using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Brazier : MonoBehaviour
{
    public bool isLit
    {
        get { return Lit; }
        set { Lit = value; }
    }

    public UnityEvent activated;

    private bool prevActivated;

    [SerializeField] private bool Lit = false;

    private void Update()
    {
        if(isLit && !prevActivated)
        {
            activated.Invoke();
            prevActivated = true;
        }

        if(!isLit && prevActivated)
        {
            prevActivated = false;
        }
    }
}
