using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalCraft : SubGoal
{
    void Update()
    {
        if (EnableSubGoal && !Completed)
        {
            //The subgoal to complete
            if (pInput.Button2)
            {
                Completed = true;
                goal.CompletedSubGoal();
            }
        }
    }
}
