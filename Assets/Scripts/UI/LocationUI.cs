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
            if(locations.Count > 1)
            {
                for(int i = 1; i < locations.Count; i++)
                {
                    locations.RemoveAt(i);
                }
            }

            locations.Add(value);

            if(fadeCo == null)
            {
                UpdateText();
            }
            
            Debug.Log("Entered " + value);
        }
    }

    private string locationString;
    private List<string> locations = new List<string>();
    private const float opacityTime = 3f;
    private Coroutine fadeCo;


    private void UpdateText()
    {
        if(locations.Count > 0)
        {
            locationString = locations[0];
            locationTMP.text = locationString;
            fadeCo = StartCoroutine(FadeText());
        }
        else
        {
            fadeCo = null;
        }
    }

    IEnumerator FadeText()
    {
        for(float i = 0; i < 1f; )
        {
            i += (Time.deltaTime / 1f);
            locationGroup.alpha = i;
            yield return null;
        }

        locationGroup.alpha = 1f;

        yield return new WaitForSeconds(opacityTime);

        for (float i = 1f; i > 0f; )
        {
            i -= (Time.deltaTime / 1f);
            locationGroup.alpha = i;
            yield return null;
        }

        locationGroup.alpha = 0f;
        locations.Remove(locationString);
        UpdateText();
    }
}
