using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DropdownEvent : MonoBehaviour
{
    private MainMenuManager mainMenuManager;
    private PauseMenu pauseMenu;

    void Start()
    {
        mainMenuManager = GetComponentInParent<MainMenuManager>();
        pauseMenu = GetComponentInParent<PauseMenu>();

        if (gameObject.name.Equals("Dropdown List"))
        {
            if(mainMenuManager != null)
            {
                mainMenuManager.ResolutionOpen = true;
            }
            
            if(pauseMenu != null)
            {
                pauseMenu.ResolutionOpen = true;
            }
        }
    }

    private void OnDestroy()
    {
        mainMenuManager = GetComponentInParent<MainMenuManager>();
        pauseMenu = GetComponentInParent<PauseMenu>();

        if (gameObject.name.Equals("Dropdown List"))
        {
            if (mainMenuManager != null)
            {
                mainMenuManager.ResolutionOpen = false;
            }

            if (pauseMenu != null)
            {
                pauseMenu.ResolutionOpen = false;
            }
        }
    }
}
