using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spell_Type : MonoBehaviour
{
    public Spell_Names.Spell_Name activationSpell;
    private Quaternion targetRotation;

    void Update()
    {
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, 3f * Time.deltaTime);
    }
    
    void SpellTriggered()
    {
        switch(activationSpell)
        {
            case Spell_Names.Spell_Name.Astralation :
                {
                    Astralation();
                }
                break;
            case Spell_Names.Spell_Name.Galaxius:
                {
                    Galaxius();
                }
                break;
            case Spell_Names.Spell_Name.Lunacity:
                {
                    Lunacity();
                }
                break;
        }
    }
    
    void Astralation()
    {
        Debug.Log("Astralation");
        if(gameObject.GetComponent<BirdMovement>())
        {
            gameObject.SendMessage("Hit", 2.5f);
        }
        else
        {
            StartCoroutine(Flip());
        }
    }

    IEnumerator Flip()
    {
        //gameObject.GetComponent<MeshRenderer>().material.color = Color.blue;
        targetRotation = Quaternion.LookRotation(-transform.forward, Vector3.zero);
       
        yield return new WaitForSeconds(1.5f);
        gameObject.tag = "Usable";

        
        //gameObject.GetComponent<MeshRenderer>().material.color = Color.green;
    }

    void Galaxius()
    {
        Debug.Log("Galaxius");
        StartCoroutine(Unlock());
    }

    IEnumerator Unlock()
    {
        Animator anim = gameObject.GetComponent<Animator>();
        anim.SetTrigger("Open");
        yield return new WaitForSeconds(2f);
        gameObject.GetComponent<ChestItemSpawn>().SpawnItems();
        Debug.Log("Spawned Bean");
    }

    void Lunacity()
    {
        Debug.Log("Lunacity");
    }
}
