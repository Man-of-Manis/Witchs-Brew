using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChestActivation : MonoBehaviour, ISpellInteractable
{

    bool ISpellInteractable.SpellReady { get { return activeSpell; } }

    public Spell_Names.Spell_Name Spell;

    public bool activeSpell = true;

    public void OnHit(Spell_Names.Spell_Name spellType)
    {
        if(spellType.Equals(Spell) && activeSpell)
        {
            StartCoroutine(Unlock());
            activeSpell = false;
        }        
    }

    public void OnHover()
    {
        throw new System.NotImplementedException();
    }

    IEnumerator Unlock()
    {
        Animator anim = gameObject.GetComponent<Animator>();
        anim.SetTrigger("Open");
        GetComponent<AudioSource>().Play();
        yield return new WaitForSeconds(2f);
        gameObject.GetComponent<ChestItemSpawn>().SpawnItems();
        Destroy(this);
    }

    public IEnumerator Wait()
    {
        throw new System.NotImplementedException();
    }
}
