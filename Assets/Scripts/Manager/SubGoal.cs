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
            if(subGoalUI != null)
            {
                subGoalUI.SetActive(enabledSubGoal);
            }
            
        }
    }
    [SerializeField] private bool enabledSubGoal;

    public bool EnableSubGoalInput
    {
        get { return enableInput; }
        set { enableInput = value; }
    }
    [SerializeField] private bool enableInput;

    private void Start()
    {
        pInput = PlayerInput.Instance;
        Initialize();
    }

    /// <summary>
    /// Gives the subgoal reference to its parent goal.
    /// </summary>
    /// <param name="attachedGoal">The goal reference.</param>
    public void SetGoal(Goal attachedGoal)
    {
        goal = attachedGoal;
    }

    private void Update()
    {
        if (EnableSubGoal && EnableSubGoalInput && !Completed)
        {
            SubGoalInput();
        }        
    }

    protected virtual void Initialize()
    {

    }

    protected abstract void SubGoalInput();
}
