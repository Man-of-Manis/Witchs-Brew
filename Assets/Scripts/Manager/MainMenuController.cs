using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using UnityEngine.Playables;

public class MainMenuController : MonoBehaviour
{
    [SerializeField] private float fadeMainMenuTime = 2f;

    [SerializeField] private CanvasGroup mainMenuGroup;
    [SerializeField] private PlayableDirector playableDirector;

    [Header("Disable Objects")]
    [SerializeField] private EventSystem menuEventSystem;

    [Header("Enable Objects")]
    [SerializeField] private EventSystem playerEventSystem;
    [SerializeField] private PlayerInput pInput;
    [SerializeField] private CameraFollow cFollow;

    private void Start()
    {
        pInput.ReleaseControl();
    }

    public void StartGame()
    {
        menuEventSystem.enabled = false;
        StartCoroutine(FadeMainMenuOut());
        playableDirector.Play();
    }

    private void EnableObjects()
    {
        playerEventSystem.enabled = true;
        cFollow.enabled = true;
    }

    /// <summary>
    /// Fades the Main Menu canvas out then enables all game objects.
    /// </summary>
    /// <returns></returns>
    IEnumerator FadeMainMenuOut()
    {
        for(float i = 1f; i >= 0f; i -= Time.deltaTime * (1f / fadeMainMenuTime))
        {
            mainMenuGroup.alpha = i;
            yield return null;
        }

        mainMenuGroup.alpha = 0f;

        EnableObjects();
    }
}
