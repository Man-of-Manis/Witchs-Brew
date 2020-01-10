using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TorchActivation : MonoBehaviour, ISpellInteractable
{
    bool ISpellInteractable.SpellReady { get { return activeSpell; } }

    public Spell_Names.Spell_Name Spell;

    public bool activeSpell = true;

    public Transform spawnPoint;

    public GameObject itemDrop;

    public bool RandomForce = false;

    public Vector3 spawnForce = Vector3.up * 3f;

    [Tooltip("Timer starts when object is usable")]
    public float itemRechargeTimer = 5f;
    private float currentItemTime;

    void Start()
    {
        currentItemTime = itemRechargeTimer;
    }

    void Update()
    {
        if(activeSpell)
        {
            Timer();
        }        
    }

    public void OnHit(Spell_Names.Spell_Name spellType)
    {
        if (spellType.Equals(Spell) && activeSpell)
        {
            StartCoroutine(Wait());
        }
    }

    public void OnHover()
    {
        //throw new System.NotImplementedException();
    }

    public IEnumerator Wait()
    {
        if (currentItemTime >= itemRechargeTimer)
        {
            DropItem();
        }

        activeSpell = false;
        yield return new WaitForSeconds(2.5f);
        activeSpell = true;
    }

    private void Timer()
    {
        if (currentItemTime <= itemRechargeTimer)
        {
            currentItemTime += Time.deltaTime;
        }
    }

    void DropItem()
    {
        GameObject item = Instantiate(itemDrop, spawnPoint.position, transform.rotation);
        item.GetComponent<IngredientPickup>().EnableIngredient();

        Rigidbody rb = item.GetComponent<Rigidbody>();
        rb.isKinematic = false;

        if(RandomForce)
        {
            rb.AddForce(new Vector3(Random.Range(-3f, 3f), 3f, Random.Range(-3f, 3f)),ForceMode.Impulse);
        }

        else
        {
            rb.AddRelativeForce(spawnForce, ForceMode.Impulse);
        }        

        currentItemTime = 0.0f;
    }
}
