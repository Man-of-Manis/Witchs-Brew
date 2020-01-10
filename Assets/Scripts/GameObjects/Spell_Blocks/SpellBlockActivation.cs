using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpellBlockActivation : MonoBehaviour, ISpellInteractable
{
    bool ISpellInteractable.SpellReady { get { return activeSpell; } }

    public Spell_Names.Spell_Name Spell;

    public bool activeSpell = true;

    private Quaternion targetRotation;

    void Update()
    {
        transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, 3f * Time.deltaTime);
    }

    public void OnHit(Spell_Names.Spell_Name spellType)
    {
        if(spellType.Equals(Spell) && activeSpell)
        {
            StartCoroutine(Flip());
        }
    }

    public void OnHover()
    {
        
    }

    IEnumerator Flip()
    {
        activeSpell = false;
        //gameObject.GetComponent<MeshRenderer>().material.color = Color.blue;
        gameObject.GetComponent<MeshRenderer>().material.SetColor("_BaseColor", Color.blue);
        targetRotation = Quaternion.LookRotation(-transform.forward, Vector3.zero);

        yield return new WaitForSeconds(1.5f);

        activeSpell = true;
        //gameObject.GetComponent<MeshRenderer>().material.color = Color.green;
        gameObject.GetComponent<MeshRenderer>().material.SetColor("_BaseColor", Color.green);
    }

    public IEnumerator Wait()
    {
        throw new System.NotImplementedException();
    }
}
