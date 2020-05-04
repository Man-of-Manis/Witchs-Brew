using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class EditModeCameraFollow : MonoBehaviour
{
#if UNITY_EDITOR
    private void Update()
    {
        if(!UnityEditor.EditorApplication.isPlaying)
        {
            CameraFollow cFollow = FindObjectOfType<CameraFollow>();

            if (transform.hasChanged && cFollow)
            {
                cFollow.EditCameraMove(transform.Find("COM_Target").position, transform.eulerAngles.y);
            }
        }        
    }
#endif
}
