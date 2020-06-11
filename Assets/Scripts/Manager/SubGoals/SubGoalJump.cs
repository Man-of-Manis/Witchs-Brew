using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalJump : SubGoal
{
    void Update()
    {
        if(EnableSubGoal && !Completed)
        {
            if(pInput.JumpInput)
            {
                Completed = true;
                goal.CompletedSubGoal();
            }            
        }
    }
}
