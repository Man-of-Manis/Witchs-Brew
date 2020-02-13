using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Checkpoint : MonoBehaviour
{
    public Vector3 boxSize;

    private BoxCollider box;

    private void OnValidate()
    {
        box = GetComponent<BoxCollider>();

        box.size = boxSize;
        box.center = new Vector3(box.center.x, box.size.y / 2, box.center.z);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            other.GetComponent<PlayerHealth>().currentCheckpoint = this;
        }
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = new Color(0f, 1f, 1f, 0.25f);
        Matrix4x4 rotationMatrix = Matrix4x4.TRS(transform.localPosition, transform.localRotation, transform.lossyScale);
        Gizmos.matrix = rotationMatrix;
        Gizmos.DrawCube(new Vector3(0f, box.center.y, 0f) , box.size);
    }
}
