using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IngredientActivation : MonoBehaviour, ISpellInteractable
{
    bool ISpellInteractable.SpellReady { get { return activeSpell; } }

    public Spell_Names.Spell_Name Spell;

    public bool activeSpell = true;

    private ItemSpin spin;

    void Start()
    {
        spin = GetComponent<ItemSpin>();
    }

    public void OnHover()
    {
        //Debug.Log($"The player is hovering over {gameObject.name}");
    }

    public void OnHit(Spell_Names.Spell_Name spellType)
    {
        if(spellType.Equals(Spell) && activeSpell)
        {
            GetComponentInChildren<IngredientPickup>().EnableIngredient();
            GetComponent<Rigidbody>().AddRelativeForce(0f, 0f, -2f, ForceMode.Impulse);
            spin.enabled = true;

            MeshRenderer[] rend = gameObject.GetComponentsInChildren<MeshRenderer>();
            foreach(MeshRenderer r in rend)
            {
                r.material.SetFloat("_EnableEmission", 1.0f);
            }

            Destroy(this);
        }
    }

    public IEnumerator Wait()
    {
        throw new System.NotImplementedException();
    }
}
