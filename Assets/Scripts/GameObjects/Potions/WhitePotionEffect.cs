﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WhitePotionEffect : MonoBehaviour, IPotionActivation
{
    public float forceMultiplier = 1f;
    public float addedForce = 3f;
    public float forceArea = 4.5f;
    public float forceUplift = 0.25f;

    public void SmallEffect(GameObject obj)
    {
        IngredientPickup IPickup = obj.GetComponent<IngredientPickup>();
        ChestActivation chest = obj.GetComponent<ChestActivation>();
        PlatformSwing pSwing = obj.GetComponentInParent<PlatformSwing>();
        LivingWall lWall = obj.GetComponent<LivingWall>();

        if(lWall != null)
        {
            lWall.OpenWall = true;
        }

        if (chest != null)
        {
            chest.OnHit(Spell_Names.Spell_Name.Galaxius); //Using old spell activation temp
            ConsoleLog(obj.name);
        }

        else if(IPickup != null)
        {
            IPickup.EnableIngredient();
            ConsoleLog(obj.name);
        }

        if (pSwing != null)
        {
            pSwing.SwingDirection();
            ConsoleLog(obj.name);
        }
    }

    public void LargeEffect(GameObject obj)
    {
        Rigidbody rb = obj.GetComponent<Rigidbody>();
        PotionBreak pBreak = obj.GetComponent<PotionBreak>();
        ChickenTossing tossing = obj.GetComponent<ChickenTossing>();
        TurtleMovement tMovement = obj.GetComponent<TurtleMovement>();
        ChickenMovement cMovement = obj.GetComponent<ChickenMovement>();

        if (obj.CompareTag("Player"))
        {
            obj.GetComponent<PlayerMixamoController>().SecondaryJump = true;
            //ConsoleLog(obj.name);
            return;
        }

        //if (rb != null && tossing == null)
        if (rb != null)
        {
            ConsoleLog(obj.name);
            if (pBreak != null)
            {
                //pBreak.SetBreak(pickup.ActivePickup);
            }

            //Vector3 dir = (transform.position - obj.transform.position).normalized;
            //rb.AddExplosionForce(addedForce, transform.position, forceArea, forceUplift, ForceMode.Impulse);
            //Vector3 dir = (obj.transform.position - transform.position).normalized;
            if(!rb.isKinematic)
            {
                Vector3 dir;
                if (obj.CompareTag("Chicken"))
                {
                    dir = Direction.NormalizedDirection(transform.position, obj.transform.position, 1.5f);
                }
                else
                {
                    dir = Direction.NormalizedDirection(transform.position, obj.transform.position, 1f);
                }

                rb.AddForce(dir * addedForce * forceMultiplier, ForceMode.Impulse);
                //rb.velocity = dir * addedForce;
                ConsoleLog(obj.name);
            }

        }

        if(tossing != null && tossing.enabled)
        {
            Vector3 direction = (new Vector3(obj.transform.position.x, 0f, obj.transform.position.z) - new Vector3(transform.position.x, 0f, transform.position.z)).normalized;

            tossing.EnableForce(direction);
        }

        if(tMovement != null)
        {
            tMovement.TurtleKnockback();
        }

        if (cMovement != null)
        {
            cMovement.ChickenKnockback();
        }

        /*
        if (obj.CompareTag("New Tag For Blocks"))
        {
            MoveBlock(obj);
        }
        */
    }

    private void ConsoleLog(string targetName)
    {
        Debug.Log(targetName + " has been affected by the " + gameObject.name.Substring(12, name.Length - 19) + " Potion");
    }

    private void MoveSwing()
    {

    }

    private void MoveBlock(GameObject obj)
    {
        Vector3 dir = (transform.position - obj.transform.position).normalized;

        //Get world space angle of dir
        //if angle is between "this" or "that" then move this direction

        /*
        if() //Positive Z
        {

        }

        else if() //Negative Z
        {

        }

        else if () //Positive X
        {

        }

        else if () //Negative X
        {

        }
        */
    }
}