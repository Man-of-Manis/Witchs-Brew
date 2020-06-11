using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalAim : SubGoal
{
    void Update()
    {
        if (EnableSubGoal && !Completed)
        {
            //The subgoal to complete
            if (pInput.AimInput)
            {
                Completed = true;
                goal.CompletedSubGoal();
            }
        }
    }
}
