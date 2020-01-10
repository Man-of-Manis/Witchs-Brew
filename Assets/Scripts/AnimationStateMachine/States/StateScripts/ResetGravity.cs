using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New State", menuName = "Unnamed Wizard Game/AbilityData/ResetGravity")]
public class ResetGravity : StateData
{
    PlayerMixamoController controller;

    public override void OnEnter(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        ToggleGrav(animator);
        characterState.GetPlayerParent(animator).enabled = true;
    }

    public override void UpdateAbility(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {

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

    private void ToggleGrav(Animator animator)
    {
        controller = animator.GetComponent<PlayerMixamoController>();
        controller.useGravity = true;
        controller.m_VerticalSpeed = 0f;
    }
}
