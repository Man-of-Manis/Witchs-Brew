using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManagerTest : MonoBehaviour
{
    public AudioClip music;
    public AudioClip music2;
    public AudioClip sound;

    public float volume;

    // Update is called once per frame
    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Alpha1))
        {
            AudioManager.Instance.PlayMusic(music, 1f);
        }

        else if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            AudioManager.Instance.PlayMusic(music2, volume);
        }

        else if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            AudioManager.Instance.PlayMusicWithFade(music, 1f, 1f);
        }

        else if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            AudioManager.Instance.PlayMusicWithFade(music2, 1f, volume);
        }

        else if (Input.GetKeyDown(KeyCode.Alpha5))
        {
            AudioManager.Instance.PlayMusicWithCrossfade(music, 1f, 1f);
        }

        else if (Input.GetKeyDown(KeyCode.Alpha6))
        {
            AudioManager.Instance.PlayMusicWithCrossfade(music2, 1f, volume);
        }

        else if (Input.GetKeyDown(KeyCode.Keypad0))
        {
            AudioManager.Instance.PlaySFX(sound, volume);
            Debug.Log("Player SFX");
        }
    }
}
