using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalPotionMenu : SubGoal
{
    protected override void SubGoalInput()
    {
        //The subgoal to complete
        if (pInput.Button3)
        {
            Completed = true;
            goal.CompletedSubGoal(this);
        }
    }
}
