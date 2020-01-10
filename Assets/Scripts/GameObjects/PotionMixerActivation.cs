using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotionMixerActivation : MonoBehaviour, ISpellInteractable
{

    bool ISpellInteractable.SpellReady { get { return activeSpell; } }

    [SerializeField] private Spell_Names.Spell_Name[] Spell;

    private bool activeSpell = true;

    public bool CanMakePotions = false;

    private PotionMixing mixing;

    //----------------------------------------------------

    void Start()
    {
        mixing = GetComponent<PotionMixing>();
    }

    public void OnHit(Spell_Names.Spell_Name spellType)
    {
        if (spellType.Equals(Spell[0]) && activeSpell) //Remove all items
        {
            mixing.RemoveAllItems();
        }

        else if(spellType.Equals(Spell[1]) && activeSpell && CanMakePotions) //Mix Potion
        {
            mixing.MixPotion();
        }

        else if (spellType.Equals(Spell[2]) && activeSpell) //Block activation / deactivation
        {
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
        CanMakePotions = !CanMakePotions;
        yield return new WaitForSeconds(1f);
        activeSpell = true;
    }
}
