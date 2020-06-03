using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PlayerTriggerEvent : MonoBehaviour
{
    public float duration = 4f;
    public UnityEvent activated;
    public UnityEvent deactivated;
    private bool used;

    public void Activate()
    {
        if (!used)
        {
            //GameManager.Instance.player.GetComponent<PlayerInput>().ReleaseControl();
            activated.Invoke();
            //StartCoroutine(EndTrigger());
            used = true;
        }
    }

    IEnumerator EndTrigger()
    {
        yield return new WaitForSeconds(duration);
        deactivated.Invoke();
        GameManager.Instance.player.GetComponent<PlayerInput>().GainControl();
    }
}
