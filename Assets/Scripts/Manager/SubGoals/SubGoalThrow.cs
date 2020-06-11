using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalThrow : SubGoal
{
    void Update()
    {
        if (EnableSubGoal && !Completed)
        {
            //The subgoal to complete
            if (pInput.UseInput)
            {
                Completed = true;
                goal.CompletedSubGoal();
            }
        }
    }
}
