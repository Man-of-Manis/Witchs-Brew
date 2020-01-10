using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnGizmo : MonoBehaviour
{
    public enum Gizmo { Sphere, Box }
    public Gizmo shape;
    public float radius = 1f;
    public Vector3 size = Vector3.one;
    public Color shapeColor = Color.white;

    private void Start()
    {
        gameObject.name = shape.ToString() + "Gizmo";
        Destroy(gameObject, 3f);
    }

    private void OnDrawGizmos()
    {
        if(shape.Equals(Gizmo.Sphere))
        {
            Gizmos.color = shapeColor;
            Gizmos.DrawSphere(transform.position, radius);
        }

        else
        {
            Gizmos.color = shapeColor;
            Gizmos.DrawCube(transform.position, size);
        }
    }
}
