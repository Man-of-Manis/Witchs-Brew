﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class LoadingScreenBar : MonoBehaviour
{
    [SerializeField] private Animator LevelFadeAnim;
    [SerializeField] private Animator LoadingIconAnim;
    [SerializeField] private Image LoadingIconImage;
    [SerializeField] private float levelLoadDelay = 0.25f;
    [SerializeField] private float LoadingIconFadeTime = 0.2f;

    public static LoadingScreenBar Instance;

    private int levelIndexToLoad = 0;
    private bool resetLevelMusic;

    FMOD.Studio.EventInstance Music;
    private Coroutine LoadingIconCo;

    public void Awake()
    {
        if(Instance != null)
        {
            Destroy(gameObject);
            return;
        }

        Instance = this;

        DontDestroyOnLoad(this.gameObject);
    }

    private void Start()
    {
        Application.backgroundLoadingPriority = ThreadPriority.Low;
        Music = GetComponent<FMODUnity.StudioEventEmitter>().EventInstance;
        int sceneIndex = SceneManager.GetActiveScene().buildIndex;
        Music.setParameterByName("Music_value", sceneIndex == 0 ? 0 : 2);

    }

    /*
    /// <summary>
    /// Starts to load a new level with the given scene index.
    /// </summary>
    /// <param name="sceneIndex">The scene index to load.</param>
    public void LoadLevel(int sceneIndex)
    {
        //Check if scene index is valid
        Debug.Log("Loading Level");
        levelIndexToLoad = sceneIndex;
        LevelFadeAnim.SetTrigger("FadeOut");
        Music.setParameterByName("Music_value", 1);
    }
    */

    public void LoadLevel(int sceneIndex, bool resetMusic = true)
    {
        //Check if scene index is valid
        //Debug.Log("Loading Level");
        levelIndexToLoad = sceneIndex;
        LevelFadeAnim.SetTrigger("FadeOut");
        resetLevelMusic = resetMusic;

        if(resetMusic)
        {
            Music.setParameterByName("Music_value", 1);
        }        
    }

    /// <summary>
    /// Starts to load the next level. (Called by Animator Only)
    /// </summary>
    public void AnimationLevelLoad()
    {
        StartCoroutine(LoadAsynchronously(levelIndexToLoad, resetLevelMusic));
    }

    /// <summary>
    /// Starts death screen fade out.
    /// </summary>
    public void DeathFadeOut()
    {
        LevelFadeAnim.SetTrigger("DeathFadeOut");
    }

    /// <summary>
    /// Resets player after death. (Called by Animator Only)
    /// </summary>
    public void DeathPlayerReset()
    {
        StartCoroutine(DeathFadeIn());
    }

    /// <summary>
    /// Loads the next scene Asynchronously.
    /// </summary>
    /// <param name="sceneIndex">The scene index to load.</param>
    /// <returns></returns>
    IEnumerator LoadAsynchronously(int sceneIndex, bool resetMusic)
    {
        bool load = false;

        if (LoadingIconCo != null)
        {
            StopCoroutine(LoadingIconCo);
        }

        LoadingIconCo = StartCoroutine(FadeLoadingIcon(false));

        yield return new WaitForSecondsRealtime(0.1f);

        AsyncOperation operation = SceneManager.LoadSceneAsync(sceneIndex);

        operation.allowSceneActivation = false;

        while (!load)
        {
            if (operation.progress >= 0.9f)
            {
                load = true;
            }

            yield return new WaitForEndOfFrame();
        }

        operation.allowSceneActivation = true;

        //Wait until the scene is fully loaded
        yield return new WaitUntil(() => operation.progress >= 1f);

        Time.timeScale = 1f;

        if (LoadingIconCo != null)
        {
            StopCoroutine(LoadingIconCo);
        }

        LoadingIconCo = StartCoroutine(FadeLoadingIcon(true));

        yield return new WaitForSecondsRealtime(levelLoadDelay);

        //Fade into the new scene
        LevelFadeAnim.SetTrigger("FadeIn");

        if(resetMusic)
        {
            Music.setParameterByName("Music_value", sceneIndex == 0 ? 0 : 2);
        }        
    }

    /// <summary>
    /// Fades the Loading Icon in or out.
    /// </summary>
    /// <param name="fadeIn">Bool representation of fading in or out.</param>
    /// <returns></returns>
    IEnumerator FadeLoadingIcon(bool fadeIn)
    {
        LoadingIconImage.color = new Color(LoadingIconImage.color.r, LoadingIconImage.color.b, LoadingIconImage.color.g, (fadeIn ? 1f : 0f));

        if (!fadeIn)
        {
            LoadingIconAnim.SetTrigger("IconLoop");
        }

        for(float i = 0f; i < 1f; i += Time.unscaledDeltaTime * (1f / LoadingIconFadeTime))
        {
            LoadingIconImage.color = new Color(LoadingIconImage.color.r, LoadingIconImage.color.b, LoadingIconImage.color.g, 
                Mathf.Lerp(LoadingIconImage.color.a, (fadeIn ? 0f : 1f), i));
            yield return null;
        }

        LoadingIconImage.color = new Color(LoadingIconImage.color.r, LoadingIconImage.color.b, LoadingIconImage.color.g, (fadeIn ? 0f : 1f));

        if (fadeIn)
        {
            LoadingIconAnim.SetTrigger("IconIdle");
        }

        LoadingIconCo = null;
    }

    IEnumerator DeathFadeIn()
    {
        GameManager.Instance.player.GetComponent<PlayerHealth>().ResetHealth();

        yield return new WaitForSeconds(0.5f);

        LevelFadeAnim.SetTrigger("FadeIn");
    }
}
