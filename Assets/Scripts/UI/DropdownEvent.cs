using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DropdownEvent : MonoBehaviour
{
    [SerializeField] private MainMenuManager mainMenuManager;

    void Start()
    {
        if(mainMenuManager != null && gameObject.name.Equals("Dropdown List"))
        {
            mainMenuManager.ResolutionOpen = true;
        }
    }

    private void OnDestroy()
    {
        if (mainMenuManager != null && gameObject.name.Equals("Dropdown List"))
        {
            mainMenuManager.ResolutionOpen = false;
        }
    }
}
