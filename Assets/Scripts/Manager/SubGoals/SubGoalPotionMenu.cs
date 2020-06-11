using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalPotionMenu : SubGoal
{
    void Update()
    {
        if (EnableSubGoal && !Completed)
        {
            //The subgoal to complete
            if(pInput.Button3)
            {
                Completed = true;
                goal.CompletedSubGoal();
            }            
        }
    }
}
