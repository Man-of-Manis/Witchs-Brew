using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New State", menuName = "Unnamed Wizard Game/AbilityData/OffsetOnLedge")]
public class OffsetOnLedge : StateData
{
    LedgeChecker ledgeChecker;

    public override void OnEnter(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        PlayerInput pInput = characterState.GetPlayerInput(animator);
        //pInput.ReleaseControl();

        ledgeChecker = characterState.GetLedgeChecker(animator);
        GameObject anim = animator.gameObject;

        anim.transform.parent = ledgeChecker.GrabbedLedge.transform;
        Vector3 start = ledgeChecker.GrabbedLedge.offset;
        Vector3 newOffset = new Vector3(anim.transform.localPosition.x, start.y, start.z);

        anim.transform.localPosition = newOffset;
        anim.transform.localEulerAngles = Vector3.zero;
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
}
