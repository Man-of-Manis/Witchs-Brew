using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalPhoenixDelay : SubGoal
{
    protected override void SubGoalInput()
    {
        
    }

    public void CompletedGoal()
    {
        Completed = true;
        goal.CompletedSubGoal(this);
    }
}
