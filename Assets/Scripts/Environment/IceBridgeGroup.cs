﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class IceBridgeGroup : MonoBehaviour
{
    int hitAmount;
    int updatedAmount;
    bool[] frozenPieces = new bool[12];

    public float Speed
    {
        get { return freezeSpeed; }
    }

    [SerializeField] private float freezeSpeed = 0.25f;
    
    [SerializeField] private IceBridgePiece[] pieces;

    void Update()
    {
        if(hitAmount > updatedAmount && updatedAmount < 10)
        {
            for (int i = 0; i <= updatedAmount; i++)
            {
                if(!pieces[i].IsFrozen)
                {
                    pieces[i].Freeze();
                }
                else
                {
                    if(!frozenPieces[i])
                    {
                        updatedAmount++;
                        updatedAmount = Mathf.Clamp(updatedAmount, 0, 10);
                        frozenPieces[i] = true;
                    }
                }
            }
        }
    }

    public void IncreaseBridge()
    {
        hitAmount++;
        hitAmount = Mathf.Clamp(hitAmount, 0, frozenPieces.Length);
    }

    public void DecreaseBridge(int pieceNum)
    {
        hitAmount--;
        hitAmount = Mathf.Clamp(hitAmount, 0, frozenPieces.Length);
        updatedAmount--;
        updatedAmount = Mathf.Clamp(updatedAmount, 0, (frozenPieces.Length - 1));

        frozenPieces[pieceNum] = false;
    }
}
