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
