using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Cinemachine;

[System.Serializable]
public class ProgressionPoint
{
    [Tooltip("The UI info text to display to the player.")]
    public GameObject infoGO;
    public CinemachineVirtualCamera camera;
}

public class ProgressionManager : MonoBehaviour
{
    public int currentPoint = 0;

    public List<ProgressionPoint> progressionTimeline = new List<ProgressionPoint>();

    public CanvasGroup infoFader;
    public float fadeTime = 0.5f;


    public static ProgressionManager Instance;

    private Coroutine fadeCo;

    private void Awake()
    {
        if(Instance != null)
        {
            Destroy(gameObject);
            return;
        }

        Instance = this;
    }

    public void StartProgression()
    {
        if(progressionTimeline[currentPoint].infoGO != null)
        {
            if(fadeCo == null)
            {
                StartCoroutine(FadeInfoIn());
            }
        }

        if (progressionTimeline[currentPoint].camera != null)
        {
            //Activate camera to start cinematic
        }
    }

    public void EndProgression()
    {

    }

    private IEnumerator FadeInfoIn()
    {
        for(float i = infoFader.alpha; i < 1f; i += Time.deltaTime * (1f / fadeTime))
        {
            infoFader.alpha = i;
            yield return null;
        }

        infoFader.alpha = 1f;
    }

    private IEnumerator FadeInfoOut()
    {
        for (float i = infoFader.alpha; i > 0f; i -= Time.deltaTime * (1f / fadeTime))
        {
            infoFader.alpha = i;
            yield return null;
        }

        infoFader.alpha = 0f;
    }
}
