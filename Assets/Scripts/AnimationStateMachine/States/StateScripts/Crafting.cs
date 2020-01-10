using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New State", menuName = "Unnamed Wizard Game/AbilityData/Crafting")]
public class Crafting : StateData
{
    float timer = 0;
    bool firstTime = true;

    public override void OnEnter(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {

    }

    public override void UpdateAbility(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        PlayerInput pInput = characterState.GetPlayerInput(animator);

        animator.SetBool("Jump", pInput.JumpInput);

        animator.SetBool("Strafe", pInput.AimInput);

        animator.SetBool("Run", pInput.RunInput);

        float speed = animator.GetComponent<PlayerMixamoController>().m_ForwardSpeed;

        animator.SetFloat("Walk_Speed", speed);

        //animator.SetBool("Craft_Potion", pInput.LBumperHeld);

        timer += Time.deltaTime;

        if (timer >= 0f && firstTime)
        {
            characterState.GetPlayerHealth(animator).BottlePosition(2);
            firstTime = false;
        }
    }

    public override void OnExit(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        timer = 0f;
        firstTime = true;
    }

    public override void OnTransitionEnter(CharacterState characterState, Animator animator)
    {

    }

    public override void OnTransitionExit(CharacterState characterState, Animator animator)
    {

    }
}
