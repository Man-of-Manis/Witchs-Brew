using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class LocationUI : MonoBehaviour
{
    public TextMeshProUGUI locationTMP;
    public CanvasGroup locationGroup;

    public string Location
    {
        get {return locationString; }
        set
        {
            locations.Add(value);
            Debug.Log("Entered " + value);
        }
    }

    protected string locationString;
    private List<string> locations = new List<string>();

    const float opacityTime = 3f;
    bool showingText = false;
    Coroutine fadeCo;

    private void Update()
    {
        if (!showingText)
        {
            for (int i = 0; i < locations.Count; i++)
            {
                locationString = locations[i];
                locationTMP.text = locationString;
                fadeCo = StartCoroutine(FadeText());
            }
        }
    }

    IEnumerator FadeText()
    {
        showingText = true;

        for(float i = 0; i < 1f; )
        {
            i += (Time.deltaTime / 1f);
            locationGroup.alpha = i;
            yield return null;
        }

        yield return new WaitForSeconds(opacityTime);

        for (float i = 1f; i > 0f; )
        {
            i -= (Time.deltaTime / 1f);
            locationGroup.alpha = i;
            yield return null;
        }
        locations.Remove(locationString);
        showingText = false;
    }
}
