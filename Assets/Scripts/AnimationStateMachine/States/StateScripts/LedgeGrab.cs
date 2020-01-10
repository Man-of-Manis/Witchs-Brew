using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New State", menuName = "Unnamed Wizard Game/AbilityData/LedgeGrab")]
public class LedgeGrab : StateData
{
    LedgeChecker ledgeChecker;

    public override void OnEnter(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        ledgeChecker = characterState.GetLedgeChecker(animator);

        animator.SetBool("Ledge_Grab", ledgeChecker.IsGrabbingLedge);
    }

    public override void UpdateAbility(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        ledgeChecker = characterState.GetLedgeChecker(animator);

        animator.SetBool("Ledge_Grab", ledgeChecker.IsGrabbingLedge);
    }

    public override void OnExit(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        ledgeChecker = characterState.GetLedgeChecker(animator);

        animator.SetBool("Ledge_Grab", false);
    }

    public override void OnTransitionEnter(CharacterState characterState, Animator animator)
    {

    }

    public override void OnTransitionExit(CharacterState characterState, Animator animator)
    {

    }
}
