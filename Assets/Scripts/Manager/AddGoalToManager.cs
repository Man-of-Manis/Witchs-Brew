using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AddGoalToManager : MonoBehaviour
{
    private ProgressionManager pManager;
    private Goal goal;

    private void Start()
    {
        pManager = ProgressionManager.Instance;
        goal = GetComponent<Goal>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            Debug.Log(other.gameObject.name);
            goal.ActiveGoal = true;
            Destroy(this);
        }
    }
}
