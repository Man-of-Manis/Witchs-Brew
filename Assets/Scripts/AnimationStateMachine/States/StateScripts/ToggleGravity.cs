using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New State", menuName = "Unnamed Wizard Game/AbilityData/ToggleGravity")]
public class ToggleGravity : StateData
{
    PlayerMixamoController controller;

    public override void OnEnter(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        characterState.GetPlayerParent(animator).enabled = false;
        ToggleGrav(animator);
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
        controller.useGravity = false;
        controller.m_VerticalSpeed = 0f;
    }
}
