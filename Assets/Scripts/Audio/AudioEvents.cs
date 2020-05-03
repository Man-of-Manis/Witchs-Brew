using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioEvents : MonoBehaviour
{
    [Serializable]
    public struct WitchHealth
    {
        public string witchHurt;
        public string witchHeal;
        public string witchDeath;
    }

    [Serializable]
    public struct WitchMovement
    {
        public string witchJump;
        public string witchLedgeGrab;
        public string witchFootstepsDirt;
        public string witchFootstepsGrass;
        public string witchFootstepsRock;
    }

    [Serializable]
    public struct WitchAction
    {
        public string witchThrowObject;
    }

    [Serializable]
    public struct Objects
    {
        public string potionBreak;
    }

    [Serializable]
    public struct Chicken
    {
        public string chickenCluck;
        public string chickenHurt;
        public string chickenWingFlap;
        public string chickenFootsteps;
        public string chickenEggCrack;
    }

    [Serializable]
    public struct Turtle
    {
        public string turtleBeamCharge;
        public string turtleBeamShoot;
        public string turtleBeamCooldown;
        public string turtleGrunt;
        public string turtleFootsteps;
    }

    public static AudioEvents Instance;
    
    [Header("Player")]
    public WitchHealth witchHealth;
    public WitchMovement witchMovement;
    public WitchAction witchAction;

    [Header("Objects")]
    public Objects objects;

    [Header("Creatures")]
    public Chicken chicken;
    public Turtle turtle;

    private void Awake()
    {
        if(Instance == null)
        {
            Instance = this;
        }
        else
        {
            Destroy(this);
        }
    }
}
