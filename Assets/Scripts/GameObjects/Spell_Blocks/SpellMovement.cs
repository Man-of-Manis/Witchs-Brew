using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

public class SpellMovement : MonoBehaviour
{
    public Spell_Names.Spell_Name spell;    
    public float degreesPerSecond;
    public float speed;
    public float velocity;

    Transform target;
    Rigidbody rb;
    SphereCollider collider;
    bool hitObject = false;

    public GameObject plume;
    public GameObject failedSpell;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        collider = GetComponent<SphereCollider>();
    }

    // Update is called once per frame
    private void Update()
    {
        if(!hitObject)
        {
            TowardMovement();
        }        
    }

    void TowardMovement()
    {
        //rb.AddForce(transform.forward * speed, ForceMode.Force);
        rb.velocity = transform.forward * speed;

        Vector3 dirToTarget = target.position - transform.position;

        Quaternion lookRotation = Quaternion.LookRotation(dirToTarget);

        transform.rotation = Quaternion.Lerp(transform.rotation, lookRotation, Time.deltaTime * (degreesPerSecond / 360.0f));
    }

    public void NewMovement(Transform target)
    {
        this.target = target;
    }

    private void FailedSpell()
    {
        Instantiate(failedSpell, transform.position, Quaternion.identity);
        this.GetComponent<ParticleSystem>().Stop();
    }

    void OnCollisionEnter(Collision other)
    {
        if(other.collider.GetComponent<ISpellInteractable>() != null)
        {
            ISpellInteractable interactable = other.collider.GetComponent<ISpellInteractable>();

            interactable.OnHit(spell);
            this.GetComponent<ParticleSystem>().Stop();
        }

        else if (other.gameObject.CompareTag("Usable"))
        {
            if(other.collider.GetComponent<Spell_Type>().activationSpell.Equals(spell))
            {
                other.gameObject.tag = "Used_Block";
                other.gameObject.SendMessage("SpellTriggered");
                this.GetComponent<ParticleSystem>().Stop();
            }

            else
            {
                FailedSpell();
            }            
        }

        else
        {
            FailedSpell();
        }

        collider.enabled = false;
        hitObject = true;
        rb.velocity = Vector3.zero;

        Quaternion rotq = Quaternion.FromToRotation(Vector3.forward, other.contacts[0].normal);
        Instantiate(plume, transform.position, rotq);
    }
}
