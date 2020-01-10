using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class CameraPriority : MonoBehaviour
{
    public int TargetPriority;
    public CinemachineVirtualCamera vCam;

    private void OnTriggerStay(Collider other)
    {
        if(other.tag.Equals("Player"))
        {
            vCam.Priority = TargetPriority;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.tag.Equals("Player"))
        {
            vCam.Priority = 0;
        }
    }
}
