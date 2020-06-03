using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Events;

public class TimelineSkip : MonoBehaviour
{
    [SerializeField] private PlayableDirector timeline;

    [SerializeField] private float[] skipTo;

    // Update is called once per frame
    void Update()
    {
        if(PlayerInput.Instance.Skip)
        {
            for(int i =0; i < skipTo.Length; i++)
            {
                if (timeline.time < skipTo[i])
                {
                    if (i == 0)
                    {
                        SetPosition();
                    }

                    timeline.time = skipTo[i];                    
                    return;
                }
            }
        }

        if(timeline.time >= skipTo[skipTo.Length - 1])
        {
            Destroy(this);
        }
    }

    public void SetPosition()
    {
        GameManager.Instance.player.GetComponent<PlayerMixamoController>().SetPlayerRotation(GameManager.Instance.player.transform.eulerAngles.y,
            new Vector3(4.38f, 0f, -1f));
    }
}
