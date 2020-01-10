using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New State", menuName = "Unnamed Wizard Game/AbilityData/TeleportOnLedge")]
public class TeleportOnLedge : StateData
{
    LedgeChecker ledgeChecker;
    PlayerMixamoController controller;

    public override void OnEnter(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        Teleport(characterState, animator);
        //Debug.Log("Called First");
    }

    public override void UpdateAbility(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {

    }

    public override void OnExit(CharacterState characterState, Animator animator, AnimatorStateInfo stateInfo)
    {
        //Teleport(characterState, animator);
        //Debug.Log("Called Second");
    }

    public override void OnTransitionEnter(CharacterState characterState, Animator animator)
    {
        
    }

    public override void OnTransitionExit(CharacterState characterState, Animator animator)
    {
        
        //Debug.Log("Called Seconder");
    }

    private void Teleport(CharacterState characterState, Animator animator)
    {
        ledgeChecker = characterState.GetLedgeChecker(animator);
        GameObject anim = animator.gameObject;

        Vector3 end = ledgeChecker.GrabbedLedge.endPosition;
        Vector3 newEnd = new Vector3(anim.transform.localPosition.x, end.y, end.z);
        anim.transform.localPosition = newEnd;
        anim.transform.parent = null;
    }
}
