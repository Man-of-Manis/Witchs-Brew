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

    private MeshRenderer pRend;
    private MeshRenderer cRend;

    [SerializeField] private Material turtleMat;
    [SerializeField] private Material chickenMat;
    [SerializeField] private Material bothMat;

    /*
    private void OnValidate()
    {
        pRend = GetComponent<MeshRenderer>();
        cRend = transform.GetChild(0).GetComponent<MeshRenderer>();

        switch ((int)useCreature)
        {
            case 0:
                SetMaterial(turtleMat);
                break;
            case 1:
                SetMaterial(chickenMat);
                break;
            case 2:
                SetMaterial(bothMat);
                break;
        }
    }
    */

    /// <summary>
    /// Sets the material of the button to the creature's material color
    /// </summary>
    /// <param name="mat"></param>
    private void SetMaterial(Material mat)
    {
        pRend.material = mat;
        cRend.material = mat;
    }

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

    /// <summary>
    /// Checks if the designated creature pressed the button
    /// </summary>
    /// <param name="other">The collider of the GameObject that pressed the button</param>
    /// <param name="hasEntered">GameObject entered or exited the trigger.</param>
    void ButtonAction(Collider other, bool hasEntered)
    {
        Creatures creature = other.GetComponent<Creatures>();

        if (creature != null)
        {
            if (useCreature.ToString().Equals(creature.creature.ToString()))
            {
                ActionType(hasEntered);
            }

            else if (useCreature == ButtonCreature.Both)
            {
                ActionType(hasEntered);
            }
        }
    }

    void ActionType(bool hasEntered)
    {
        if(hasEntered)
        {
            activate.Invoke();
        }

        else
        {
            deactivate.Invoke();
        }
    }
}
