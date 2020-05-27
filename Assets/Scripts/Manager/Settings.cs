using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Settings
{
    [Header("Input")]
    public float mouseHorizontalSensitivity = 1f;
    public float mouseVerticalSensitivity = 1f;
    public float controllerHorizontalSensitivity = 1f;
    public float controllerVerticalSensitivity = 1f;
    public bool mouseInvertYAxis = false;
    public bool controllerInvertYAxis = false;


    [Header("Audio")]
    public float masterVol = 1f;
    public float musicVol = 1f;
    public float sfxVol = 1f;
    public float playerVol = 1f;
    public float creatureVol = 1f;

    [Header("Video")]
    public string resolution = "800 x 600";
    public bool isFullscreen = true;
    public int mSAAQuality = 8;
    public float fOV = 90f;
    public float renderScale = 1f;
    public float shadowDistance = 300f;
}
