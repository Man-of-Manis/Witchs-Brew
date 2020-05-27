using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DropdownEvent : MonoBehaviour
{
<<<<<<< HEAD
    [SerializeField] private MainMenuManager mainMenuManager;

    void Start()
    {
        if(mainMenuManager != null && gameObject.name.Equals("Dropdown List"))
        {
            mainMenuManager.ResolutionOpen = true;
=======
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
>>>>>>> origin/Main_Menu
        }
    }

    private void OnDestroy()
    {
<<<<<<< HEAD
        if (mainMenuManager != null && gameObject.name.Equals("Dropdown List"))
        {
            mainMenuManager.ResolutionOpen = false;
=======
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
>>>>>>> origin/Main_Menu
        }
    }
}
