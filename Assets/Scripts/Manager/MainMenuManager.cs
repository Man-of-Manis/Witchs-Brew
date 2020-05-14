using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.Events;
using System.Reflection;
using UnityEngine.EventSystems;

public class MainMenuManager : MonoBehaviour
{
    #region Fields
    [Header("Main Menu")]
    [SerializeField] private GameObject mainMenuGo;
    [SerializeField] private EventSystem eventSystem;

    [Header("Main Menu Buttons")]
    [SerializeField] private GameObject continueButton;
    [SerializeField] private GameObject newGameButton;
    [SerializeField] private GameObject loadGameButton;
    [SerializeField] private GameObject optionsButton;
    [SerializeField] private GameObject exitButton;

    [Header("Continue Buttons")]
    [SerializeField] private Button continueYesButton;
    [SerializeField] private Button continueNoButton;

    [Header("No Continue Buttons")]
    [SerializeField] private Button noContinueYesButton;
    [SerializeField] private Button noContinueNoButton;

    [Header("New Game Buttons")]
    [SerializeField] private Button newGameYesButton;
    [SerializeField] private Button newGameNoButton;

    [Header("Load Game Buttons")]
    [SerializeField] private Button loadGameYesButton;
    [SerializeField] private Button loadGameNoButton;

    [Header("Options Buttons")]

    [Header("Exit Buttons")]
    [SerializeField] private Button exitYesButton;
    [SerializeField] private Button exitNoButton;

    [Header("Confirmations")]
    [SerializeField] private GameObject continueConfim;
    [SerializeField] private GameObject noContinueConfim;
    [SerializeField] private GameObject newGameConfim;
    [SerializeField] private GameObject loadGameConfim;
    [SerializeField] private GameObject exitGameConfim;

    private GameObject currentSelectedGameObject;
    private List<GameObject> prevSelectedGameObject;
    private bool hasSavedGame;
    #endregion

    #region Event System
    public void EventSelection(GameObject selection)
    {
        eventSystem.SetSelectedGameObject(null);
        eventSystem.SetSelectedGameObject(selection);
    }
    #endregion

    #region Continue
    /// <summary>
    /// Determines which continue option to show.
    /// </summary>
    public void Continue()
    {
        if (hasSavedGame)
        {
            continueConfim.SetActive(true);
            mainMenuGo.SetActive(false);
            EventSelection(continueNoButton.gameObject);
        }
        else
        {
            noContinueConfim.SetActive(true);
            mainMenuGo.SetActive(false);
            EventSelection(noContinueNoButton.gameObject);
        }
    }

    #region Continues Confirm
    /// <summary>
    /// Continues a previously saved game.
    /// </summary>
    public void ContinueYesButton()
    {
        LoadingScreenBar.Instance.LoadLevel(1);
        continueYesButton.interactable = false;
        continueNoButton.interactable = false;
    }

    public void ContinueNoButton()
    {
        mainMenuGo.SetActive(true);
        continueConfim.SetActive(false);
        EventSelection(continueButton);
    }
    #endregion

    #region No Continues Confirm
    /// <summary>
    /// Creates a new game to start from the Continue options.
    /// </summary>
    public void NoContinueYesButton()
    {
        LoadingScreenBar.Instance.LoadLevel(1);
        noContinueYesButton.interactable = false;
        noContinueNoButton.interactable = false;
    }
    public void NoContinuesNoButton()
    {
        mainMenuGo.SetActive(true);
        noContinueConfim.SetActive(false);
        EventSelection(continueButton);
    }
    #endregion
    #endregion

    #region New Game
    public void NewGameButton()
    {
        newGameConfim.SetActive(true);
        mainMenuGo.SetActive(false);
        EventSelection(newGameNoButton.gameObject);
    }

    /// <summary>
    /// Creates a new game to start from the New Game options.
    /// </summary>
    /// <param name="index"></param>
    public void NewGameYesButton()
    {
        LoadingScreenBar.Instance.LoadLevel(1);
        newGameYesButton.interactable = false;
        newGameNoButton.interactable = false;
    }

    public void NewGameNoButton()
    {
        mainMenuGo.SetActive(true);
        newGameConfim.SetActive(false);        
        EventSelection(newGameButton);
    }
    #endregion

    #region Options

    #endregion

    #region Quit
    public void ExitButton()
    {
        exitGameConfim.SetActive(true);
        mainMenuGo.SetActive(false);
        EventSelection(exitNoButton.gameObject);
    }

    /// <summary>
    /// Quits the game in either the editor or built game.
    /// </summary>
    public void ExitYesButton()
    {
#if UNITY_EDITOR
        if(Application.isEditor)
        {
            EditorApplication.isPlaying = false;
            return;
        }
#endif

        Application.Quit();
    }

    public void ExitNoButton()
    {
        mainMenuGo.SetActive(true);
        exitGameConfim.SetActive(false);
        EventSelection(exitButton);
    }
    #endregion
}
