using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WandAnimations : MonoBehaviour
{
    public GameObject flipendoSpell;
    public GameObject alohomoraSpell;
    public GameObject lumosSpell;

    public Transform spellSpawn;
    [SerializeField] private GameObject spellBlock;

    bool usedSpell;

    Camera cam;
    UtilityController UC;
    PlayerSpellCast spellCast;

    private void Start()
    {
        cam = Camera.main;
        UC = GetComponentInParent<UtilityController>();
        spellCast = GetComponentInParent<PlayerSpellCast>();
    }

    void GetSpellInfo()
    {
        spellBlock = spellCast.spellBlock;
    }

    void CastSpell() //Spawn spell gameobject
    {
        GetSpellInfo();

        GameObject spellPS = null;
        /*
        switch ((Spell_Names.Spell_Name)UC.Selection[0])
        {
            case Spell_Names.Spell_Name.Astralation:
                spellPS = Instantiate(flipendoSpell, spellSpawn.position, Quaternion.Euler(new Vector3(cam.transform.eulerAngles.x, transform.eulerAngles.y, transform.eulerAngles.z)));
                break;
            case Spell_Names.Spell_Name.Galaxius:
                spellPS = Instantiate(alohomoraSpell, spellSpawn.position, Quaternion.Euler(new Vector3(cam.transform.eulerAngles.x, transform.eulerAngles.y, transform.eulerAngles.z)));
                break;
            case Spell_Names.Spell_Name.Lunacity:
                spellPS = Instantiate(lumosSpell, spellSpawn.position, Quaternion.Euler(new Vector3(cam.transform.eulerAngles.x, transform.eulerAngles.y, transform.eulerAngles.z)));
                break;
        }
        */
        //spellPS.gameObject.SendMessage("NewMovement", spellBlock.GetComponent<Collider>().bounds.center);
        spellPS.gameObject.SendMessage("NewMovement", spellBlock.transform);
    }
}
