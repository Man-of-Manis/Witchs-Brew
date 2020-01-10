using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorOpener : MonoBehaviour
{
    public TorchActivation leftTorch;
    public TorchActivation rightTorch;
    public TorchActivation leftBrazier;
    public TorchActivation rightBrazier;

    public float openingSpeed = 20f;
    float time = 0f;

    bool closed = true;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (leftTorch.activeSpell && rightTorch.activeSpell && leftBrazier.activeSpell && rightBrazier.activeSpell)
        {
            if(closed)
            {
                //Debug.Log("Opened");
                OpenDoor();
                //closed = false;
            }            
        }
        
    }

    void OpenDoor()
    {
        time += Time.deltaTime;

        transform.localRotation = Quaternion.Euler( Vector3.Lerp(Vector3.zero, new Vector3(0f, -160f, 0f), time));

    }
}
