using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New State", menuName = "Unnamed Wizard Game/AbilityData/JumpPrimary")]
public class JumpPrimary : StateData
{
    public float Speed;

    public override void OnEnter(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        PlayerInput pInput = characterState.GetPlayerInput(animator);

        animator.GetComponentInParent<PlayerMixamoController>().m_VerticalSpeed = Speed;

        animator.SetBool("Jump_Primary", false);

        animator.GetComponentInParent<PlayerMixamoController>().SecondaryJump = false;
    }

    public override void UpdateAbility(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        PlayerInput pInput = characterState.GetPlayerInput(animator);

        animator.SetBool("Jump", animator.GetComponentInParent<PlayerMixamoController>().SecondaryJump); 

        //animator.SetBool("Jump", pInput.JumpInput);
    }

    public override void OnExit(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {

    }

    public override void OnTransitionEnter(CharacterState characterState, Animator animator)
    {

    }

    public override void OnTransitionExit(CharacterState characterState, Animator animator)
    {

    }
}
