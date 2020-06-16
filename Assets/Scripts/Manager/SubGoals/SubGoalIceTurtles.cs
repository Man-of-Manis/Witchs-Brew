using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SubGoalIceTurtles : SubGoal
{
    Coroutine co;
    protected override void SubGoalInput()
    {
        if(co == null && !Completed)
        {
            co = StartCoroutine(IceTurtle());
        }        
    }

    IEnumerator IceTurtle()
    {
        yield return new WaitForSeconds(5f);
        Completed = true;
        goal.CompletedSubGoal(this);
    }
}
