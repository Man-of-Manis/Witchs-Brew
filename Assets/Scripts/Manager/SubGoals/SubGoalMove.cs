using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalMove : SubGoal
{
    protected override void SubGoalInput()
    {
        //The subgoal to complete
        if (pInput.MoveInput != Vector2.zero)
        {
            Completed = true;
            goal.CompletedSubGoal(this);
        }
    }
}
