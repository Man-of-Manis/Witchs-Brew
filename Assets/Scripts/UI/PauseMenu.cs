using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.EventSystems;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class PauseMenu : MonoBehaviour
{
    #region Fields
    [Header("Menus")]
    [SerializeField] private GameObject pauseMenuParent;
    [SerializeField] private GameObject pauseMenu;
    [SerializeField] private GameObject optionsMenu;
    [SerializeField] private GameObject quitMainMenu;
    [SerializeField] private GameObject quitDesktopMenu;
    [SerializeField] private EventSystem eventSystem;

    [Header("Pause Menu")]
    [SerializeField] private Button resumeButton;
    [SerializeField] private Button optionsButton;
    [SerializeField] private Button quitMenuButton;
    [SerializeField] private Button quitDesktopButton;
    [SerializeField] private Button quitMenuYesButton;
    [SerializeField] private Button quitDesktopYesButton;
    [SerializeField] private Button quitMenuNoButton;
    [SerializeField] private Button quitDesktopNoButton;

    [Header("Options")]
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

    [Header("Video")]
    [SerializeField] private GameObject videoMenu;
    [SerializeField] private TMP_Dropdown resolutionDropdown;
    [SerializeField] private RectTransform resolutionTemplateSize;
    [SerializeField] private RectTransform itemSize;
    [SerializeField] private Toggle fullscreenToggle;
    [SerializeField] private TMP_Dropdown MSAADropdown;
    [SerializeField] private TMP_Dropdown renderScaleDropdown;
    [SerializeField] private TMP_Dropdown shadowDistanceDropdown;

    [Header("Selections")]
    [SerializeField] private GameObject currentSelectedMenu;
    [SerializeField] private List<GameObject> prevSelectedGameObject = new List<GameObject>();
    [SerializeField] private List<GameObject> prevSelectedMenu = new List<GameObject>();

    [SerializeField] private GameObject UISelectedGO;
    [SerializeField] private GameObject prevSelectedGO;

    public bool ResolutionOpen
    {
        get { return resolutionOpen; }
        set { resolutionOpen = value; }
    }
    private bool resolutionOpen;

    private float previousTimescale = 1f;
    #endregion

    void Start()
    {
        
    }

    void Update()
    {
        Inputs();

        AlwaysHaveSelection();
    }

    private void Inputs()
    {
        if (PlayerInput.Instance.Menu)
        {
            TogglePauseMenu();
        }

        if(Input.GetButtonUp("Cancel"))
        {
            SetPrevMenu();
        }
    }

    private void TogglePauseMenu()
    {
        pauseMenuParent.SetActive(!pauseMenuParent.activeSelf);
        pauseMenu.SetActive(true);

        if (pauseMenuParent.activeSelf)
        {
            previousTimescale = Time.timeScale;
            Time.timeScale = 0f;
            EventSelection(resumeButton.gameObject);
        }
        else
        {
            Time.timeScale = previousTimescale;
        }

        
    }

    private void AlwaysHaveSelection()
    {
        if (eventSystem.currentSelectedGameObject == null)
        {
            eventSystem.SetSelectedGameObject(prevSelectedGO);
        }

        prevSelectedGO = UISelectedGO;
        UISelectedGO = eventSystem.currentSelectedGameObject;
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

        if (!back)
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
        if (!prevSelectedMenu.Contains(prevMenu))
        {
            prevSelectedMenu.Add(prevMenu);
        }

        if (!prevSelectedGameObject.Contains(prevSelection))
        {
            prevSelectedGameObject.Add(prevSelection);
        }
    }

    /// <summary>
    /// Reverts back to previous menu and selection
    /// </summary>
    private void SetPrevMenu()
    {
        //If no dropdowns are open
        if (!ResolutionOpen)
        {
            //If previous objects have been selected, go back to previous menu.
            if (prevSelectedMenu.Count > 0 && prevSelectedGameObject.Count > 0)
            {
                eventSystem.SetSelectedGameObject(null);
                GameObject goTo = prevSelectedMenu[prevSelectedMenu.Count - 1];
                ChangeMenu(goTo, currentSelectedMenu, null, true);
                EventSelection(prevSelectedGameObject[prevSelectedGameObject.Count - 1]);


                prevSelectedMenu.RemoveAt(prevSelectedMenu.Count - 1);
                prevSelectedGameObject.RemoveAt(prevSelectedGameObject.Count - 1);
            }
            //If there are no previous objects in the selection list, go to exit game confirmation.
            else
            {
                eventSystem.SetSelectedGameObject(null);
                TogglePauseMenu();

                //ChangeMenu(exitGameConfim, mainMenuGo, eventSystem.currentSelectedGameObject);
                //EventSelection(exitNoButton.gameObject);
            }
        }
    }
    #endregion

    #region Pause Menu
    /// <summary>
    /// Resumes the game after closing the pause menu.
    /// </summary>
    public void ResumeGame()
    {
        TogglePauseMenu();
    }

    /// <summary>
    /// Opens quick to main menu confirmation menu.
    /// </summary>
    public void QuitMenuButton()
    {
        ChangeMenu(quitMainMenu, pauseMenu, quitMenuButton.gameObject);
        EventSelection(quitMenuNoButton.gameObject);
    }

    /// <summary>
    /// Opens quit to desktop confirmation menu.
    /// </summary>
    public void QuitDesktopButton()
    {
        ChangeMenu(quitDesktopMenu, pauseMenu, quitDesktopButton.gameObject);
        EventSelection(quitDesktopNoButton.gameObject);
    }

    /// <summary>
    /// Disables buttons and Quits to main menu.
    /// </summary>
    public void QuitMenuYesButton()
    {
        quitMenuYesButton.interactable = false;
        quitMenuNoButton.interactable = false;
        QuitToMenu();
    }

    /// <summary>
    /// Disables buttons and Quits to desktop.
    /// </summary>
    public void QuitDesktopYesButton()
    {
        quitDesktopYesButton.interactable = false;
        quitDesktopNoButton.interactable = false;
        QuitToDesktop();
    }

    /// <summary>
    /// Returns to pause menu with quit menu selection.
    /// </summary>
    public void QuitMenuNoButton()
    {
        SetPrevMenu();
    }

    /// <summary>
    /// Returns to pause menu with quit desktop selection.
    /// </summary>
    public void QuitDesktopNoButton()
    {
        SetPrevMenu();
    }

    /// <summary>
    /// Loads the the Main Menu.
    /// </summary>
    public void QuitToMenu()
    {
        LoadingScreenBar.Instance.LoadLevel(0);
    }

    /// <summary>
    /// Quits the game.
    /// </summary>
    public void QuitToDesktop()
    {
#if UNITY_EDITOR
        EditorApplication.isPlaying = false;
#else
        Application.Quit();
#endif
    }
    #endregion

    #region Options
    /// <summary>
    /// Opens the options menu.
    /// </summary>
    public void OptionsButton()
    {
        ChangeMenu(optionsMenu, pauseMenu, eventSystem.currentSelectedGameObject);
        EventSelection(gameButton.gameObject);
    }

    /// <summary>
    /// Exits the options menu.
    /// </summary>
    public void OptionsBack()
    {
        SetPrevMenu();
    }
    #endregion

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
    public void Videoback()
    {
        SetPrevMenu();
    }
    #endregion
}
