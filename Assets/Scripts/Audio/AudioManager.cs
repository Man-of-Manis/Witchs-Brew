using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public enum MixerType { Master, SoundFX, Ambient, Player, Creatures};

public enum MasterMixerGroup { Master, Music, SoundFX, Ambient, Player, Creatures};
public enum SoundFXMixerGroup { Master};
public enum AmbientMixerGroup { Master};
public enum PlayerMixerGroup { Master};
public enum CreaturesMixerGroup { Master, Chicken, Turtle, Corruption};


public class AudioManager : MonoBehaviour
{
    private static AudioManager instance;
    public static AudioManager Instance
    {
        get
        {
            if(instance == null)
            {
                instance = FindObjectOfType<AudioManager>();

                if (instance == null)
                {
                    instance = new GameObject("AudioManager", typeof(AudioManager)).GetComponent<AudioManager>();
                }
            }

            return instance;
        }
        private set
        {
            instance = value;
        }
    }

    #region Fields
    [SerializeField] private AudioMixer[] mixers;

    private AudioSource musicSource;
    private AudioSource musicSource2;
    private AudioSource sfxSource;

    private float musicSourceVolume = 0f;
    private float musicSource2Volume = 0f;

    private bool firstMusicSourceIsPlaying = true;
    #endregion

    private void Awake()
    {
        //Makes sure an instance of this object is always active
        //DontDestroyOnLoad(this.gameObject);

        //Creates audio sources and gets references so that they may be called indiviually
        musicSource = this.gameObject.AddComponent<AudioSource>();
        musicSource2 = this.gameObject.AddComponent<AudioSource>();
        sfxSource = this.gameObject.AddComponent<AudioSource>();

        

        for (int i = 0; i < mixers.Length; i++)
        {
            AudioMixerGroup[] groups = mixers[i].FindMatchingGroups("Master");

            for (int j = 0; j < groups.Length; j++)
            {
                if (mixers[i].name.Equals("Master") && groups[j].name.Equals("Music"))
                {
                    musicSource.outputAudioMixerGroup = groups[j];
                    musicSource2.outputAudioMixerGroup = groups[j];
                }

                if (mixers[i].name.Equals("Master") && groups[j].name.Equals("Sound FX"))
                {
                    sfxSource.outputAudioMixerGroup = groups[j];
                }
            }
        }

        //Loops all music tracks that will play
        musicSource.loop = true;
        musicSource2.loop = true;
    }

    Dictionary<int, string> MasterGroups = new Dictionary<int, string>()
    {
        {0, "Master"},
        {1, "Music"},
        {2, "Sound FX"},
        {3, "Ambient"},
        {4, "Player"},
        {5, "Creatures"}
    };
    Dictionary<int, string> SoundFXGroups = new Dictionary<int, string>()
    {
        {0, "Master"}
    };
    Dictionary<int, string> AmbientGroups = new Dictionary<int, string>()
    {
        {0, "Master"}
    };
    Dictionary<int, string> PlayerGroups = new Dictionary<int, string>()
    {
        {0, "Master"}
    };
    Dictionary<int, string> CreaturesGroups = new Dictionary<int, string>()
    {
        {0, "Master"},
        {1, "chicken"},
        {2, "Turtle"},
        {3, "Corrution"}
    };

    public AudioMixer GetMixer(int enumInt)
    {
        return mixers[enumInt];
    }

    public string GetMixerGroup(int mixerInt, int groupInt)
    {
        switch(mixerInt)
        {
            case 0:
                return MasterGroups[groupInt];
            case 1:
                return SoundFXGroups[groupInt];
            case 2:
                return AmbientGroups[groupInt];
            case 3:
                return PlayerGroups[groupInt];
            case 4:
                return CreaturesGroups[groupInt];
            default:
                return MasterGroups[0];

        }
    }

    #region Instant Music Change
    /// <summary>
    /// Adds or replaces an audioclip that will be played in the currently active AudioSource.
    /// </summary>
    /// <param name="musicClip">The audioclip that will be played.</param>
    public void PlayMusic(AudioClip musicClip)
    {
        AudioSource activeSource;

        if (firstMusicSourceIsPlaying)
        {
            activeSource = musicSource;
            musicSourceVolume = 1f;
        }
        else
        {
            activeSource = (firstMusicSourceIsPlaying) ? musicSource : musicSource2;
            musicSource2Volume = 1f;
        }

        activeSource.clip = musicClip;
        activeSource.volume = 1f;
        activeSource.Play();
    }

    /// <summary>
    /// Adds or replaces an audioclip that will be played in the currently active AudioSource at the specified volume.
    /// </summary>
    /// <param name="musicClip">The audioclip that will be played.</param>
    public void PlayMusic(AudioClip musicClip, float volume)
    {
        AudioSource activeSource;

        if (firstMusicSourceIsPlaying)
        {
            activeSource = musicSource;
            musicSourceVolume = volume;
        }
        else
        {
            activeSource = (firstMusicSourceIsPlaying) ? musicSource : musicSource2;
            musicSource2Volume = volume;
        }

        activeSource.clip = musicClip;
        activeSource.volume = volume;
        activeSource.Play();
    }
    #endregion

    #region Fade Music
    /// <summary>
    /// Fades active music out then fades the new music clip back in with specified transition time.
    /// </summary>
    /// <param name="musicClip">Music clip to fade in.</param>
    /// <param name="transitionTime">Time to fade out and in.</param>
    public void PlayMusicWithFade(AudioClip musicClip, float transitionTime)
    {
        AudioSource activeSource;
        float activeVolume;

        if (firstMusicSourceIsPlaying)
        {
            activeSource = musicSource;
            activeVolume = musicSourceVolume;
            musicSourceVolume = 1f;
        }
        else
        {
            activeSource = musicSource2;
            activeVolume = musicSource2Volume;
            musicSource2Volume = 1f;
        }

        StartCoroutine(UpdateMusicWithFade(activeSource, musicClip, transitionTime, activeVolume));
    }

    /// <summary>
    /// Fades active music out then fades the new music clip back in with specified transition time and volume.
    /// </summary>
    /// <param name="musicClip">Music clip to fade in.</param>
    /// <param name="transitionTime">Time to fade out and in.</param>
    /// <param name="volume">Volume to set the music clip to.</param>
    public void PlayMusicWithFade(AudioClip musicClip, float transitionTime, float volume)
    {
        AudioSource activeSource;
        float activeVolume;

        if (firstMusicSourceIsPlaying)
        {
            activeSource = musicSource;
            activeVolume = musicSourceVolume;
            musicSourceVolume = volume;
        }
        else
        {
            activeSource =  musicSource2;
            activeVolume = musicSource2Volume;
            musicSource2Volume = volume;
        }

        StartCoroutine(UpdateMusicWithFade(activeSource, musicClip, transitionTime, activeVolume, volume));
    }

    private IEnumerator UpdateMusicWithFade(AudioSource activeSource, AudioClip musicClip, float transitionTime, float activeVolume)
    {
        if(!activeSource.isPlaying)
        {
            activeSource.Play();
        }

        float time = 0.0f;

        for (time = 0; time < transitionTime / 2; time += Time.deltaTime)
        {
            activeSource.volume = activeVolume - (time / transitionTime);
            yield return null;
        }

        activeSource.volume = 0.0f;

        activeSource.Stop();
        activeSource.clip = musicClip;
        activeSource.Play();

        for (time = 0; time < transitionTime / 2; time += Time.deltaTime)
        {
            activeSource.volume = time / transitionTime;
            yield return null;
        }

        activeSource.volume = 1f;
    }

    private IEnumerator UpdateMusicWithFade(AudioSource activeSource, AudioClip musicClip, float transitionTime, float activeVolume, float setVolume)
    {
        if (!activeSource.isPlaying)
        {
            activeSource.Play();
        }

        float time = 0.0f;

        for (time = 0; time < transitionTime; time += Time.deltaTime)
        {
            activeSource.volume = activeVolume - (time / transitionTime);
            yield return null;
        }

        activeSource.volume = 0.0f;

        activeSource.Stop();
        activeSource.clip = musicClip;
        activeSource.Play();

        for (time = 0; time < transitionTime; time += Time.deltaTime)
        {
            activeSource.volume = time / transitionTime * setVolume;
            yield return null;
        }

        activeSource.volume = setVolume;
    }
    #endregion

    #region Crossfade Music
    /// <summary>
    /// Fades out the previous music at the same time as the new music is fading in.
    /// </summary>
    /// <param name="musicClip">The new music to play.</param>
    /// <param name="transitionTime">The time it takes for the new music to replace the old.</param>
    /// <param name="volume">The volume to play the new music at.</param>
    public void PlayMusicWithCrossfade(AudioClip musicClip, float transitionTime, float volume)
    {
        AudioSource originalSource;
        AudioSource newSource;
        float activeVolume;

        if (firstMusicSourceIsPlaying)
        {
            originalSource = musicSource;
            newSource = musicSource2;
            activeVolume = musicSourceVolume;
            musicSourceVolume = 0f;
            musicSource2Volume = volume;
        }
        else
        {
            originalSource =  musicSource2;
            newSource = musicSource;
            activeVolume = musicSource2Volume;
            musicSource2Volume = 0f;
            musicSourceVolume = volume;
        }

        firstMusicSourceIsPlaying = !firstMusicSourceIsPlaying;

        StartCoroutine(UpdateMusicWithCrossfade(originalSource, newSource, musicClip, transitionTime, activeVolume, volume));
    }

    private IEnumerator UpdateMusicWithCrossfade(AudioSource originalSource, AudioSource newSource, AudioClip musicClip, float transitionTime, float activeVolume, float setVolume)
    {
        if (!originalSource.isPlaying)
        {
            originalSource.Play();
        }

        newSource.clip = musicClip;
        newSource.Play();

        float time = 0.0f;

        for (time = 0; time < transitionTime; time += Time.deltaTime)
        {
            originalSource.volume = activeVolume - (time / transitionTime);
            newSource.volume = time / transitionTime * setVolume;
            yield return null;
        }

        originalSource.volume = 0f;
        newSource.volume = setVolume;

        originalSource.Stop();
    }
    #endregion

    #region SFX OneShots
    /// <summary>
    /// Plays an audioclip.
    /// </summary>
    /// <param name="sfxClip">Audioclip that will be played.</param>
    public void PlaySFX(AudioClip sfxClip)
    {
        sfxSource.PlayOneShot(sfxClip);
    }

    /// <summary>
    /// Plays an audioclip with a specified volume.
    /// </summary>
    /// <param name="sfxClip">Audioclip that will be played.</param>
    /// <param name="volume">The volume of the audioclip.</param>
    public void PlaySFX(AudioClip sfxClip, float volume)
    {
        sfxSource.PlayOneShot(sfxClip, volume);
    }
    #endregion
}
