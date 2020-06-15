using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalThrow : SubGoal
{
    protected override void SubGoalInput()
    {
        //The subgoal to complete
        if (pInput.UseInput)
        {
            Completed = true;
            goal.CompletedSubGoal(this);
        }
    }
}
