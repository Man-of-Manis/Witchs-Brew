using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalAim : SubGoal
{
    protected override void SubGoalInput()
    {
        //The subgoal to complete
        if (pInput.AimInput)
        {
            Completed = true;
            goal.CompletedSubGoal(this);
        }
    }
}
