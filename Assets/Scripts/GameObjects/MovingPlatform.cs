using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingPlatform : MonoBehaviour
{
    public float moveSpeed = 1f;
    public Vector3 startPos;
    public Vector3 endOffset;
    private Vector3 endPos;
    private bool moveToStart = true;

    // Start is called before the first frame update
    void Start()
    {
        startPos = transform.position;
        endPos = startPos + endOffset;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if(transform.position == startPos)
        {
            moveToStart = false;
        }

        else if(transform.position == endPos)
        {
            moveToStart = true;
        }

        transform.position = Vector3.MoveTowards(transform.position, moveToStart ? startPos : endPos, Time.deltaTime * moveSpeed);
    }
}
