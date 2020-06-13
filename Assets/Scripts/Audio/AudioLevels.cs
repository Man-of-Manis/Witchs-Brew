using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class AudioLevels : MonoBehaviour
{
    private FMOD.Studio.Bus master;
    private FMOD.Studio.Bus music;
    private FMOD.Studio.Bus sfx;
    private FMOD.Studio.Bus player;
    private FMOD.Studio.Bus creatures;

    private MainMenuManager mainMenuManager;
    private PauseMenu pauseMenu;

    private void Awake()
    {
        master = FMODUnity.RuntimeManager.GetBus("bus:/Master_2");
        music = FMODUnity.RuntimeManager.GetBus("bus:/Master_2/Music");
        sfx = FMODUnity.RuntimeManager.GetBus("bus:/Master_2/SFX");
        player = FMODUnity.RuntimeManager.GetBus("bus:/Master_2/Player");
        creatures = FMODUnity.RuntimeManager.GetBus("bus:/Master_2/Creatures");

        pauseMenu = GetComponent<PauseMenu>();
        mainMenuManager = FindObjectOfType<MainMenuManager>();

        if (pauseMenu != null)
        {
            pauseMenu.OnMasterVolumeChanged += MasterVolumeChanged;
            pauseMenu.OnMusicVolumeChanged += MusicVolumeChanged;
            pauseMenu.OnSFXVolumeChanged += SFXVolumeChanged;
            pauseMenu.OnPlayerVolumeChanged += PlayerVolumeChanged;
            pauseMenu.OnCreatureVolumeChanged += CreatureVolumeChanged;
        }
        else if (mainMenuManager != null)
        {
            mainMenuManager.OnMasterVolumeChanged += MasterVolumeChanged;
            mainMenuManager.OnMusicVolumeChanged += MusicVolumeChanged;
            mainMenuManager.OnSFXVolumeChanged += SFXVolumeChanged;
            mainMenuManager.OnPlayerVolumeChanged += PlayerVolumeChanged;
            mainMenuManager.OnCreatureVolumeChanged += CreatureVolumeChanged;
        }
        else
        {
            this.enabled = false;
        }
    }

    private void OnDestroy()
    {
        if (pauseMenu != null)
        {
            pauseMenu.OnMasterVolumeChanged -= MasterVolumeChanged;
            pauseMenu.OnMusicVolumeChanged -= MusicVolumeChanged;
            pauseMenu.OnSFXVolumeChanged -= SFXVolumeChanged;
            pauseMenu.OnPlayerVolumeChanged -= PlayerVolumeChanged;
            pauseMenu.OnCreatureVolumeChanged -= CreatureVolumeChanged;
        }
        else if (mainMenuManager != null)
        {
            mainMenuManager.OnMasterVolumeChanged -= MasterVolumeChanged;
            mainMenuManager.OnMusicVolumeChanged -= MusicVolumeChanged;
            mainMenuManager.OnSFXVolumeChanged -= SFXVolumeChanged;
            mainMenuManager.OnPlayerVolumeChanged -= PlayerVolumeChanged;
            mainMenuManager.OnCreatureVolumeChanged -= CreatureVolumeChanged;
        }
    }

    private void MasterVolumeChanged(object sender, float volume)
    {
        Debug.Log("Master Volume Changed");
        master.setVolume(volume);
    }

    private void MusicVolumeChanged(object sender, float volume)
    {
        Debug.Log("Music Volume Changed");
        music.setVolume(volume);
    }

    private void SFXVolumeChanged(object sender, float volume)
    {
        Debug.Log("SFX Volume Changed");
        sfx.setVolume(volume);
    }

    private void PlayerVolumeChanged(object sender, float volume)
    {
        Debug.Log("Player Volume Changed");
        player.setVolume(volume);
    }

    private void CreatureVolumeChanged(object sender, float volume)
    {
        Debug.Log("Creature Volume Changed");
        creatures.setVolume(volume);
    }

    /*
    public void SetMasterVol(float vol)
    {
        //masterMixer.SetFloat("masterVol", Mathf.Log10(vol) * 40f);
        master.setVolume(vol);
    }

    public void SetMusicVol(float vol)
    {
        //masterMixer.SetFloat("musicVol", Mathf.Log10(vol) * 40f);
        music.setVolume(vol);
        musicVol = vol;
    }

    public void SetSfxVol(float vol)
    {
        //masterMixer.SetFloat("sfxVol", Mathf.Log10(vol) * 40f);
        sfx.setVolume(vol);
        sfxVol = vol;
    }
    public void SetAmbientVol(float vol)
    {
        //masterMixer.SetFloat("ambientVol", Mathf.Log10(vol) * 40f);
        //ambientVol = vol;
    }
    public void SetPlayerVol(float vol)
    {
        //masterMixer.SetFloat("playerVol", Mathf.Log10(vol) * 40f);
        player.setVolume(vol);
        playerVol = vol;
    }
    public void SetCreaturesVol(float vol)
    {
        //masterMixer.SetFloat("creatureVol", Mathf.Log10(vol) * 40f);
        creatures.setVolume(vol);
        creatureVol = vol;
    }
    */
}