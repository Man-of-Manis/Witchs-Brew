using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalAirPotion : SubGoal
{
    Coroutine co;

    protected override void SubGoalInput()
    {
        if (co == null)
        {
            co = StartCoroutine(DelayedCompletion());
        }
    }

    IEnumerator DelayedCompletion()
    {
        yield return new WaitForSeconds(2f);
        Completed = true;
        goal.CompletedSubGoal(this);
    }
}
