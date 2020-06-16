using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AddGoalToManagerDelay : MonoBehaviour
{
    [SerializeField] private float Delay;
    private ProgressionManager pManager;
    private Goal goal;
    private Coroutine co;
    private bool prevPlayed;

    private void Start()
    {
        pManager = ProgressionManager.Instance;
        goal = GetComponent<Goal>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            StartDelay();
        }
    }

    public void StartDelay()
    {
        if (co == null && !prevPlayed)
        {
            co = StartCoroutine(ActivateGoalDelay());
            prevPlayed = true;
        }
    }

    public void Complete()
    {
        if(co != null)
        {
            StopCoroutine(co);
            
        }

        Destroy(this, 2f);
    }

    IEnumerator ActivateGoalDelay()
    {
        yield return new WaitForSeconds(Delay);
        goal.ActiveGoal = true;
    }
}
