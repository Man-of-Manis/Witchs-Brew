using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class SubGoal : MonoBehaviour
{
    [Tooltip("The UI representing this subgoal")]
    public GameObject subGoalUI;

    [Tooltip("True if the subgoal has been completed")]
    public bool Completed;

    [HideInInspector] public PlayerInput pInput;
    [HideInInspector] public Goal goal;

    public bool EnableSubGoal
    {
        get { return enabledSubGoal; }
        set
        {
            enabledSubGoal = value;
            subGoalUI.SetActive(enabledSubGoal);
        }
    }
    private bool enabledSubGoal;

    private void Start()
    {
        pInput = PlayerInput.Instance;
    }

    /// <summary>
    /// Gives the subgoal reference to its parent goal.
    /// </summary>
    /// <param name="attachedGoal">The goal reference.</param>
    public void SetGoal(Goal attachedGoal)
    {
        goal = attachedGoal;
    }
}
