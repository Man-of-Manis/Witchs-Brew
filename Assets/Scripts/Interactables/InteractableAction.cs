﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableAction : MonoBehaviour
{
    public Burn vineDestroyed;

    private Animator anim;

    private void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        if(vineDestroyed.EnableBurn)
        {
            //transform.localEulerAngles = new Vector3(0f, 90f, Mathf.Lerp(transform.localEulerAngles.z, 0f, Time.deltaTime));
            anim.enabled = true;
        }
    }
}