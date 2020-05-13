using System.Collections;
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

    public static LoadingScreenBar loadingScreen;

    private int levelIndexToLoad = 0;

    private Coroutine LoadingIconCo;

    public void Awake()
    {
        if(loadingScreen != null)
        {
            Destroy(gameObject);
            return;
        }

        loadingScreen = this;
    }

    public void LoadLevel(int sceneIndex)
    {
        levelIndexToLoad = sceneIndex;
        LevelFadeAnim.SetTrigger("FadeOut");
    }

    public void AnimationLevelLoad()
    {
        StartCoroutine(LoadAsynchronously(levelIndexToLoad));
    }

    IEnumerator LoadAsynchronously(int sceneIndex)
    {
        bool load = false;

        yield return new WaitForSeconds(0.1f);

        AsyncOperation operation = SceneManager.LoadSceneAsync(sceneIndex);

        operation.allowSceneActivation = false;

        while (!load)
        {
            if (operation.progress >= 1.0f)
            {
                load = true;
            }

            yield return new WaitForEndOfFrame();
        }

        yield return new WaitForSeconds(levelLoadDelay);

        operation.allowSceneActivation = true;
    }

    IEnumerator FadeLoadingIcon(bool fadeIn)
    {
        for(float i = 0f; i < 1f; i += Time.deltaTime * (1f / LoadingIconFadeTime))
        {

            yield return null;
        }
    }
}
