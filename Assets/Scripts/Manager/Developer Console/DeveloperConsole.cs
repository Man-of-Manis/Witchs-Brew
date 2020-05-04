using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class DeveloperConsole : MonoBehaviour
{
    public static DeveloperConsole Instance { get; private set; }
    public static Dictionary<string, ConsoleCommand> Commands { get; private set; }

    [Header("UI")]
    public Canvas consoleCanvas;
    public TextMeshProUGUI inputText;    
    public TMP_InputField commandInput;
    public TMP_InputField consoleInput;

    private void Awake()
    {
        if(Instance != null)
        {
            return;
        }

        Instance = this;

        Commands = new Dictionary<string, ConsoleCommand>();
    }

    private void Start()
    {
        consoleCanvas.enabled = false;
    }

    private void CreateCommands()
    {

    }

    private static void AddCommandsToConsole(string _name, ConsoleCommand _command)
    {
        if (!Commands.ContainsKey(_name))
        {
            Commands.Add(_name, _command);
        }
    }

    private void Update()
    {
        KeyInputs();
    }

    /// <summary>
    /// The gets the key inputs to open and close the console.
    /// </summary>
    private void KeyInputs()
    {
        if (Input.GetKeyUp(KeyCode.BackQuote))
        {
            if (!consoleCanvas.enabled)
            {
                consoleCanvas.enabled = true;
                commandInput.text = "";
                commandInput.ActivateInputField();
            }
        }

        if (Input.GetKeyUp(KeyCode.Slash))
        {
            if (!consoleCanvas.enabled)
            {
                consoleCanvas.enabled = true;
                commandInput.text = "/";
                commandInput.ActivateInputField();
                commandInput.caretPosition = commandInput.text.Length;

            }
        }

        if (Input.GetKeyUp(KeyCode.Escape))
        {
            if (consoleCanvas.enabled)
            {
                consoleCanvas.enabled = false;
                commandInput.text = "";
            }
        }

        if(Input.GetKeyUp(KeyCode.Return))
        {
            if(consoleCanvas.enabled)
            {
                if(commandInput.text != "")
                {
                    AddMessageToConsole(commandInput.text);
                    ParseInput(commandInput.text);

                    commandInput.text = "";
                    commandInput.ActivateInputField();
                    commandInput.caretPosition = commandInput.text.Length;
                }
                
            }
        }
    }

    private void AddMessageToConsole(string msg)
    {
        consoleInput.text += "[" + System.DateTime.Now + "] " + msg + "\n";
    }

    private void ParseInput(string input)
    {
        if(input.StartsWith("/"))
        {
            input  = input.TrimStart('/');            

            string[] _input = input.Split(null);

            if (_input.Length == 0 || _input == null)
            {
                AddMessageToConsole("Not a valid command.");
                return;
            }

            if (!Commands.ContainsKey(_input[0]))
            {
                AddMessageToConsole("Not a valid command.");
            }
            else
            {
                Commands[_input[0]].RunCommand();
            }
        }
        
    }
}
