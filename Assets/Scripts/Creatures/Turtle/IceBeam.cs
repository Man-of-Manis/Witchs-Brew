using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IceBeam : MonoBehaviour
{
    public float beamDist = 10f;

    public bool EnableBeam
    {
        get {return isBeamEnabled; }
        set {isBeamEnabled = value; }
    }

    private bool isBeamEnabled = false;

    [SerializeField] private LineRenderer rend;
    [SerializeField] private Transform startParticle;
    [SerializeField] private Transform endParticle;
    Vector3 subEndPos;
    Vector3 endPos;

    // Update is called once per frame
    void Update()
    {
        if(isBeamEnabled)
        {
            rend.gameObject.SetActive(true);
            startParticle.gameObject.SetActive(true);
            endParticle.gameObject.SetActive(true);

            endPos = new Vector3(0f, 0f, beamDist);
            subEndPos = endPos - new Vector3(0f, 0f, 0.1f);
            rend.SetPosition(2, subEndPos);
            rend.SetPosition(3, endPos);
            endParticle.localPosition = endPos;
        }

        else
        {
            rend.gameObject.SetActive(false);
            startParticle.gameObject.SetActive(false);
            endParticle.gameObject.SetActive(false);
        }
    }
}
