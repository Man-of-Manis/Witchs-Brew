using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalPhoenix : SubGoal
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
