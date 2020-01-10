using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LivingWall : MonoBehaviour
{
    public enum RotatePoint { Top, Bottom, Left, Right};
    private RotatePoint openFrom;

    [SerializeField] private Color eyeColor = new Color();

    [SerializeField] private bool isWallOpen = false;

    public bool OpenWall
    {
        get { return isWallOpen; }
        set { isWallOpen = value; }
    }

    [Header("References")]
    [SerializeField] private Transform[] rotationPoints = new Transform[4];

    [SerializeField] private Transform[] eyelids = new Transform[2];

    [SerializeField] private Transform[] pupils = new Transform[2];

    [SerializeField] private MeshRenderer[] pupilsRend = new MeshRenderer[2];
       

    private Transform target;

    private BoxCollider col;

    private float targetDist;

    private const float eyeOpenDistance = 5f;

    private bool isEyeOpen = false;


    private void OnDestroy()
    {
        for (int i = 0; i < eyelids.Length; i++)
        {
            eyelids[i].localScale = Vector3.one;
        }

        //Destroy(col);
    }

    void Start()
    {
        target = GameManager.Instance.PlayerCOM;
        col = GetComponent<BoxCollider>();

        InitializeEyeColor();
        InitializeWallRotationPoint();
    }

    private void Update()
    {
        if(isWallOpen)
        {
            RotateWall();
        }

        EyelidScale();
        PupilPosition();
    }

    void InitializeEyeColor()
    {
        for (int i = 0; i < pupilsRend.Length; i++)
        {
            pupilsRend[i].material.SetColor("_BaseColor", eyeColor);
        }
    }

    void InitializeWallRotationPoint()
    {
        openFrom = (RotatePoint)Random.Range(0, 4);
    }

    void RotateWall()
    {
        switch((int)openFrom)
        {
            case 0:
                transform.RotateAround(rotationPoints[(int)openFrom].position, transform.right, -90f);
                break;
            case 1:
                transform.RotateAround(rotationPoints[(int)openFrom].position, transform.right, 90f);
                break;
            case 2:
                transform.RotateAround(rotationPoints[(int)openFrom].position, transform.up, -90f);
                break;
            case 3:
                transform.RotateAround(rotationPoints[(int)openFrom].position, transform.up, 90f);
                break;
        }

        Destroy(this);
    }

    void EyelidScale()
    {
        if (targetDist <= eyeOpenDistance)
        {
            if(!isEyeOpen)
            {
                for (int i = 0; i < eyelids.Length; i++)
                {
                    eyelids[i].localScale = new Vector3(1f, 0.25f, 1f);
                }
                isEyeOpen = true;
            }            
        }

        else
        {
            if(isEyeOpen)
            {
                for (int i = 0; i < eyelids.Length; i++)
                {
                    eyelids[i].localScale = Vector3.one;
                }
                isEyeOpen = false;
            }
        }
    }

    void PupilPosition()
    {
        targetDist = Vector3.Distance(target.position, transform.position);

        if(targetDist <= eyeOpenDistance)
        {
            for(int i = 0; i < pupils.Length; i++)
            {
                float pupilPos = eyelids[i].InverseTransformPoint(target.position).x - eyelids[i].localPosition.x;
                pupilPos = Mathf.Clamp(pupilPos, -0.1f, 0.1f);
                pupils[i].localPosition = new Vector3(pupilPos, pupils[i].localPosition.y, pupils[i].localPosition.z); 
            }
        }
    }
}
