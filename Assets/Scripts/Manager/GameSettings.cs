using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using System;

public class GameSettings : MonoBehaviour
{
    public static GameSettings Instance;

    public Settings settings;

    #region Events
    public event EventHandler<float> OnControlHoriHandler;
    public event EventHandler<float> OnControlVertHandler;
    public event EventHandler<bool> OnControllerInvertYHandler;
    #endregion

    #region Game Fields
    public float MouseHorizontal
    {
        get {return settings.mouseHorizontalSensitivity; }
        set {settings.mouseHorizontalSensitivity = value; }
    }

    public float MouseVertical
    {
        get { return settings.mouseVerticalSensitivity; }
        set { settings.mouseVerticalSensitivity = value; }
    }

    public float ControllerHorizontal
    {
        get { return settings.controllerHorizontalSensitivity; }
        set
        {
            settings.controllerHorizontalSensitivity = value;
            OnControlHoriHandler?.Invoke(this, value);
        }
    }

    public float ControllerVertical
    {
        get { return settings.controllerVerticalSensitivity; }
        set
        {
            settings.controllerVerticalSensitivity = value;
            OnControlVertHandler?.Invoke(this, value);
        }
    }

    public bool MouseInvert
    {
        get { return settings.mouseInvertYAxis; }
        set { settings.mouseInvertYAxis = value;}
    }

    public bool ControllerInvert
    {
        get { return settings.controllerInvertYAxis; }
        set { settings.controllerInvertYAxis = value;
            OnControllerInvertYHandler?.Invoke(this, value);
        }
    }
    #endregion

    #region Audio
    public float MasterVolume
    {
        get { return settings.masterVol; }
        set { settings.masterVol = value; }
    }

    public float MusicVolume
    {
        get { return settings.masterVol; }
        set { settings.masterVol = value; }
    }

    public float SFXVolume
    {
        get { return settings.sfxVol; }
        set { settings.sfxVol = value; }
    }

    public float PlayerVolume
    {
        get { return settings.playerVol; }
        set { settings.playerVol = value; }
    }

    public float CreatureVolume
    {
        get { return settings.creatureVol; }
        set { settings.creatureVol = value; }
    }

    #endregion

    #region Video
    public Resolution CurrentResolution
    {
        get { return currentResolution; }
        set { currentResolution = value; }
    }
    private Resolution currentResolution;

    public int CurrentResolutionIndex
    {
        get { return resolutionIndex; }
        set { resolutionIndex = value; }
    }
    private int resolutionIndex;

    public string CurrentResolutionString
    {
        get { return CurrentResolution.width + " x " + CurrentResolution.height; }
    }

    Resolution[] resolutions;
    List<string> options = new List<string>();

    public bool IsFullscreen
    {
        get { return settings.isFullscreen; }
        set { settings.isFullscreen = value; }
    }


    public int CurrentRenderScaleIndex
    {
        get { return renderScaleIndex; }
        set { renderScaleIndex = value; }
    }
    private int renderScaleIndex = 4;

    List<string> renderScaleOptions = new List<string>() { "0.1", "0.25", "0.5", "0.75", "1", "1.25", "1.5", "1.75", "2" };
    List<float> scaleFloats = new List<float>() { 0.1f, 0.25f, 0.5f, 0.75f, 1f, 1.25f, 1.5f, 1.75f, 2f };

    public int CurrentShadowDistanceIndex
    {
        get { return shadowDistanceIndex; }
        set { shadowDistanceIndex = value; }
    }
    private int shadowDistanceIndex = 3;

    List<string> shadowDistanceOptions = new List<string>() { "None", "Low", "Medium", "High"};
    List<float> shadowDistanceFloats = new List<float>() { 0f, 20f, 100f, 300f };

    #endregion

    void Awake()
    {
        if(Instance != null)
        {
            Destroy(gameObject);
            return;
        }

        Instance = this;

        DontDestroyOnLoad(gameObject);
    }

    private void Start()
    {
        LoadSettings();

        InstantiateResolutions();
        GetCurrentRenderScale();
        GetCurrentShadowDistance();
    }

    private void OnDisable()
    {
        SaveSettings();
    }

    /// <summary>
    /// Saves the game settings to a file.
    /// </summary>
    private void SaveSettings()
    {
        string settingsPath = Application.dataPath + "/Settings.cfg";

        string jsonExport = JsonUtility.ToJson(settings);
        File.WriteAllText(settingsPath, jsonExport);
    }

    /// <summary>
    /// Loads the game settings from a file if it exists.
    /// </summary>
    private void LoadSettings()
    {
        string settingsPath = Application.dataPath + "/Settings.cfg";

        if (File.Exists(settingsPath))
        {
            string jsonImport = File.ReadAllText(settingsPath);

            try
            {
                settings = JsonUtility.FromJson<Settings>(jsonImport);
                //Debug.Log(jsonImport);
            }

            catch (System.Exception e)
            {
                Debug.Log("An error occured while reading settings. Settings have be reset to default.");
                SaveSettings();
                FirstTimeLoadResolution();
            }
            
        }
        else
        {
            SaveSettings();
            FirstTimeLoadResolution();
        }
    }


    #region Video

    /// <summary>
    /// Sets the settings resolution to the computer monitor's current resolution the first time the game is run.
    /// </summary>
    private void FirstTimeLoadResolution()
    {
        settings.resolution = Screen.currentResolution.width + " x " + Screen.currentResolution.height;
    }

    /// <summary>
    /// Converts the settings resolution string to a usable resolution type.
    /// </summary>
    /// <param name="settingsResolution">The settings resolution string.</param>
    /// <returns></returns>
    private int[] ResolutionFromString(string settingsResolution)
    {
        int[] resolution = new int[2];
        List<string> resolutionArray = settingsResolution.Split('x').ToList();

        if(resolutionArray.Count() != 2)
        {
            FirstTimeLoadResolution();
            resolutionArray.Clear();
            resolutionArray = settings.resolution.Split('x').ToList();
        }

        for(int i = 0; i < resolutionArray.Count; i++)
        {
            resolutionArray[i].Trim(' ');
            
            if(!int.TryParse(resolutionArray[0], out resolution[0]))
            {
                resolution[0] = Screen.currentResolution.width;
            }

            if (!int.TryParse(resolutionArray[1], out resolution[1]))
            {
                resolution[1] = Screen.currentResolution.height;
            }
        }

        return resolution;
    }

    /// <summary>
    /// Gets all available resolutions and the currently enabled resolution.
    /// </summary>
    private void InstantiateResolutions()
    {
        resolutions = Screen.resolutions;
        int[] resolutionFromFile = ResolutionFromString(settings.resolution);

        for (int i = 0; i < resolutions.Length; i++)
        {
            string option = resolutions[i].width + " x " + resolutions[i].height;
            options.Add(option);

            if(resolutions[i].width == resolutionFromFile[0] && resolutions[i].height == resolutionFromFile[1])
            {
                CurrentResolution = resolutions[i];
                CurrentResolutionIndex = i;
                Debug.Log("Resolution found from file. Setting game to: " + resolutions[i].width + " x " + resolutions[i].height);
                return;
            }
        }

        //If a resolution match is not found. Set the resolution to the monitor resolution.
        for (int i = 0; i < resolutions.Length; i++)
        {
            string option = resolutions[i].width + " x " + resolutions[i].height;
            options.Add(option);

            if (resolutions[i].width == Screen.currentResolution.width && resolutions[i].height == Screen.currentResolution.height)
            {
                CurrentResolution = resolutions[i];
                CurrentResolutionIndex = i;
                settings.resolution = CurrentResolutionString;
                Debug.Log("Resolution was not found from the file. Setting game to: " + resolutions[i].width + " x " + resolutions[i].height);
            }
        }
    }

    /// <summary>
    /// Gets a list of strings representing the available resolutions for the current monitor.
    /// </summary>
    /// <returns></returns>
    public List<string> GetResolutionStrings()
    {
        return options;
    }

    /// <summary>
    /// Changes the current resolution based on the given index.
    /// </summary>
    /// <param name="resolutionIndex"></param>
    public void SetResolution(int resolutionIndex)
    {
        CurrentResolution = resolutions[resolutionIndex];
        Screen.SetResolution(CurrentResolution.width, CurrentResolution.height, Screen.fullScreen);
        settings.resolution = CurrentResolutionString;
        Debug.Log("Resolution changed to: " + CurrentResolutionString);
    }

    private void GetFullscreenToggle()
    {

    }

    public void SetFullscreenToggle(bool value)
    {

    }

    /// <summary>
    /// Gets the current MSAA Quality setting.
    /// </summary>
    /// <returns></returns>
    public int GetMSAAQuality()
    {
        Dictionary<int, int> msaaQuality = new Dictionary<int, int>()
        {
            {1, 0 },
            {2, 1 },
            {4, 2 },
            {8, 3 }
        };

        return msaaQuality[UniversalRenderPipeline.asset.msaaSampleCount];
    }

    /// <summary>
    /// Sets the MSAA Quality of the game.
    /// </summary>
    /// <param name="quality">The MSAA Quality to set to.</param>
    public void SetMSAAQuality(int quality)
    {
        Dictionary<int, int> msaaQuality = new Dictionary<int, int>()
        {
            {0, 1 },
            {1, 2 },
            {2, 4 },
            {3, 8 },
        };

        UniversalRenderPipeline.asset.msaaSampleCount = msaaQuality[quality];
    }

    /// <summary>
    /// Gets the current render scale and sets the index to it.
    /// </summary>
    private void GetCurrentRenderScale()
    {
        for(int i = 0; i < scaleFloats.Count; i++)
        {
            if(Mathf.Approximately(UniversalRenderPipeline.asset.renderScale, scaleFloats[i]))
            {
                CurrentRenderScaleIndex = i;
                return;
            }
        }

        Debug.Log("The Render scale did not match any options.");
    }

    /// <summary>
    /// Returns the string list of Render Scale options.
    /// </summary>
    /// <returns></returns>
    public List<string> GetRenderScaleOptions()
    {
        return renderScaleOptions;
    }

    /// <summary>
    /// Sets the Render Scale based on the scale index;
    /// </summary>
    /// <param name="index">The options index.</param>
    public void SetRenderScale(int index)
    {
        UniversalRenderPipeline.asset.renderScale = scaleFloats[index];
    }

    /// <summary>
    /// Gets the current shadow distance and sets the index to it.
    /// </summary>
    private void GetCurrentShadowDistance()
    {
        for (int i = 0; i < shadowDistanceFloats.Count; i++)
        {
            if (Mathf.Approximately(UniversalRenderPipeline.asset.shadowDistance, shadowDistanceFloats[i]))
            {
                CurrentShadowDistanceIndex = i;
                return;
            }
        }

        Debug.Log("The shadow distance did not match any options.");
    }

    /// <summary>
    /// Returns the string list of Shadow Distance options.
    /// </summary>
    /// <returns></returns>
    public List<string> GetShadowDistanceOptions()
    {
        return shadowDistanceOptions;
    }

    /// <summary>
    /// Sets the Shadow Distance based on the scale index;
    /// </summary>
    /// <param name="index">The options index.</param>
    public void SetShadowDistance(int index)
    {
        UniversalRenderPipeline.asset.shadowDistance = shadowDistanceFloats[index];
    }

    #endregion

    /*
    /// <summary>
    /// Gets the current render scale.
    /// </summary>
    /// <returns></returns>
    public float GetRenderScale()
    {
        return UniversalRenderPipeline.asset.renderScale;
    }

    /// <summary>
    /// Set the Render Scale of the game. This doesn't change the screen resolution but the resolution the game is render at.
    /// </summary>
    /// <param name="scale">The Render Scale to set the game to.</param>
    public void SetRenderScale(float scale)
    {
        UniversalRenderPipeline.asset.renderScale = scale;
    }

    /// <summary>
    /// Gets the realtime shadow render distance.
    /// </summary>
    /// <returns></returns>
    public float GetRealtimeShadowDistance()
    {
        return UniversalRenderPipeline.asset.shadowDistance;
    }

    /// <summary>
    /// Sets the disance from the camera that realtime shadows will render.
    /// </summary>
    /// <param name="distance">The cutoff distance for shadows.</param>
    public void SetRealtimeShadowDistance(float distance)
    {
        UniversalRenderPipeline.asset.shadowDistance = distance;
    }

    public void SetRenderPipelineQuality(int quality)
    {
        GraphicsSettings.renderPipelineAsset = highQuality;
    }
    */
}
