﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EffectsPoint : MonoBehaviour
{
    //public PotionPickup.PotionType potionEffect;

    public enum SizeGO { Small = 0, Original = 1, Large = 2};

    [Header("Scale")]
    public SizeGO ObjSize = SizeGO.Original;    
    public Vector3[] VectorSize = new Vector3[3] { new Vector3(0.5f, 0.5f, 0.5f), Vector3.one, new Vector3(1.5f, 1.5f, 1.5f) };

    [Header("Spawn Point")]
    public Transform ParticlePoint;

    [Header("Fire Particle")]
    public GameObject FirePS;
    public float FireSize = 0.15f;
    public float fireRadius = 0.1f;

    private List<ParticleSystem> PS = new List<ParticleSystem>();

    public bool OnFire
    {
        get {return m_OnFire; }
        set {m_OnFire = value; }
    }

    public bool Frozen
    {
        get { return m_Frozen; }
        set { m_Frozen = value; }
    }

    [SerializeField] private bool m_OnFire = false;
    [SerializeField] private bool m_Frozen = false;

    public void Start()
    {
        ParticleSystem[] ps = ParticlePoint.GetComponents<ParticleSystem>();

        foreach(ParticleSystem pss in ps)
        {
            AddPS(pss);
        }
    }

    public void AddPS(ParticleSystem newPS)
    {
        PS.Add(newPS);
        UpdateSize();
    }

    public void UpdateSize()
    {
        foreach(ParticleSystem ps in PS)
        {
            float size = transform.localScale.x;

            var main = ps.main;
            var shape = ps.shape;
            main.startSize = FireSize * size;
            shape.radius = fireRadius * size;
        }        
    }

    private void OnCollisionEnter(Collision collision)
    {
        //Debug.Log(collision.gameObject);

        Brazier brazier = collision.collider.GetComponent<Brazier>();

        if(collision.gameObject != this.gameObject && brazier != null && OnFire)
        {
            RedPotionEffect eff = new RedPotionEffect();
            eff.FirePS = this.FirePS;
            eff.SmallEffect(collision.gameObject);
            Destroy(eff);
        }
    }
}