using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Goal : MonoBehaviour
{
    public int SubGoalIndex;
    public SubGoal[] subGoals;
    public bool ShowImmediately;

    private void Awake()
    {
        for(int i = 0; i < subGoals.Length; i++)
        {
            if(i == 0)
            {
                subGoals[i].EnableSubGoal = true;
            }

            subGoals[i].SetGoal(this);
        }
    }

    public void CompletedSubGoal()
    {
        ProgressionManager.Instance.CompletedSubGoal(this);
    }

    private void CompletedGoal()
    {
        ProgressionManager.Instance.CompletedGoal(this);
    }

    public void IterateSubGoal()
    {
        //All subgoals completed
        if(SubGoalIndex >= (subGoals.Length - 1))
        {
            for (int i = 0; i < subGoals.Length; i++)
            {
                subGoals[i].EnableSubGoal = false;
            }

            CompletedGoal();
            return;
        }

        SubGoalIndex++;

        for (int i = 0; i < subGoals.Length; i++)
        {
            subGoals[i].EnableSubGoal = (i == SubGoalIndex);
        }
    }
}
