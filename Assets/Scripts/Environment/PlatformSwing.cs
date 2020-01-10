using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlatformSwing : MonoBehaviour
{
    public Transform childPlatform;

    public float speed = 1f;
    public float maxAngle = 0;

    [Range(0f, 1f)]
    public float timingOffset = 0f;

    private float timer = 0f;
    public bool direction = true;
    public bool swingDirection = false;
    private bool swapping = false;

    Coroutine co;

    private void Start()
    {
        timer = timingOffset;
    }

    void FixedUpdate()
    {
        if(!swapping && maxAngle > 0f)
        {
            Timing();
        }

        Pendulum();
        ChildSwing();
    }

    void Timing()
    {
        timer += Time.fixedDeltaTime * speed;

        if (timer >= 1f)
        {
            direction = !direction;
            timer = 0f;
        }
    }

    void Pendulum()
    {
        if(!swingDirection)
        {
            Quaternion to = Quaternion.Euler(new Vector3(0f, transform.localEulerAngles.y, direction ? maxAngle : -maxAngle));
            Quaternion from = Quaternion.Euler(new Vector3(0f, transform.localEulerAngles.y, direction ? -maxAngle : maxAngle));
            transform.localRotation = Quaternion.Slerp(from, to, Mathf.SmoothStep(0, 1, timer));
        }

        else
        {
            Quaternion to = Quaternion.Euler(new Vector3((direction ? maxAngle : -maxAngle), transform.localEulerAngles.y, 0f));
            Quaternion from = Quaternion.Euler(new Vector3((direction ? -maxAngle : maxAngle), transform.localEulerAngles.y, 0f));
            transform.localRotation = Quaternion.Slerp(from, to, Mathf.SmoothStep(0, 1, timer));
        }
    }

    void ChildSwing()
    {
        childPlatform.eulerAngles = Vector3.zero;
    }

    public void SwingDirection()
    {
        Vector3 playerPos = new Vector3(GameManager.Instance.player.transform.position.x, 0f, GameManager.Instance.player.transform.position.z);
        Vector3 childPos = new Vector3(childPlatform.position.x, 0f, childPlatform.position.z);
        Vector3 throwDirection = (playerPos - childPos).normalized;

        if(Mathf.Abs(throwDirection.x) > Mathf.Abs(throwDirection.z))
        {
            if (!swingDirection)
            {
                direction = throwDirection.x > 0f ? false : true;

                maxAngle += 15f;
                maxAngle = Mathf.Clamp(maxAngle, 0f, 45f);
            }
            else
            {
                if (maxAngle > 0f)
                {
                    if (co == null)
                    {
                        co = StartCoroutine(SlowCurrentSwingDirection());
                    }
                }

                else
                {
                    swingDirection = !swingDirection;
                    maxAngle += 15f;
                }
            }
        }

        else
        {
            if (swingDirection)
            {
                direction = throwDirection.z > 0f ? true : false;

                maxAngle += 15f;
                maxAngle = Mathf.Clamp(maxAngle, 0f, 45f);
            }
            else
            {
                if(maxAngle > 0f)
                {
                    if (co == null)
                    {
                        co = StartCoroutine(SlowCurrentSwingDirection());
                    }
                }

                else
                {
                    swingDirection = !swingDirection;
                    maxAngle += 15f;
                }
            }
        }
    }

    IEnumerator SlowCurrentSwingDirection()
    {
        Debug.Log("Hit");

        swapping = true;

        for (float i = 0.0f; i < 1.0f; i += Time.deltaTime / 2f)
        {
            maxAngle = maxAngle * (1f - i);

            //Debug.Log(i);
            yield return null;
        }   

        swingDirection = !swingDirection;
        timer = 0.5f;
        swapping = false;
        co = null;
    }
}
