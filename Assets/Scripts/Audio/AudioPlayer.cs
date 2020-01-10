using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioPlayer : MonoBehaviour
{
    //----------------------------------------------------------------------------------------------------------------------------------
	// Variables
	
	[HideInInspector] public AudioSource audioSource;
	
	[HideInInspector] public bool AudioPlaying;

    public AudioClip clip;

    //----------------------------------------------------------------------------------------------------------------------------------




    //----------------------------------------------------------------------------------------------------------------------------------
    // Method | 

    private void Start()
    {
        PlayAudio(clip);
    }

    void FixedUpdate()
	{
		if (AudioPlaying && !audioSource.isPlaying)
		{
			Destroy(gameObject);
		}
	}
	//----------------------------------------------------------------------------------------------------------------------------------
	
	
	
	
	//----------------------------------------------------------------------------------------------------------------------------------
	// Method | 
	public void PlayAudio (AudioClip audioClip)
	{
		audioSource = GetComponent<AudioSource>();
		audioSource.clip = audioClip;
		audioSource.loop = false;
		audioSource.Play();
		
		AudioPlaying = true;
	}
	//----------------------------------------------------------------------------------------------------------------------------------
}