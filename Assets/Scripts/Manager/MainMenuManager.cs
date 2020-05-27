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
<<<<<<< HEAD
    [SerializeField] private GameObject audioButton;

    [Header("Audio")]
    [SerializeField] private GameObject audioMenu;    
    [SerializeField] private GameObject masterSlider;
=======
    [SerializeField] private GameObject gameButton;

    [Header("Game")]
    [SerializeField] private GameObject gameMenu;
    [SerializeField] private Slider mouseHoriSlider;
    [SerializeField] private Slider mouseVertSlider;
    [SerializeField] private Slider controllerHoriSlider;
    [SerializeField] private Slider controllerVertSlider;
    [SerializeField] private TMP_InputField mouseHoriInput;
    [SerializeField] private TMP_InputField mouseVertInput;
    [SerializeField] private TMP_InputField controllerHoriInput;
    [SerializeField] private TMP_InputField controllerVertInput;
    [SerializeField] private Toggle mouseInvertToggle;
    [SerializeField] private Toggle controllerInvertToggle;

    [Header("Audio")]
    [SerializeField] private GameObject audioMenu;    
    [SerializeField] private Slider masterSlider;
    [SerializeField] private Slider musicSlider;
    [SerializeField] private Slider sfxSlider;
    [SerializeField] private Slider playerSlider;
    [SerializeField] private Slider creatureSlider;
    [SerializeField] private TMP_InputField masterInput;
    [SerializeField] private TMP_InputField musicInput;
    [SerializeField] private TMP_InputField sfxInput;
    [SerializeField] private TMP_InputField playerInput;
    [SerializeField] private TMP_InputField creatureInput;
>>>>>>> origin/Main_Menu

    [Header("Video")]
    [SerializeField] private GameObject videoMenu;
    [SerializeField] private TMP_Dropdown resolutionDropdown;
    [SerializeField] private RectTransform resolutionTemplateSize;
    [SerializeField] private RectTransform itemSize;
<<<<<<< HEAD
    [SerializeField] private TMP_Dropdown qualityDropdown;
=======
    [SerializeField] private Toggle fullscreenToggle;
    [SerializeField] private TMP_Dropdown qualityDropdown;
    [SerializeField] private TMP_Dropdown MSAADropdown;
    [SerializeField] private TMP_Dropdown renderScaleDropdown;
    [SerializeField] private TMP_Dropdown shadowDistanceDropdown;

    /*
    [SerializeField] private Slider renderScaleSlider;
    [SerializeField] private TMP_InputField renderScaleInputField;
    [SerializeField] private Slider shadowDistanceSlider;
    [SerializeField] private TMP_InputField ShadowDistanceInputField;
    */
>>>>>>> origin/Main_Menu

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

<<<<<<< HEAD
=======
    [Header("Selections")]
>>>>>>> origin/Main_Menu
    [SerializeField] private GameObject currentSelectedMenu;
    [SerializeField] private List<GameObject> prevSelectedGameObject = new List<GameObject>();
    [SerializeField] private List<GameObject> prevSelectedMenu = new List<GameObject>();

    [SerializeField] private GameObject UISelectedGO;
    [SerializeField] private GameObject prevSelectedGO;
    private bool hasSavedGame;

    public bool ResolutionOpen
    {
        get { return resolutionOpen; }
        set {resolutionOpen = value; }
    }
    private bool resolutionOpen;
    #endregion

    private void Awake()
    {
        GetConfirmations();
    }

<<<<<<< HEAD
    private void Start()
    {
        VideoDropdownUpdate();
    }

=======
>>>>>>> origin/Main_Menu
    private void Update()
    {
        if(Input.GetButtonUp("Cancel"))
        {
            SetPrevMenu();
        }
<<<<<<< HEAD

        if(eventSystem.currentSelectedGameObject == null)
=======
    }

    private void LateUpdate()
    {
        if (eventSystem.currentSelectedGameObject == null)
>>>>>>> origin/Main_Menu
        {
            eventSystem.SetSelectedGameObject(prevSelectedGO);
        }

        prevSelectedGO = UISelectedGO;
        UISelectedGO = eventSystem.currentSelectedGameObject;
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
    /// <summary>
    /// Sets the next object to be selected by the controller.
    /// </summary>
    /// <param name="selection">The next object to select.</param>
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
<<<<<<< HEAD
        if(!ResolutionOpen)
        {
            if (prevSelectedMenu.Count > 0 && prevSelectedGameObject.Count > 0)
            {
=======
        //If no dropdowns are open
        if(!ResolutionOpen)
        {
            //If previous objects have been selected, go back to previous menu.
            if (prevSelectedMenu.Count > 0 && prevSelectedGameObject.Count > 0)
            {
                eventSystem.SetSelectedGameObject(null);
>>>>>>> origin/Main_Menu
                GameObject goTo = prevSelectedMenu[prevSelectedMenu.Count - 1];
                ChangeMenu(goTo, currentSelectedMenu, null, true);
                EventSelection(prevSelectedGameObject[prevSelectedGameObject.Count - 1]);

<<<<<<< HEAD
                prevSelectedMenu.RemoveAt(prevSelectedMenu.Count - 1);
                prevSelectedGameObject.RemoveAt(prevSelectedGameObject.Count - 1);
            }
            else
            {
=======

                prevSelectedMenu.RemoveAt(prevSelectedMenu.Count - 1);
                prevSelectedGameObject.RemoveAt(prevSelectedGameObject.Count - 1);
            }
            //If there are no previous objects in the selection list, go to exit game confirmation.
            else
            {
                eventSystem.SetSelectedGameObject(null);
>>>>>>> origin/Main_Menu
                ChangeMenu(exitGameConfim, mainMenuGo, eventSystem.currentSelectedGameObject);
                EventSelection(exitNoButton.gameObject);
            }
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
<<<<<<< HEAD
        EventSelection(audioButton.gameObject);
    }

=======
        EventSelection(gameButton.gameObject);
    }

    /// <summary>
    /// Exits the options menu.
    /// </summary>
>>>>>>> origin/Main_Menu
    public void OptionsBack()
    {
        SetPrevMenu();
    }
    #endregion

<<<<<<< HEAD
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

        resolutionTemplateSize.sizeDelta = new Vector2(resolutionTemplateSize.sizeDelta.x, resolutionDropdown.options.Count * itemSize.sizeDelta.y + 8f);
    }

    public void SetResolution()
    {
        GameSettings.Instance.SetResolution(resolutionDropdown.value);
    }

    public void SetFullscreen(bool isFullscreen)
    {
        GameSettings.Instance.SetFullscreen(isFullscreen);
        //GameSettings.Instance.SetResolution(resolutionDropdown.value);
    }

    public void ResolutionEventOpened()
    {
        Debug.Log("Opened");
    }

    public void ResolutionEventClosed()
    {
        Debug.Log("Closed");
    }

    public void DropdownItemPosition()
    {
        //resolutionDropdown
    }

    public void SetQualityLevel()
    {
        GameSettings.Instance.SetQualityLevel(qualityDropdown.value);
    }

=======
    #region Game
    /// <summary>
    /// Initializes the game settings from the save file.
    /// </summary>
    private void GameSettingsInitialize()
    {
        GetMouseHoriztonalSensitivity();
        GetMouseVerticalSensitivity();
        GetControllerHoriztonalSensitivity();
        GetControllerVerticalSensitivity();
        GetMouseInvertToggle();
        GetControllerInvertToggle();
    }

    /// <summary>
    /// Opens the game menu.
    /// </summary>
    public void GameButton()
    {
        GameSettingsInitialize();
        ChangeMenu(gameMenu, optionsMenu, eventSystem.currentSelectedGameObject);
        EventSelection(mouseHoriSlider.gameObject);
    }

    /// <summary>
    /// Gets the mouse horizontal sensitivity from the save file.
    /// </summary>
    private void GetMouseHoriztonalSensitivity()
    {
        float value = GameSettings.Instance.MouseHorizontal;
        mouseHoriSlider.SetValueWithoutNotify(value);
        mouseHoriInput.SetTextWithoutNotify(value.ToString());
    }

    /// <summary>
    /// Gets the mouse vertical sensitivity from the save file.
    /// </summary>
    private void GetMouseVerticalSensitivity()
    {
        float value = GameSettings.Instance.MouseVertical;
        mouseVertSlider.SetValueWithoutNotify(value);
        mouseVertInput.SetTextWithoutNotify(value.ToString());
    }

    /// <summary>
    /// Gets the controller horizontal sensitivity from the save file.
    /// </summary>
    private void GetControllerHoriztonalSensitivity()
    {
        float value = GameSettings.Instance.ControllerHorizontal;
        controllerHoriSlider.SetValueWithoutNotify(value);
        controllerHoriInput.SetTextWithoutNotify(value.ToString());
    }

    /// <summary>
    /// Gets the controller vertical sensitivity from the save file.
    /// </summary>
    private void GetControllerVerticalSensitivity()
    {
        float value = GameSettings.Instance.ControllerVertical;
        controllerVertSlider.SetValueWithoutNotify(value);
        controllerVertInput.SetTextWithoutNotify(value.ToString());
    }

    /// <summary>
    /// Gets the mouse invert value from the save file.
    /// </summary>
    private void GetMouseInvertToggle()
    {
        mouseInvertToggle.isOn = GameSettings.Instance.MouseInvert;
    }

    /// <summary>
    /// Gets the controller invert value from the save file.
    /// </summary>
    private void GetControllerInvertToggle()
    {
        controllerInvertToggle.isOn = GameSettings.Instance.ControllerInvert;
    }

    /// <summary>
    /// Sets the mouse horizontal sensitivity and saves it to Settings.
    /// </summary>
    /// <param name="sensitivity">The sensitivity value to set.</param>
    public void SetMouseHorizontalSensitivity(float sensitivity)
    {

    }

    /// <summary>
    /// Sets the mouse vertical sensitivity and saves it to Settings.
    /// </summary>
    /// <param name="sensitivity">The sensitivity value to set.</param>
    public void SetMouseVerticalSensitivity(float sensitivity)
    {

    }

    /// <summary>
    /// Sets the controller horizontal sensitivity and saves it to Settings.
    /// </summary>
    /// <param name="sensitivity">The sensitivity value to set.</param>
    public void SetControllerHorizontalSensitivity(float sensitivity)
    {
        GameSettings.Instance.ControllerHorizontal = sensitivity;
        controllerHoriInput.SetTextWithoutNotify(sensitivity.ToString());
    }

    /// <summary>
    /// Sets the controller vertical sensitivity and saves it to Settings.
    /// </summary>
    /// <param name="sensitivity">The sensitivity value to set.</param>
    public void SetControllerVerticalSensitivity(float sensitivity)
    {
        GameSettings.Instance.ControllerVertical = sensitivity;
        controllerVertInput.SetTextWithoutNotify(sensitivity.ToString());
    }

    /// <summary>
    /// Sets the mouse invert value and saves it to the Settings.
    /// </summary>
    /// <param name="value">The value to set the mouse invert to.</param>
    public void MouseInvertToggle(bool value)
    {
        GameSettings.Instance.MouseInvert = value;
    }

    /// <summary>
    /// Sets the controller invert value and saves it to the Settings.
    /// </summary>
    /// <param name="value">The value to set the controller invert to.</param>
    public void ControllerInvertToggle(bool value)
    {
        GameSettings.Instance.ControllerInvert = value;
    }

    /// <summary>
    /// Exits the game menu.
    /// </summary>
    public void GameBack()
    {
        SetPrevMenu();
    }
    #endregion

    #region Audio
    /// <summary>
    /// Initializes the audio settings from the save file.
    /// </summary>
    private void AudioSettingsInitialize()
    {
        GetMasterVolume();
        GetMusicVolume();
        GetSFXVolume();
        GetPlayerVolume();
        GetCreatureVolume();
    }

    /// <summary>
    /// Opens the audio menu.
    /// </summary>
    public void AudioButton()
    {
        AudioSettingsInitialize();
        ChangeMenu(audioMenu, optionsMenu, eventSystem.currentSelectedGameObject);
        EventSelection(masterSlider.gameObject);
    }

    /// <summary>
    /// Gets the master volume from Settings.
    /// </summary>
    private void GetMasterVolume()
    {
        masterSlider.SetValueWithoutNotify(GameSettings.Instance.MasterVolume * 10f);
        masterInput.SetTextWithoutNotify(GameSettings.Instance.MasterVolume.ToString());
    }

    /// <summary>
    /// Gets the music volume from Settings.
    /// </summary>
    private void GetMusicVolume()
    {
        musicSlider.SetValueWithoutNotify(GameSettings.Instance.MusicVolume * 10f);
        musicInput.SetTextWithoutNotify(GameSettings.Instance.MusicVolume.ToString());
    }

    /// <summary>
    /// Gets the sfx volume from Settings.
    /// </summary>
    private void GetSFXVolume()
    {
        sfxSlider.SetValueWithoutNotify(GameSettings.Instance.SFXVolume * 10f);
        sfxInput.SetTextWithoutNotify(GameSettings.Instance.SFXVolume.ToString());
    }

    /// <summary>
    /// Gets the player volume from Settings.
    /// </summary>
    private void GetPlayerVolume()
    {
        playerSlider.SetValueWithoutNotify(GameSettings.Instance.PlayerVolume * 10f);
        playerInput.SetTextWithoutNotify(GameSettings.Instance.PlayerVolume.ToString());
    }

    /// <summary>
    /// Gets the creature volume from Settings.
    /// </summary>
    private void GetCreatureVolume()
    {
        creatureSlider.SetValueWithoutNotify(GameSettings.Instance.CreatureVolume * 10f);
        creatureInput.SetTextWithoutNotify(GameSettings.Instance.CreatureVolume.ToString());
    }

    /// <summary>
    /// Sets the master volume and saves it to Settings.
    /// </summary>
    /// <param name="volume">The volume to set to.</param>
    public void SetMasterVolume(float volume)
    {
        GameSettings.Instance.MasterVolume = volume / 10f;
        masterInput.SetTextWithoutNotify(GameSettings.Instance.MasterVolume.ToString());
    }

    /// <summary>
    /// Sets the music volume and saves it to Settings.
    /// </summary>
    /// <param name="volume">The volume to set to.</param>
    public void SetMusicVolume(float volume)
    {
        GameSettings.Instance.MusicVolume = volume / 10f;
        musicInput.SetTextWithoutNotify(GameSettings.Instance.MusicVolume.ToString());
    }

    /// <summary>
    /// Sets the sfx volume and saves it to Settings.
    /// </summary>
    /// <param name="volume">The volume to set to.</param>
    public void SetSFXVolume(float volume)
    {
        GameSettings.Instance.SFXVolume = volume / 10f;
        sfxInput.SetTextWithoutNotify(GameSettings.Instance.SFXVolume.ToString());
    }

    /// <summary>
    /// Sets the player volume and saves it to Settings.
    /// </summary>
    /// <param name="volume">The volume to set to.</param>
    public void SetPlayerVolume(float volume)
    {
        GameSettings.Instance.PlayerVolume = volume / 10f;
        playerInput.SetTextWithoutNotify(GameSettings.Instance.PlayerVolume.ToString());
    }

    /// <summary>
    /// Sets the creature volume and saves it to Settings.
    /// </summary>
    /// <param name="volume">The volume to set to.</param>
    public void SetCreatureVolume(float volume)
    {
        GameSettings.Instance.CreatureVolume = volume / 10f;
        creatureInput.SetTextWithoutNotify(GameSettings.Instance.CreatureVolume.ToString());
    }

    /// <summary>
    /// Exits the audio menu.
    /// </summary>
    public void AudioBack()
    {
        SetPrevMenu();
    }
    #endregion

    #region Video
    /// <summary>
    /// Updates the Resolution and QualityLevel Dropdowns
    /// </summary>
    private void VideoSettingsInitialize()
    {
        GetResolution();
        GetFullscreenToggle();
        GetMSAAQuality();
        GetRenderScale();
        GetShadowDistance();
    }

    /// <summary>
    /// Opens the Video Menu
    /// </summary>
    public void VideoButton()
    {
        VideoSettingsInitialize();
        ChangeMenu(videoMenu, optionsMenu, eventSystem.currentSelectedGameObject);
        EventSelection(resolutionDropdown.gameObject);
    }

    /// <summary>
    /// Gets the prefered resolution from Settings
    /// </summary>
    private void GetResolution()
    {
        resolutionDropdown.ClearOptions();
        resolutionDropdown.AddOptions(GameSettings.Instance.GetResolutionStrings());
        resolutionDropdown.SetValueWithoutNotify(GameSettings.Instance.CurrentResolutionIndex);
        resolutionDropdown.RefreshShownValue();
        resolutionTemplateSize.sizeDelta = new Vector2(resolutionTemplateSize.sizeDelta.x, resolutionDropdown.options.Count * itemSize.sizeDelta.y + 8f);
    }

    /// <summary>
    /// Gets the prefered fullscreen setting from Settings.
    /// </summary>
    private void GetFullscreenToggle()
    {
        fullscreenToggle.isOn = GameSettings.Instance.IsFullscreen;
    }

    /// <summary>
    /// Gets the prefered MSAA quality from Settings.
    /// </summary>
    private void GetMSAAQuality()
    {
        MSAADropdown.SetValueWithoutNotify(GameSettings.Instance.GetMSAAQuality());
    }

    /// <summary>
    /// Gets the prefered render scale from Settings.
    /// </summary>
    private void GetRenderScale()
    {
        renderScaleDropdown.ClearOptions();
        renderScaleDropdown.AddOptions(GameSettings.Instance.GetRenderScaleOptions());
        renderScaleDropdown.SetValueWithoutNotify(GameSettings.Instance.CurrentRenderScaleIndex);
        RectTransform renderScaleTemplateRect = renderScaleDropdown.transform.Find("Template").GetComponent<RectTransform>();
        renderScaleTemplateRect.sizeDelta =
            new Vector2(renderScaleTemplateRect.sizeDelta.x, renderScaleDropdown.options.Count * itemSize.sizeDelta.y + 8f);
        renderScaleDropdown.RefreshShownValue();
    }

    /// <summary>
    /// Gets the prefered shadow distance from Settings.
    /// </summary>
    private void GetShadowDistance()
    {
        shadowDistanceDropdown.ClearOptions();
        shadowDistanceDropdown.AddOptions(GameSettings.Instance.GetShadowDistanceOptions());
        shadowDistanceDropdown.SetValueWithoutNotify(GameSettings.Instance.CurrentShadowDistanceIndex);
        RectTransform shadowDistanceTemplateRect = shadowDistanceDropdown.transform.Find("Template").GetComponent<RectTransform>();
        shadowDistanceTemplateRect.sizeDelta =
            new Vector2(shadowDistanceTemplateRect.sizeDelta.x, shadowDistanceDropdown.options.Count * itemSize.sizeDelta.y + 8f);
        shadowDistanceDropdown.RefreshShownValue();
    }

    /// <summary>
    /// Sets the resolution to the selection and saves it to Settings.
    /// </summary>
    public void SetResolution()
    {
        GameSettings.Instance.SetResolution(resolutionDropdown.value);
    }

    /// <summary>
    /// Sets fullscreen on/off and saves it to the Settings.
    /// </summary>
    /// <param name="value">The value of fullscreen.</param>
    public void SetFullscreenToggle(bool value)
    {
        GameSettings.Instance.IsFullscreen = value;
    }

    /// <summary>
    /// Sets the quality of MSAA for the game and saves it to the Settings.
    /// </summary>
    public void SetMSAAQuality()
    {
        GameSettings.Instance.SetMSAAQuality(MSAADropdown.value);
    }

    /// <summary>
    /// Sets the render scale to the list index and saves it to the Settings.
    /// </summary>
    /// <param name="scaleIndex">The list index of the render scale.</param>
    public void SetRenderScale(int scaleIndex)
    {
        GameSettings.Instance.SetRenderScale(scaleIndex);
    }

    /// <summary>
    /// Sets the shadow distance to the list index and saves it to the Settings.
    /// </summary>
    /// <param name="distanceIndex">The shadow distance index.</param>
    public void SetShadowDistance(int distanceIndex)
    {
        GameSettings.Instance.SetShadowDistance(distanceIndex);
    }

    /// <summary>
    /// Exits the video menu and applies next gameobject selection.
    /// </summary>
>>>>>>> origin/Main_Menu
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
