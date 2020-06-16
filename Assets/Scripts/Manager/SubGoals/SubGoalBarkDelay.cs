using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalBarkDelay : SubGoal
{
    private ItemController itemCom;

    protected override void Initialize()
    {
        itemCom = FindObjectOfType<ItemController>();
        itemCom.PickedUpNewIngredient += ItemCom_PickedUpNewIngredient;
    }

    private void ItemCom_PickedUpNewIngredient(object sender, int e)
    {
        if (EnableSubGoal && EnableSubGoalInput && !Completed)
        {
            if (e.Equals((int)PotionType.Fire))
            {
                Completed = true;
                goal.CompletedSubGoal(this);
            }
        }
    }

    protected override void SubGoalInput()
    {
        
    }

    private void Update()
    {
        if (itemCom.ingredientAmount[1] > 0 && !Completed)
        {
            Completed = true;
            EnableSubGoal = false;
            goal.RemoveFromPool(this);
        }
    }

}
