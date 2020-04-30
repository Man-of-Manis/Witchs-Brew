using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Linq;

public class KeyCubeUI : MonoBehaviour
{
    [SerializeField] private Image[] keyCubeImages = new Image[6];
    [SerializeField] private bool[] keyCubesHeld = new bool[6];
    [SerializeField] private Image selectionOutline;

    [SerializeField] private int selectedKeyCube = 0;

    private PlayerInput m_Input;
    private SatchelUI satchelUI;

    private void Start()
    {
        m_Input = GameManager.Instance.player.GetComponent<PlayerInput>();
        satchelUI = GetComponent<SatchelUI>();
        DisplayedKeyCubes();
    }

    private void Update()
    {
        if(m_Input.DPad_X != 0 && selectionOutline.enabled)
        {
            Increment(m_Input.DPad_X > 0);
        }
    }

    /// <summary>
    /// Toggles the selection outline on and off.
    /// </summary>
    public void ToggleSelection()
    {
        if(keyCubesHeld.Any(x => x == true))
        {
            selectionOutline.enabled = !selectionOutline.enabled;
        }        
    }
    
    /// <summary>
    /// Gets the next selection and moves the selection outline to that image's position.
    /// </summary>
    /// <param name="increase"></param>
    public void Increment(bool increase)
    {
        selectedKeyCube = IncrementSelection(increase);
        selectionOutline.transform.position = keyCubeImages[selectedKeyCube].transform.position;
    }

    /// <summary>
    /// Adds a KeyCube to the array of held KeyCubes.
    /// </summary>
    /// <param name="color">The color index of the Keycube.</param>
    public void AddKeyCube(int color)
    {
        Debug.Log("Adding index: " + color);
        keyCubesHeld[color] = true;
        DisplayedKeyCubes();
    }

    /// <summary>
    /// Removes a KeyCube to the array of held KeyCubes.
    /// </summary>
    /// <param name="color">The color index of the Keycube.</param>
    public void RemoveKeyCube(out bool available, out int selection, int addedCube)
    {
        if(keyCubesHeld[selectedKeyCube] && selectedKeyCube != addedCube)
        {
            keyCubesHeld[selectedKeyCube] = false;
            available = true;
            selection = selectedKeyCube;
            DisplayedKeyCubes();
        }
        else
        {
            available = false;
            selection = selectedKeyCube;
        }

        selectedKeyCube = IncrementSelection(false);    //Get previous available selection

        if (keyCubesHeld[selectedKeyCube])
        {
            selectionOutline.transform.position = keyCubeImages[selectedKeyCube].transform.position;

            if(satchelUI.SatchelOpen)
            {
                selectionOutline.enabled = true;
            }
        }
        else
        {
            selectionOutline.enabled = false;
        }
    }

    /// <summary>
    /// Finds the next available KeyCube index.
    /// </summary>
    /// <param name="increase">Direction to search.</param>
    /// <returns></returns>
    private int IncrementSelection(bool increase)
    {
        if (keyCubesHeld.Any(x => x == true) && TrueExcept(selectedKeyCube))
        {
            if (increase)
            {
                bool[] increaseArray = ShiftLeft(selectedKeyCube);

                for (int i = 1; i < keyCubesHeld.Length; i++)
                {
                    if(increaseArray[i] == true)
                    {
                        int shiftedBack = GetShiftedRight(i, selectedKeyCube);
                        //Debug.Log("Shifted int: " + i + ", Shifted back: " + shiftedBack);
                        return shiftedBack;
                    }
                }
            }
            else
            {
                bool[] increaseArray = ShiftRight((keyCubesHeld.Length - 1 - selectedKeyCube));

                for (int i = 4; i >= 0; i--)
                {
                    if (increaseArray[i] == true)
                    {
                        return GetShiftedLeft(i, ((keyCubesHeld.Length - 1) - selectedKeyCube));
                    }
                }
            }
        }

        return selectedKeyCube;
    }

    /// <summary>
    /// Enables and disables the images of KeyCubes that are held.
    /// </summary>
    private void DisplayedKeyCubes()
    {
        for(int i = 0; i < keyCubesHeld.Length; i++)
        {
            keyCubeImages[i].enabled = keyCubesHeld[i];
        }
    }

    /// <summary>
    /// Determines if any other bool is true besides the currently selected bool.
    /// </summary>
    /// <param name="currentSelection"></param>
    /// <returns></returns>
    private bool TrueExcept(int currentSelection)
    {
        for (int i = 0; i < keyCubesHeld.Length; i++)
        {
            if(keyCubesHeld[i] == true && i != selectedKeyCube)
            {
                return true;
            }
        }

        return false;
    }

    /// <summary>
    /// Shifts the element back to the original array index.
    /// </summary>
    /// <param name="shiftedElement">The created array's index.</param>
    /// <param name="shiftedAmount">The amount the created array was shifted.</param>
    /// <returns></returns>
    private int GetShiftedLeft(int shiftedElement, int shiftedAmount)
    {
        if ((shiftedElement - shiftedAmount) >= 0)
        {
            return (shiftedElement - shiftedAmount);
        }
        else
        {
            return (shiftedElement - shiftedAmount + keyCubesHeld.Length);
        }
    }

    /// <summary>
    /// Shifts the element back to the original array index.
    /// </summary>
    /// <param name="shiftedElement">The created array's index.</param>
    /// <param name="shiftedAmount">The amount the created array was shifted.</param>
    /// <returns></returns>
    private int GetShiftedRight(int shiftedElement, int shiftedAmount)
    {
        if ((shiftedElement + shiftedAmount) < keyCubesHeld.Length)
        {
            return (shiftedElement + shiftedAmount);
        }
        else
        {
            return (shiftedElement + shiftedAmount - keyCubesHeld.Length);
        }
    }

    /// <summary>
    /// Shifts all elements in the array to the left by shiftAmount.
    /// </summary>
    /// <param name="shiftAmount">The amount to shift the elements.</param>
    /// <returns></returns>
    private bool[] ShiftLeft(int shiftAmount)
    {
        bool[] shiftedArray = new bool[keyCubesHeld.Length];

        for(int i = 0; i < keyCubesHeld.Length; i++)
        {
            if((i - shiftAmount) >= 0)
            {
                shiftedArray[(i - shiftAmount)] = keyCubesHeld[i];
            }
            else
            {
                shiftedArray[(i - shiftAmount + keyCubesHeld.Length)] = keyCubesHeld[i];
            }            
        }

        return shiftedArray;
    }

    /// <summary>
    /// Shifts all elements in the array to the right by shiftAmount.
    /// </summary>
    /// <param name="shiftAmount">The amount to shift the elements.</param>
    /// <returns></returns>
    private bool[] ShiftRight(int shiftAmount)
    {
        bool[] shiftedArray = new bool[keyCubesHeld.Length];

        for (int i = 0; i < keyCubesHeld.Length; i++)
        {
            if ((i + shiftAmount) < keyCubesHeld.Length)
            {
                shiftedArray[(i + shiftAmount)] = keyCubesHeld[i];
            }
            else
            {
                shiftedArray[(i + shiftAmount - (keyCubesHeld.Length))] = keyCubesHeld[i];
            }
        }

        return shiftedArray;
    }

    /// <summary>
    /// Creates a string of the bool arrays.
    /// </summary>
    /// <param name="boolArray"></param>
    /// <returns></returns>
    private string DebugArray(bool[] boolArray)
    {
        string length = "";
        for(int i = 0; i < boolArray.Length; i++)
        {
            length += boolArray[i].ToString() + ", ";
        }
        return length;
    }
}
