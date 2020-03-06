using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioPlayer : MonoBehaviour
{
	private AudioSource audioSource;
    public AudioSource Source
    {
        get
        {
            return audioSource;
        }
        private set
        {
            audioSource = value;
        }
    }

    public MixerType mixer;

    [HideInInspector] public MasterMixerGroup masterGroup;
    [HideInInspector] public SoundFXMixerGroup soundFXGroup;
    [HideInInspector] public AmbientMixerGroup ambientGroup;
    [HideInInspector] public PlayerMixerGroup playerGroup;
    [HideInInspector] public CreaturesMixerGroup creatureGroup;

    private int GroupInt
    {
        get
        {
            switch((int)mixer)
            {
                case 0:
                    return (int)masterGroup;
                case 1:
                    return (int)soundFXGroup;
                case 2:
                    return (int)ambientGroup;
                case 3:
                    return (int)playerGroup;
                case 4:
                    return (int)creatureGroup;
                default:
                    return (int)masterGroup;
            }
        }
    }

    private void Start()
    {
        SetAudioSource();
    }

    /// <summary>
    /// Finds or creates an AudioSource on the current gameObject and sets its mixer group.
    /// </summary>
    private void SetAudioSource()
    {
        if (audioSource == null)
        {
            audioSource = GetComponent<AudioSource>();

            if (audioSource == null)
            {
                gameObject.AddComponent<AudioSource>();
            }
        }
        string s = AudioManager.Instance.GetMixerGroup(((int)mixer), GroupInt);
        audioSource.outputAudioMixerGroup = AudioManager.Instance.GetMixer((int)mixer).FindMatchingGroups(s)[0]; ;
    }

    /// <summary>
    /// Plays a oneshot audioclip.
    /// </summary>
    /// <param name="clip">The clip to be played.</param>
    public void PlayOneShot(AudioClip clip)
    {
        Source.PlayOneShot(clip);
    }

    /// <summary>
    /// Plays a oneshot audioclip at a specified volume.
    /// </summary>
    /// <param name="clip">The clip to be played.</param>
    /// <param name="volume">The clip volume.</param>
    public void PlayOneShot(AudioClip clip, float volume)
    {
        Source.PlayOneShot(clip, volume);
    }
}