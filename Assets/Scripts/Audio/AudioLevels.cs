using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class AudioLevels : MonoBehaviour
{
    [Header("Master Mixer")]
    [SerializeField] private AudioMixer masterMixer;

    [Header("Volume Levels")]
    [SerializeField] private float masterVol;
    [SerializeField] private float musicVol;
    [SerializeField] private float sfxVol;
    [SerializeField] private float ambientVol;
    [SerializeField] private float playerVol;
    [SerializeField] private float creatureVol;

    [Header("Volume Sliders")]
    [SerializeField] private Slider masterSlider;
    [SerializeField] private Slider musicSlider;
    [SerializeField] private Slider sfxSlider;
    [SerializeField] private Slider ambientSlider;
    [SerializeField] private Slider playerSlider;
    [SerializeField] private Slider creatureSlider;

    public void Start()
    {
        SetSavedVol();
        SetSavedSliders();
    }

    private void SetSavedVol()
    {
        SetMasterVol(masterVol);
        SetMusicVol(musicVol);
        SetSfxVol(sfxVol);
        SetAmbientVol(ambientVol);
        SetPlayerVol(playerVol);
        SetCreaturesVol(creatureVol);
    }

    private void SetSavedSliders()
    {
        masterSlider.value = masterVol;
        musicSlider.value = musicVol;
        sfxSlider.value = sfxVol;
        ambientSlider.value = ambientVol;
        playerSlider.value = playerVol;
        creatureSlider.value = creatureVol;
    }

    public void SetMasterVol(float vol)
    {
        masterMixer.SetFloat("masterVol", Mathf.Log10(vol) * 40f);
        masterVol = vol;
    }

    public void SetMusicVol(float vol)
    {
        masterMixer.SetFloat("musicVol", Mathf.Log10(vol) * 40f);
        musicVol = vol;
    }

    public void SetSfxVol(float vol)
    {
        masterMixer.SetFloat("sfxVol", Mathf.Log10(vol) * 40f);
        sfxVol = vol;
    }
    public void SetAmbientVol(float vol)
    {
        masterMixer.SetFloat("ambientVol", Mathf.Log10(vol) * 40f);
        ambientVol = vol;
    }
    public void SetPlayerVol(float vol)
    {
        masterMixer.SetFloat("playerVol", Mathf.Log10(vol) * 40f);
        playerVol = vol;
    }
    public void SetCreaturesVol(float vol)
    {
        masterMixer.SetFloat("creatureVol", Mathf.Log10(vol) * 40f);
        creatureVol = vol;
    }
}