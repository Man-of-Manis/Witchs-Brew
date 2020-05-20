using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;

public class GameSettings : MonoBehaviour
{
    public static GameSettings Instance;

    #region Audio
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
    #endregion

    #region Quality
    #endregion

    // Start is called before the first frame update
    void Awake()
    {
        if(Instance != null)
        {
            Destroy(this);
        }

        Instance = this;

        DontDestroyOnLoad(this);

        InstantiateResolutions();
    }

    /// <summary>
    /// Gets all available resolutions and the currently enabled resolution.
    /// </summary>
    private void InstantiateResolutions()
    {
        resolutions = Screen.resolutions;

        for (int i = 0; i < resolutions.Length; i++)
        {
            string option = resolutions[i].width + " x " + resolutions[i].height;
            options.Add(option);

            if(resolutions[i].width == Screen.currentResolution.width && resolutions[i].height == Screen.currentResolution.height)
            {
                CurrentResolution = resolutions[i];
                CurrentResolutionIndex = i;
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
        Debug.Log("Resolution changed to: " + CurrentResolutionString);
    }

    /// <summary>
    /// Gets the current Quality Level index.
    /// </summary>
    /// <returns></returns>
    public int GetQualityLevel()
    {
        //UniversalRenderPipeline.asset.msaaSampleCount = MsaaQuality.
        return QualitySettings.GetQualityLevel();
    }

    /// <summary>
    /// Sets the Quality Level to the selected index value.
    /// </summary>
    /// <param name="qualityIndex">The index value to set the quality to.</param>
    public void SetQualityLevel(int qualityIndex)
    {
        QualitySettings.SetQualityLevel(qualityIndex);
        Debug.Log("Quality Level changed to: " + qualityIndex);
    }
}
