using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalDoubleJump : SubGoal
{
    UtilityController controller;

    protected override void Initialize()
    {
        controller = FindObjectOfType<UtilityController>();
        controller.OnDoubleJumpHandler += Controller_OnDoubleJumpHandler;
    }

    private void Controller_OnDoubleJumpHandler(object sender, System.EventArgs e)
    {
        if(EnableSubGoal && EnableSubGoalInput && !Completed)
        {
            Completed = true;
            goal.CompletedSubGoal(this);
            controller.OnDoubleJumpHandler -= Controller_OnDoubleJumpHandler;
        }        
    }

    protected override void SubGoalInput()
    {
    }
}
