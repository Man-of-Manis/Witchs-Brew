using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioEvents : MonoBehaviour
{
    [Serializable]
    public struct WitchHealth
    {
        [Tooltip("The sound the witch makes when she is hurt but not killed.")]
        public string witchHurt;
        [Tooltip("The sound the witch makes when she heals.")]
        public string witchHeal;
        [Tooltip("The sound the witch makes when she dies.")]
        public string witchDeath;
    }

    [Serializable]
    public struct WitchMovement
    {
        [Tooltip("The sound the witch makes anytime she jumps.")]
        public string witchJump;
        [Tooltip("The sound the witch makes when she grabs a ledge pull-jump on.")]
        public string witchLedgeGrab;
        public string witchFootstepsDirt;
        public string witchFootstepsGrass;
        public string witchFootstepsRock;
    }

    [Serializable]
    public struct WitchAction
    {
        [Tooltip("The sound the witch makes when she throws an object.")]
        public string witchThrowObject;
    }

    [Serializable]
    public struct SmallObjects
    {
        [Tooltip("The sound a potion bottle makes when it breaks.")]
        public string potionBreak;
        [Tooltip("The sound the Key Cube makes when colliding with other object or ground.")]
        public string keyCubeHit;
    }

    [Serializable]
    public struct Chicken
    {
        [Tooltip("The sound a chicken makes at random intervals.")]
        public string chickenCluck;
        [Tooltip("The sound a chicken makes when it is launched by the player or is damaged but not killed.")]
        public string chickenLaunch;
        [Tooltip("The sound a chicken makes when it dies.")]
        public string chickenDeath;
        [Tooltip("The sound a chicken makes when it is not grounded.")]
        public string chickenWingFlap;
        [Tooltip("The sound a chicken makes when it is walking on any surface.")]
        public string chickenFootsteps;
        [Tooltip("The sound a chicken makes when it spawns from a nest.")]
        public string chickenEggCrack;
    }

    [Serializable]
    public struct Turtle
    {
        [Tooltip("The sound a turtle makes when it begins to fire its beam.")]
        public string turtleBeamCharge;
        [Tooltip("The sound a turtle makes when it fires its beam.")]
        public string turtleBeamShoot;
        [Tooltip("The sound a turtle makes when it finishes firing its beam.")]
        public string turtleBeamCooldown;
        [Tooltip("The sound a turtle makes at random intervals.")]
        public string turtleGrunt;
        [Tooltip("The sound a turtle makes when it is hurt.")]
        public string turtleHurt;
        [Tooltip("The sound a turtle makes when it dies.")]
        public string turtleDeath;
        [Tooltip("The sound a turtle makes when it is walking on any surface.")]
        public string turtleFootsteps;
    }

    public static AudioEvents Instance;
    
    [Header("Player")]
    public WitchHealth witchHealth;
    public WitchMovement witchMovement;
    public WitchAction witchAction;

    [Header("Objects")]
    public SmallObjects smallObjects;

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
