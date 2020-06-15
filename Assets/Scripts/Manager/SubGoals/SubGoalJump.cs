using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalJump : SubGoal
{
    protected override void SubGoalInput()
    {
        if (pInput.JumpInput)
        {
            Completed = true;
            goal.CompletedSubGoal(this);
        }
    }
}
