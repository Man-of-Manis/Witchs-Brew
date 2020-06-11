using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterState : StateMachineBehaviour
{
    public List<StateData> ListAbilityData = new List<StateData>();

    public override void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        foreach (StateData d in ListAbilityData)
        {
            d.OnEnter(this, animator, stateInfo);
        }
    }

    public void UpdateAll(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        foreach(StateData d in ListAbilityData)
        {
            d.UpdateAbility(characterState, animator, stateInfo);
        }
    }

    public override void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        UpdateAll(this, animator, stateInfo);
    }

    public override void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        foreach (StateData d in ListAbilityData)
        {
            d.OnExit(this, animator, stateInfo);
        }
    }

    public override void OnStateMachineEnter(Animator animator, int stateMachinePathHash)
    {
        foreach (StateData d in ListAbilityData)
        {
            d.OnTransitionEnter(this, animator);
        }
    }

    public override void OnStateMachineExit(Animator animator, int stateMachinePathHash)
    {
        foreach (StateData d in ListAbilityData)
        {
            d.OnTransitionExit(this, animator);
        }
    }

    private PlayerInput playerInput;

    public PlayerInput GetPlayerInput(Animator animator)
    {
        if(playerInput == null)
        {
            playerInput = animator.GetComponentInParent<PlayerInput>();
        }

        return playerInput;
    }

    private LedgeChecker ledgeChecker;

    public LedgeChecker GetLedgeChecker(Animator animator)
    {
        if(ledgeChecker == null)
        {
            ledgeChecker = animator.GetComponentInParent<LedgeChecker>();
        }

        return ledgeChecker;
    }

    private PlayerParent playerParent;

    public PlayerParent GetPlayerParent(Animator animator)
    {
        if(playerParent == null)
        {
            playerParent = animator.GetComponentInParent<PlayerParent>();
        }

        return playerParent;
    }

    private PlayerHealth playerHealth;

    public PlayerHealth GetPlayerHealth(Animator animator)
    {
        if (playerHealth == null)
        {
            playerHealth = animator.GetComponentInParent<PlayerHealth>();
        }

        return playerHealth;
    }
}
