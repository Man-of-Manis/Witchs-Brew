using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraSwap : MonoBehaviour
{
    public List<Camera> cameras = new List<Camera>();
    int currentCamera = 0;

    // Update is called once per frame
    void Update()
    {
        Swapping();
    }

    void Swapping()
    {
        if(Input.GetKeyDown(KeyCode.RightArrow))
        {
            currentCamera = currentCamera + 1 == cameras.Count ? 0 : currentCamera + 1;
        }

        else if(Input.GetKeyDown(KeyCode.LeftArrow))
        {
            currentCamera = currentCamera == 0 ? cameras.Count - 1 : currentCamera - 1;
        }

        for(int i = 0; i < cameras.Count; i++)
        {
            cameras[i].depth = i == currentCamera ? 1 : 0;
        }
    }
}
