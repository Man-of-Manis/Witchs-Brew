using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Goal : MonoBehaviour
{
    public int SubGoalIndex;
    public SubGoal[] subGoals;
    public bool ShowImmediately;
    public bool InteruptOtherGoals;

    public bool ActiveGoal
    {
        get { return active; }
        set
        {
            active = value;

            if(InteruptOtherGoals)
            {
                InteruptGoals();
                return;
            }
            
            QueueSubGoals();
        }
    }
    [SerializeField] private bool active;

    [SerializeField] private bool startOnEnabled;

    private void Awake()
    {
        SendGoalReference();
    }

    private void Start()
    {
        if (startOnEnabled)
        {
            ActiveGoal = true;
        }
    }

    private void SendGoalReference()
    {
        for (int i = 0; i < subGoals.Length; i++)
        {
            //Give a reference of the goal to subgoals
            subGoals[i].SetGoal(this);
        }
    }

    private void InteruptGoals()
    {
        ProgressionManager.Instance.InteruptGoals(this);
    }

    public void QueueSubGoals()
    {
        foreach(SubGoal sub in subGoals)
        {
            ProgressionManager.Instance.AddSubGoalToQueue(sub);
        }
    }

    public void RemoveFromPool(SubGoal sub)
    {
        AddGoalToManagerDelay delay = GetComponent<AddGoalToManagerDelay>();

        if (delay != null)
        {
            delay.Complete();
        }

        ProgressionManager.Instance.RemoveSubGoal(sub);
    }

    public void CompletedSubGoal(SubGoal subgoal)
    {
        ProgressionManager.Instance.CompletedSubGoal(subgoal);

        AddGoalToManagerDelay delay = GetComponent<AddGoalToManagerDelay>();

        if(delay != null)
        {
            delay.Complete();
        }
    }
}
