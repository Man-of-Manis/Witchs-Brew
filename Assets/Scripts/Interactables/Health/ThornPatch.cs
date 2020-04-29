using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThornPatch : MonoBehaviour
{
    [SerializeField] private int thornDamage = 1;

    public Vector3 gizmoSize = new Vector3(2f, 1f, 2f);

    private void OnTriggerEnter(Collider other)
    {
        IDamagable damageable = other.GetComponent<IDamagable>();

        if(damageable != null)
        {
            damageable.HealthChange(-thornDamage, 
                Witch.GetFlatDirection(other.transform.position, transform.position), false);
        }
    }

    private void OnTriggerStay(Collider other)
    {
        IDamagable damageable = other.GetComponent<IDamagable>();

        if (damageable != null)
        {
            damageable.HealthChange(-thornDamage,
                Witch.GetFlatDirection(other.transform.position, transform.position), false);
        }
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireCube(new Vector3(transform.position.x, transform.position.y + 0.5f, transform.position.z), gizmoSize);
    }
}
