using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ledge : MonoBehaviour
{
    [HideInInspector] public Vector3 offset = new Vector3(0f, -1.75f, -0.4f);
    [HideInInspector] public Vector3 endPosition = new Vector3(0f, -0.3f, 0.25f);
}
