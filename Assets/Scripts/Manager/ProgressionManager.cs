using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Cinemachine;

public class ProgressionManager : MonoBehaviour
{
    public static ProgressionManager Instance;

    [SerializeField] private int GoalIndex;

    [SerializeField] private List<Goal> Goals = new List<Goal>();

    [SerializeField] private List<SubGoal> SubGoalQueue = new List<SubGoal>();

    [SerializeField] private CanvasGroup goalFader;

    [SerializeField] private float fadeTime = 0.5f;

    [SerializeField] private float ShowGoalTime = 10f;

    public bool ShowGoals
    {
        get { return showGoalUI; }
        set
        {
            showGoalUI = value;
            ActivateGoals();
        }
    }
    public bool showGoalUI;

    private float timer;

    private Coroutine fadingCo;

    private void Awake()
    {
        if(Instance != null)
        {
            Destroy(gameObject);
            return;
        }

        Instance = this;
    }

    private void ActivateGoals()
    {
        foreach(Goal g in Goals)
        {
            g.ActiveGoal = true;
        }
    }

    private void CheckSubGoalQueue()
    {
        if(SubGoalQueue.Count > 0)
        {
            //Debug.Log(SubGoalQueue[0].gameObject.name);

            SubGoalQueue[0].EnableSubGoal = true;

            if (fadingCo == null)
            {
                fadingCo = StartCoroutine(FadeSubGoalUIIn(SubGoalQueue[0]));
            }
        }
        else
        {
            //No SubGoalUI to fade in
            return;
        }
    }

    /// <summary>
    /// Adds a subgoal from an active goal
    /// </summary>
    public void AddSubGoalToQueue(SubGoal subgoal)
    {
        SubGoalQueue.Add(subgoal);
        CheckSubGoalQueue();
    }

    /// <summary>
    /// Removes a subgoal then checks if there is another subgoal in the queue
    /// </summary>
    /// <param name="subgoal">The subgoal to remove.</param>
    public void RemoveSubGoalFromQueue(SubGoal subgoal)
    {
        subgoal.EnableSubGoal = false;
        SubGoalQueue.Remove(subgoal);
        CheckSubGoalQueue();
    }

    public void RemoveSubGoal(SubGoal subgoal)
    {
        if(SubGoalQueue.Contains(subgoal))
        {
            if(!subgoal.Equals(SubGoalQueue[0]))
            {
                SubGoalQueue.Remove(subgoal);
                //Debug.Log("Removed subgoal");
            }
        }
    }

    public void InteruptGoals(Goal goal)
    {
        if(SubGoalQueue.Count > 0)
        {
            if (fadingCo != null)
            {
                StopCoroutine(fadingCo);
            }

            fadingCo = StartCoroutine(InteruptFadeSubGoalUIOut(SubGoalQueue[0], goal));
            return;
        }

        goal.QueueSubGoals();
    }

    public void InteruptGoal()
    {
        if (SubGoalQueue.Count > 0)
        {
            if (fadingCo != null)
            {
                StopCoroutine(fadingCo);
            }

            fadingCo = StartCoroutine(InteruptFadeSubGoalUIOut(SubGoalQueue[0], null));
            return;
        }
    }

    private void RemoveAllGoals(Goal goal)
    {
        foreach(SubGoal sub in SubGoalQueue)
        {
            sub.EnableSubGoal = false;
        }

        SubGoalQueue.Clear();

        if(goal != null)
        {
            goal.QueueSubGoals();
        }        
    }

    /// <summary>
    /// Method called when a subgoal is completed.
    /// </summary>
    /// <param name="subgoal"></param>
    public void CompletedSubGoal(SubGoal subgoal)
    {
        if (SubGoalQueue[0].Equals(subgoal))
        {
            if (fadingCo != null)
            {
                StopCoroutine(fadingCo);
            }
            fadingCo = StartCoroutine(FadeSubGoalUIOut(subgoal));
        }
        else
        {
            RemoveSubGoalFromQueue(subgoal);
        }
    }

    /// <summary>
    /// Fades in the current subgoal UI
    /// </summary>
    /// <returns></returns>
    private IEnumerator FadeSubGoalUIIn(SubGoal subgoal)
    {
        Debug.Log("Fade in");
        for(float i = 0; i < 1f; i += Time.unscaledDeltaTime * (1f / fadeTime))
        {
            goalFader.alpha = i;
            yield return null;
        }

        goalFader.alpha = 1f;
        subgoal.EnableSubGoalInput = true;
        fadingCo = null;
    }

    /// <summary>
    /// Fades out the current subgoal UI
    /// </summary>
    /// <returns></returns>
    private IEnumerator FadeSubGoalUIOut(SubGoal subgoal)
    {
        //Debug.Log("Fade out");
        subgoal.EnableSubGoalInput = false;
        for (float i = goalFader.alpha; i > 0; i -= Time.unscaledDeltaTime * (1f / fadeTime))
        {
            goalFader.alpha = i;
            yield return null;
        }

        goalFader.alpha = 0f;        
        fadingCo = null;
        RemoveSubGoalFromQueue(subgoal);
    }

    private IEnumerator InteruptFadeSubGoalUIOut(SubGoal subgoal, Goal goal)
    {
        //Debug.Log("Fade out");
        subgoal.EnableSubGoalInput = false;
        for (float i = goalFader.alpha; i > 0; i -= Time.unscaledDeltaTime * (1f / fadeTime))
        {
            goalFader.alpha = i;
            yield return null;
        }

        goalFader.alpha = 0f;
        fadingCo = null;
        RemoveAllGoals(goal);
    }
}
