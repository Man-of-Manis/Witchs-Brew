using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookAt : MonoBehaviour
{
    public Transform lookAt;
    private RectTransform rect;
    private RectTransform canvas;

    private void Start()
    {
        lookAt = GameObject.FindGameObjectWithTag("MainCamera").transform;
        rect = GetComponent<RectTransform>();
        canvas = GameObject.FindGameObjectWithTag("Player_UI").GetComponent<RectTransform>();
    }


    private void Update()
    {
        //transform.parent.eulerAngles = new Vector3(0f, lookAt.eulerAngles.y, 0f);
        Position();
    }

    void LateUpdate()
    {
        //transform.LookAt(2f * transform.position - lookAt.position);
    }

    void Position()
    {
        Vector3 ViewportPosition = GameManager.Instance.MainCamera.WorldToViewportPoint(lookAt.transform.position);

        if (ViewportPosition.z < 0)
        {
            ViewportPosition *= -1;
        }

        Vector2 WorldObject_ScreenPosition = new Vector2(
        ((ViewportPosition.x * canvas.sizeDelta.x) - (canvas.sizeDelta.x * 0.5f)),
        ((ViewportPosition.y * canvas.sizeDelta.y) - (canvas.sizeDelta.y * 0.5f)));

        WorldObject_ScreenPosition += new Vector2(0f, 1.5f);

        rect.anchoredPosition = WorldObject_ScreenPosition;
    }
}
