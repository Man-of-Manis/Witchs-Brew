using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalCamera : SubGoal
{
    protected override void SubGoalInput()
    {
        //The subgoal to complete
        if (pInput.RSInput != Vector2.zero)
        {
            Completed = true;
            goal.CompletedSubGoal(this);
        }
    }
}
