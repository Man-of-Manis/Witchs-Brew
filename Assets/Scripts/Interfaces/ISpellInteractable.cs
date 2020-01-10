using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface ISpellInteractable
{
    bool SpellReady { get; }

    void OnHover();
    void OnHit(Spell_Names.Spell_Name spellType);
    IEnumerator Wait();
}
