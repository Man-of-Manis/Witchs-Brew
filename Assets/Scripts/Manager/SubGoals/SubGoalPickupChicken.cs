using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalPickupChicken : SubGoal
{
    PlayerItemPickup playerPickup;

    protected override void Initialize()
    {
        playerPickup = FindObjectOfType<PlayerItemPickup>();
        playerPickup.OnChickenPickupHandler += PlayerPickup_OnChickenPickupHandler;
    }

    private void PlayerPickup_OnChickenPickupHandler(object sender, System.EventArgs e)
    {
        if(EnableSubGoal && EnableSubGoalInput && !Completed)
        {
            Completed = true;
            goal.CompletedSubGoal(this);
            playerPickup.OnChickenPickupHandler -= PlayerPickup_OnChickenPickupHandler;
        }
    }

    protected override void SubGoalInput()
    {
        
    }
}
