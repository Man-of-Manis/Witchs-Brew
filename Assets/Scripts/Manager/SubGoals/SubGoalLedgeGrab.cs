using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalLedgeGrab : SubGoal
{
    private PlayerLedgeDetection ledgeDetection;

    protected override void Initialize()
    {
        ledgeDetection = FindObjectOfType<PlayerLedgeDetection>();
        ledgeDetection.OnLedgeGrabHandler += SubGoalLedgeGrab_OnLedgeGrabHandler;
    }

    private void SubGoalLedgeGrab_OnLedgeGrabHandler(object sender, System.EventArgs e)
    {
        if(EnableSubGoal && EnableSubGoalInput && !Completed)
        {
            Completed = true;
            goal.CompletedSubGoal(this);
            ledgeDetection.OnLedgeGrabHandler -= SubGoalLedgeGrab_OnLedgeGrabHandler;
        }
    }

    protected override void SubGoalInput()
    {
        
    }
}
