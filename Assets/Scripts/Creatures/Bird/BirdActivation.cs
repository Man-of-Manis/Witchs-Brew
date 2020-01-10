using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BirdActivation : MonoBehaviour, ISpellInteractable
{

    bool ISpellInteractable.SpellReady { get { return activeSpell; } }

    public Spell_Names.Spell_Name Spell;

    public bool activeSpell = true;

    BirdMovement movement;

    void Start()
    {
        movement = GetComponent<BirdMovement>();
    }

    public void OnHit(Spell_Names.Spell_Name spellType)
    {
        if(spellType.Equals(Spell) && activeSpell)
        {
            movement.Hit(2.5f);
            StartCoroutine(Wait());
        }
    }

    public void OnHover()
    {
        throw new System.NotImplementedException();
    }

    public IEnumerator Wait()
    {
        activeSpell = false;
        yield return new WaitForSeconds(2.5f);
        activeSpell = true;
    }
}
