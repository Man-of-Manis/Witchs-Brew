using UnityEngine;

public class DestroyGO : MonoBehaviour
{
    [SerializeField]
    float destroyDelay = 2.5f;

    void Start()
    {
        Destroy(gameObject, destroyDelay);
    }
}
