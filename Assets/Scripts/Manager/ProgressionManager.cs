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

    [SerializeField] private CanvasGroup goalFader;

    [SerializeField] private float fadeTime = 0.5f;

    [SerializeField] private float ShowGoalTime = 10f;

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

    private void Update()
    {
        Timer();
        ShowCurrentGoal();
    }

    /// <summary>
    /// Increments the timer every frame
    /// </summary>
    private void Timer()
    {
        timer += Time.deltaTime;
    }

    /// <summary>
    /// Checks if the current goal should be displayed
    /// </summary>
    private void ShowCurrentGoal()
    {
        if(Goals[GoalIndex].ShowImmediately)
        {
            if (fadingCo == null)
            {
                fadingCo = StartCoroutine(FadeGoalIn());
            }
        }
        else
        {
            if(timer >= ShowGoalTime)
            {
                if (fadingCo == null)
                {
                    fadingCo = StartCoroutine(FadeGoalIn());
                }
            }
        }
    }

    /// <summary>
    /// Called when a subgoal is completed.
    /// </summary>
    /// <param name="currentGoal">The goal from which the subgoal was called.</param>
    public void CompletedSubGoal(Goal currentGoal)
    {
        timer = 0f;

        // Checks if a goal is already displayed. If so, fade that goal out.
        if (fadingCo != null)
        {
            StopCoroutine(fadingCo);
            fadingCo = StartCoroutine(FadeSubGoalOut(currentGoal));
        }

        else
        {
            IterateSubGoal(currentGoal);
        }
    }

    /// <summary>
    /// Increments to next subgoal.
    /// </summary>
    /// <param name="currentGoal">The goal the subgoal is attached to.</param>
    private void IterateSubGoal(Goal currentGoal)
    {
        currentGoal.IterateSubGoal();
    }

    /// <summary>
    /// Called when all subgoals of a goal are completed.
    /// </summary>
    /// <param name="currentGoal">The goal from which all subgoals were completed.</param>
    public void CompletedGoal(Goal currentGoal)
    {
        if(Goals.Contains(currentGoal))
        {
            int currnetGoalIndex = Goals.IndexOf(currentGoal);

            if(currnetGoalIndex == (Goals.Count - 1))
            {
                //No More Goals
                Debug.Log("No more goals!");
                return;
            }

            GoalIndex += 1;
        }

        // Checks if a goal is already displayed. If so, fade that goal out.
        if (fadingCo != null)
        {
            StopCoroutine(fadingCo);
            fadingCo = StartCoroutine(FadeGoalOut());
        }
    }

    /// <summary>
    /// Fades in the current subgoal UI
    /// </summary>
    /// <returns></returns>
    private IEnumerator FadeGoalIn()
    {
        for(float i = 0; i < 1f; i += Time.unscaledDeltaTime * (1f / fadeTime))
        {
            goalFader.alpha = i;
            yield return null;
        }

        goalFader.alpha = 1f;
    }

    /// <summary>
    /// Fades out the current subgoal UI
    /// </summary>
    /// <returns></returns>
    private IEnumerator FadeGoalOut()
    {
        for (float i = goalFader.alpha; i > 0; i -= Time.unscaledDeltaTime * (1f / fadeTime))
        {
            goalFader.alpha = i;
            yield return null;
        }

        goalFader.alpha = 0f;
        fadingCo = null;
    }

    /// <summary>
    /// Fades out the current subgoal then increments the goal index of that subgoal.
    /// </summary>
    /// <param name="currentGoal">The goal to increment.</param>
    /// <returns></returns>
    private IEnumerator FadeSubGoalOut(Goal currentGoal)
    {
        for (float i = goalFader.alpha; i > 0; i -= Time.unscaledDeltaTime * (1f / fadeTime))
        {
            goalFader.alpha = i;
            yield return null;
        }

        goalFader.alpha = 0f;

        //Moves to next subgoal in current goal.
        IterateSubGoal(currentGoal);

        fadingCo = null;
    }
}
