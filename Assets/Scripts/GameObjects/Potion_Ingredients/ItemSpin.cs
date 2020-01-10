using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(IngredientPickup))]
public class ItemSpin : MonoBehaviour
{
    public enum SpinObj { Local, Child}

    public SpinObj obj;

    private Transform[] trans = new Transform[2];

    public float rotationSpeed = 60.0f;

    public float bobAmplitude = 0.125f;
    public float bobPeriod = 1.5f;

    public float wobbleAmplitude = 5.0f;
    public float wobblePeriod = 1.5f;

    private float initialYPos;

    void Start()
    {
        trans[(int)SpinObj.Local] = transform;

        if(transform.GetChild(0) != null)
        {
            trans[(int)SpinObj.Child] = transform.GetChild(0);
        }
        else
        {
            obj = SpinObj.Local;
        }
        

        initialYPos = trans[(int)obj].localPosition.y;
    }

    void Update()
    {
        float xEulerAngle = wobbleAmplitude * Mathf.Sin(Time.time * wobblePeriod);
        float zEulerAngle = wobbleAmplitude * Mathf.Cos(Time.time * wobblePeriod);

        trans[(int)obj].rotation = Quaternion.Euler(xEulerAngle, trans[(int)obj].eulerAngles.y + rotationSpeed * Time.deltaTime, zEulerAngle);

        float yOffset = bobAmplitude * Mathf.Sin(Time.time * bobPeriod);
        trans[(int)obj].localPosition = new Vector3(trans[(int)obj].localPosition.x, initialYPos + yOffset, trans[(int)obj].localPosition.z);
    }
}
