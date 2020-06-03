using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CinematicTriggerManager : MonoBehaviour
{
    [SerializeField] private List<GameObject> cameras = new List<GameObject>();

    [SerializeField] private List<GameObject> triggeredCameras = new List<GameObject>();

    private Coroutine cameraCo;

    public void ActivateCamera(GameObject camera)
    {
        triggeredCameras.Add(camera);

        if(cameraCo == null)
        {
            //cameraCo = StartCoroutine(CameraInterater());
        }
    }
}
