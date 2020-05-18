using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using TMPro;

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

    [Header("Confirmations")]
    [SerializeField] private GameObject continueConfim;
    [SerializeField] private GameObject noContinueConfim;
    [SerializeField] private GameObject newGameConfim;
    [SerializeField] private GameObject loadGameConfim;
    [SerializeField] private GameObject exitGameConfim;

    [Header("Options")]
    [SerializeField] private GameObject optionsMenu;
    [SerializeField] private GameObject audioButton;

    [Header("Audio")]
    [SerializeField] private GameObject audioMenu;    
    [SerializeField] private GameObject masterSlider;

    [Header("Video")]
    [SerializeField] private GameObject videoMenu;
    [SerializeField] private TMP_Dropdown resolutionDropdown;
    [SerializeField] private RectTransform resolutionTemplateSize;
    [SerializeField] private RectTransform itemSize;
    [SerializeField] private TMP_Dropdown qualityDropdown;

    private Button continueYesButton;
    private Button continueNoButton;

    private Button noContinueYesButton;
    private Button noContinueNoButton;

    private Button newGameYesButton;
    private Button newGameNoButton;

    private Button loadGameYesButton;
    private Button loadGameNoButton;

    private Button exitYesButton;
    private Button exitNoButton;

    [SerializeField] private GameObject currentSelectedMenu;
    [SerializeField] private List<GameObject> prevSelectedGameObject = new List<GameObject>();
    [SerializeField] private List<GameObject> prevSelectedMenu = new List<GameObject>();
    private bool hasSavedGame;
    #endregion

    private void Awake()
    {
        GetConfirmations();
    }

    private void Start()
    {
        VideoDropdownUpdate();
    }

    private void Update()
    {
        if(Input.GetButtonUp("Cancel"))
        {
            SetPrevMenu();
        }
    }

    /// <summary>
    /// Gets all the confirmation buttons
    /// </summary>
    private void GetConfirmations()
    {
        Confirmation(continueConfim, out continueYesButton, out continueNoButton);
        Confirmation(noContinueConfim, out noContinueYesButton, out noContinueNoButton);
        Confirmation(newGameConfim, out newGameYesButton, out newGameNoButton);
        Confirmation(loadGameConfim, out loadGameYesButton, out loadGameNoButton);
        Confirmation(exitGameConfim, out exitYesButton, out exitNoButton);
    }

    /// <summary>
    /// Gets the confirmation buttons for specified GO.
    /// </summary>
    /// <param name="confirmationGO">The parent GO of the buttons.</param>
    /// <param name="yes">The yes button.</param>
    /// <param name="no">The no button.</param>
    private void Confirmation(GameObject confirmationGO, out Button yes, out Button no)
    {
        yes = null;
        no = null;

        for (int i = 0; i < confirmationGO.transform.childCount; i++)
        {
            Button childButton = confirmationGO.transform.GetChild(i).GetComponent<Button>();

            if (childButton != null)
            {
                if (childButton.name.StartsWith("Yes"))
                {
                    yes = childButton;
                    continue;
                }

                if (childButton.name.StartsWith("No"))
                {
                    no = childButton;
                    continue;
                }
            }
        }        
    }

    #region Event System
    public void EventSelection(GameObject selection)
    {
        eventSystem.SetSelectedGameObject(null);
        eventSystem.SetSelectedGameObject(selection);
    }

    /// <summary>
    /// Activates menus and sets previous menu and selection.
    /// </summary>
    /// <param name="newMenu">The menu to activate.</param>
    /// <param name="prevMenu">The menu to deactivate and add to menu list.</param>
    /// <param name="prevSelection">The previously active selection to add to the selection list.</param>
    /// <param name="back">True when going to previous menu and selection.</param>
    private void ChangeMenu(GameObject newMenu, GameObject prevMenu, GameObject prevSelection = null, bool back = false)
    {
        currentSelectedMenu = newMenu;
        newMenu.SetActive(true);
        prevMenu.SetActive(false);

        if(!back)
        {
            MenuList(prevMenu, prevSelection);
        }        
    }

    /// <summary>
    /// Adds previous menu and selection to list when moving forward to new menu
    /// </summary>
    /// <param name="prevMenu">The previously active menu.</param>
    /// <param name="prevSelection">The previously active selection in previous menu.</param>
    private void MenuList(GameObject prevMenu, GameObject prevSelection)
    {
        if(!prevSelectedMenu.Contains(prevMenu))
        {
            prevSelectedMenu.Add(prevMenu);
        }

        if(!prevSelectedGameObject.Contains(prevSelection))
        {
            prevSelectedGameObject.Add(prevSelection);
        }
    }

    /// <summary>
    /// Reverts back to previous menu and selection
    /// </summary>
    private void SetPrevMenu()
    {
        if(prevSelectedMenu.Count > 0 && prevSelectedGameObject.Count > 0)
        {
            GameObject goTo = prevSelectedMenu[prevSelectedMenu.Count - 1];            
            ChangeMenu(goTo, currentSelectedMenu, null, true);
            EventSelection(prevSelectedGameObject[prevSelectedGameObject.Count - 1]);

            prevSelectedMenu.RemoveAt(prevSelectedMenu.Count - 1);
            prevSelectedGameObject.RemoveAt(prevSelectedGameObject.Count - 1);
        }        
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
            ChangeMenu(continueConfim, mainMenuGo, eventSystem.currentSelectedGameObject);
            EventSelection(continueNoButton.gameObject);
        }
        else
        {
            ChangeMenu(noContinueConfim, mainMenuGo, eventSystem.currentSelectedGameObject);
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
        ChangeMenu(newGameConfim, mainMenuGo, eventSystem.currentSelectedGameObject);
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

    #region Load Game

    #endregion

    #region Options
    /// <summary>
    /// Selectes the options button on the main menu.
    /// </summary>
    public void OptionsButton()
    {
        ChangeMenu(optionsMenu, mainMenuGo, eventSystem.currentSelectedGameObject);
        EventSelection(audioButton.gameObject);
    }

    public void OptionsBack()
    {
        SetPrevMenu();
    }
    #endregion

    #region Audio
    public void AudioButton()
    {
        ChangeMenu(audioMenu, optionsMenu, eventSystem.currentSelectedGameObject);
        EventSelection(masterSlider.gameObject);
    }

    public void AudioBack()
    {
        SetPrevMenu();
    }
    #endregion

    #region Video
    public void VideoButton()
    {
        ChangeMenu(videoMenu, optionsMenu, eventSystem.currentSelectedGameObject);
        EventSelection(resolutionDropdown.gameObject);
    }

    /// <summary>
    /// Updates the Resolution and QualityLevel Dropdowns
    /// </summary>
    public void VideoDropdownUpdate()
    {
        resolutionDropdown.ClearOptions();
        resolutionDropdown.AddOptions(GameSettings.Instance.GetResolutionStrings());
        resolutionDropdown.SetValueWithoutNotify(GameSettings.Instance.CurrentResolutionIndex);
        resolutionDropdown.RefreshShownValue();

        qualityDropdown.ClearOptions();
        qualityDropdown.AddOptions(new List<string>() { "Low", "Medium", "High" });
        qualityDropdown.SetValueWithoutNotify(GameSettings.Instance.GetQualityLevel());
        qualityDropdown.RefreshShownValue();

        resolutionTemplateSize.sizeDelta = new Vector2(resolutionTemplateSize.sizeDelta.x, resolutionDropdown.options.Count * itemSize.sizeDelta.y);
    }

    public void SetResolution()
    {
        GameSettings.Instance.SetResolution(resolutionDropdown.value);
    }

    public void DropdownItemPosition()
    {
        //resolutionDropdown
    }

    public void SetQualityLevel()
    {
        GameSettings.Instance.SetQualityLevel(qualityDropdown.value);
    }

    public void Videoback()
    {
        SetPrevMenu();
    }
    #endregion

    #region Quit
    public void ExitButton()
    {
        ChangeMenu(exitGameConfim, mainMenuGo, eventSystem.currentSelectedGameObject);
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
