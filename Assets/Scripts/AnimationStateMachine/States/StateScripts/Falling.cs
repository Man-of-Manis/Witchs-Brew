using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New State", menuName = "Unnamed Wizard Game/AbilityData/Falling")]
public class Falling : StateData
{
    public float Speed;

    public override void OnEnter(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        
    }

    public override void UpdateAbility(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        PlayerInput pInput = characterState.GetPlayerInput(animator);

        animator.SetBool("Jump", pInput.JumpInput);

        animator.SetBool("Jump", animator.GetComponent<PlayerMixamoController>().SecondaryJump);

        animator.SetBool("Strafe", pInput.AimInput);

        animator.SetBool("Run", pInput.RunInput);

        Vector2 move = pInput.MoveInput;

        if (move.sqrMagnitude > 1f)
        {
            move.Normalize();
        }

        float speed = move.magnitude;

        animator.SetFloat("Walk_Speed", speed);
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
