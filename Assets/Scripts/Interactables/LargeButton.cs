using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class LargeButton : MonoBehaviour
{
    public enum ButtonCreature { Turtle, Chicken, Both};

    public ButtonCreature useCreature;

    public UnityEvent activate;
    public UnityEvent deactivate;

    private void Start()
    {
        deactivate.Invoke();
    }

    private void OnTriggerEnter(Collider other)
    {
        ButtonAction(other, true);
    }

    private void OnTriggerExit(Collider other)
    {
        ButtonAction(other, false);
    }

    void ButtonAction(Collider other, bool enter)
    {
        Creatures creature = other.GetComponent<Creatures>();

        if (creature != null)
        {
            if (useCreature.ToString().Equals(creature.creature.ToString()))
            {
                ActionType(enter);
            }

            else if (useCreature == ButtonCreature.Both)
            {
                ActionType(enter);
            }
        }
    }

    void ActionType(bool enter)
    {
        if(enter)
        {
            activate.Invoke();
        }

        else
        {
            deactivate.Invoke();
        }
    }
}
