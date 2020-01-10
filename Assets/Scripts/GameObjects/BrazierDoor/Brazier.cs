using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Brazier : MonoBehaviour
{
    public bool isLit
    {
        get { return Lit; }
        set { Lit = value; }
    }

    [SerializeField] private bool Lit = false;
}
