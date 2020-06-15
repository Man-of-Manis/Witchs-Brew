using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalCraft : SubGoal
{
    protected override void SubGoalInput()
    {
        //The subgoal to complete
        if (pInput.Button2)
        {
            Completed = true;
            goal.CompletedSubGoal(this);
        }
    }
}
