using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PhoenixChicken : MonoBehaviour
{
    private EffectsPoint ePoint;
    private bool prevOnFire;
    private SubGoalPhoenix subGoal;
    private SubGoalPhoenixDelay subGoalDelay;

    private void Start()
    {
        ePoint = GetComponent<EffectsPoint>();
        subGoal = FindObjectOfType<SubGoalPhoenix>();
        subGoalDelay = FindObjectOfType<SubGoalPhoenixDelay>();       
    }

    private void Update()
    {
        if(ePoint.OnFire)
        {
            if(subGoal.EnableSubGoal)
            {
                subGoal.CompletedGoal();
                subGoalDelay.CompletedGoal();
                Destroy(this);
            }    
            else if(subGoalDelay.EnableSubGoal)
            {
                //subGoal.CompletedGoal();
                subGoalDelay.CompletedGoal();
                Destroy(this);
            }
        }

        if (subGoal == null)
        {
            Destroy(this);
        }

        if (subGoal != null)
        {
            if (subGoal.Completed)
            {
                Destroy(this);
            }
        }
    }
}
