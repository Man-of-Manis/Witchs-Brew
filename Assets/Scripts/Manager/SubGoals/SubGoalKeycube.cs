using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalKeycube : SubGoal
{
    PlayerItemPickup itemPickup;
    Coroutine co;

    protected override void Initialize()
    {
        itemPickup = FindObjectOfType<PlayerItemPickup>();
        itemPickup.OnKeyCubePickupHandler += ItemPickup_OnKeyCubePickupHandler;
    }

    private void ItemPickup_OnKeyCubePickupHandler(object sender, bool e)
    {
        if(!e)
        {
            if (!Completed && !goal.ActiveGoal)
            {
                goal.ActiveGoal = true;
            }
        }
    }

    IEnumerator CompleteDelay()
    {
        yield return new WaitForSeconds(4f);
        Completed = true;
        goal.CompletedSubGoal(this);
        itemPickup.OnKeyCubePickupHandler -= ItemPickup_OnKeyCubePickupHandler;
    }
    protected override void SubGoalInput()
    {
        if(co == null && !Completed)
        {
            co = StartCoroutine(CompleteDelay());
        }
    }
}
