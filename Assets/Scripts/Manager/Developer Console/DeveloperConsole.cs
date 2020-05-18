using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.IO;
using System;
using System.Linq;

namespace WitchsBrew.Utilities.DeveloperConsole
{
    [Serializable]
    public class LogTypes
    {
        /// <summary>
        /// Returns bool value based on index.
        /// </summary>
        /// <param name="index">The LogType enum index.</param>
        /// <returns></returns>
        public bool LogIndex(int index)
        {
            switch(index)
            {
                case 0:
                    return Error;
                case 1:
                    return Assert;
                case 2:
                    return Warning;
                case 3:
                    return Log;
                case 4:
                    return Exception;
                default:
                    return false;
            }
        }

        public bool Error;
        public bool Assert;
        public bool Warning;
        public bool Log;
        public bool Exception;
    }

    public class DeveloperConsole : MonoBehaviour
    {
        public static DeveloperConsole Instance { get; private set; }
        public static Dictionary<string, ConsoleCommand> Commands { get; private set; }
        public static List<string> CommandNames{ get; private set; }

        [Header("Command")]
        public string prefix = "/";

        [Header("UI")]
        public Canvas consoleCanvas;
        public TextMeshProUGUI inputText;
        public TMP_InputField commandInput;
        public TMP_InputField consoleInputLog;

        [Header("Auto Complete")]
        public Transform autoCompleteBackground;
        public TextMeshProUGUI autoCompleteText;

        public List<string> autoCompleteStrings;
        public int autoCompleteSelection = 0;
        public List<string> autoCompleteArgs;
        

        [Header("Debugging")]
        [SerializeField] private bool EnableLogging = true;
        [SerializeField] private bool EnableUnityLogging = true;
        public LogTypes currentlogs;

        private string currentPathFile;

        private Dictionary<int, string> LogColor = new Dictionary<int, string>()
        {
            {0, "red"},
            {1, "red"},
            {2, "yellow"},
            {3, "white"},
            {4, "red"}
        };

        private void OnEnable()
        {
            if (Debug.isDebugBuild)
            {
                Application.logMessageReceived += UnityLogHandler;
            }
        }

        private void OnDisable()
        {
            if (Debug.isDebugBuild)
            {
                Application.logMessageReceived -= UnityLogHandler;
            }
        }

        private void Awake()
        {
            if (Instance != null)
            {
                Destroy(gameObject);
                return;
            }

            Instance = this;

            Commands = new Dictionary<string, ConsoleCommand>();

            DontDestroyOnLoad(gameObject);
        }

        private void Start()
        {
            if (Debug.isDebugBuild)
            {
                consoleCanvas.enabled = false;
                CommandNames = new List<string>();
                autoCompleteStrings = new List<string>();
                autoCompleteArgs = new List<string>();
                CreateCommands();
                if (EnableLogging)
                {
                    CreateLogInput();
                }
            }
        }

        private void OnDestroy()
        {
            if (Debug.isDebugBuild && EnableLogging)
            {
                EndLogInput();
            }
        }

        private void Update()
        {
            if (Debug.isDebugBuild)
            {
                KeyInputs();

                if (consoleCanvas.enabled)
                {
                    PlayerInput.Instance.ReleaseControl();
                }
                else
                {
                    PlayerInput.Instance.GainControl();
                }
            }
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

            if (Input.GetKeyUp(KeyCode.Return))
            {
                if (consoleCanvas.enabled)
                {
                    if (commandInput.text != "")
                    {
                        AddMessageToConsole(commandInput.text);
                        ParseInput(commandInput.text);
                    }
                }
            }

            if (Input.GetKeyUp(KeyCode.UpArrow))
            {
                if (autoCompleteBackground.gameObject.activeSelf)
                {
                    autoCompleteSelection = AutoCompleteOptionIncrement(false);
                    autoCompleteText.text = AutoCompleteSelectionHighlight();
                }
            }

            if (Input.GetKeyUp(KeyCode.DownArrow))
            {
                if (autoCompleteBackground.gameObject.activeSelf)
                {
                    autoCompleteSelection = AutoCompleteOptionIncrement(true);
                    autoCompleteText.text = AutoCompleteSelectionHighlight();
                }                
            }

            if (Input.GetKeyUp(KeyCode.Tab))
            {
                if (autoCompleteBackground.gameObject.activeSelf)
                {
                    commandInput.text = prefix + autoCompleteStrings[autoCompleteSelection];
                    commandInput.ActivateInputField();
                    commandInput.caretPosition = commandInput.text.Length;
                }
            }
        }

        /// <summary>
        /// Gets the Unity log messages and displays them in the Developer Console.
        /// </summary>
        /// <param name="logMessage">The message of the log.</param>
        /// <param name="stackTrace"></param>
        /// <param name="logType">The type of log.</param>
        private void UnityLogHandler(string logMessage, string stackTrace, LogType logType)
        {
            for(int i = 0; i < 5; i++)
            {
                if(i == (int)logType && currentlogs.LogIndex(i))
                {
                    AddMessageToConsole("<color=" + LogColor[i] + ">(" + logType.ToString() + ")</color> " + logMessage);
                    return;
                }
            }
        }

        /// <summary>
        /// Closes the developer console window. Used by the close button in the corner of the window.
        /// </summary>
        public void CloseConsole()
        {
            if (consoleCanvas.enabled)
            {
                consoleCanvas.enabled = false;
            }
        }

        /// <summary>
        /// Instanciates an instance of a command's class.
        /// </summary>
        private void CreateCommands()
        {
            CommandQuit.CreateCommand();
            CommandReset.CreateCommand();
        }

        /// <summary>
        /// Desides if a command should be added to the list of commands.
        /// </summary>
        /// <param name="_name">The string name that will be typed by the user when attempting to run the command.</param>
        /// <param name="_command">The command instance to be called.</param>
        public static void AddCommandsToConsole(string _name, ConsoleCommand _command)
        {
            if (!Commands.ContainsKey(_name))
            {
                Commands.Add(_name, _command);
                CommandNames.Add(_name);
            }
        }

        /// <summary>
        /// Called when the command text input changes.
        /// </summary>
        /// <param name="inputString">The current string of the command input.</param>
        public void CommandInputOnChange(string inputString)
        {
            //Disables the autocomplete window if the prefix isn't used and returns.
            if (!inputString.StartsWith(prefix))
            {
                autoCompleteBackground.gameObject.SetActive(false);
                return;
            }

            inputString = inputString.Remove(0, prefix.Length);

            string[] inputSplit = inputString.Split(' ');

            string command = inputSplit[0];
            string[] args = inputSplit.Skip(1).ToArray();

            //Resets values
            autoCompleteStrings.Clear();            
            autoCompleteArgs.Clear();
            autoCompleteSelection = 0;

            for (int i = 0; i < args.Length; i++)
            {
                autoCompleteArgs.Add(args[i]);
            }           

            //Searches through all commands
            for(int i = 0; i < CommandNames.Count; i++)
            {
                //Disables the autocomplete window if the full string is already typed.
                if(CommandNames[i].Equals(command, StringComparison.OrdinalIgnoreCase))
                {
                    autoCompleteBackground.gameObject.SetActive(false);
                    return;
                }

                //Adds the current command string to the list of available commands to autocomplete
                if(CommandNames[i].StartsWith(command, StringComparison.OrdinalIgnoreCase))
                {
                    autoCompleteStrings.Add(CommandNames[i]);
                }
            }

            //Highlights the first command in the list of options
            autoCompleteText.text = AutoCompleteSelectionHighlight();

            //Disables the autocomplete window if no commands were found
            autoCompleteBackground.gameObject.SetActive(!autoCompleteText.text.Equals(string.Empty));
        }

        /// <summary>
        /// Sets the current selected string's color.
        /// </summary>
        /// <returns></returns>
        private string AutoCompleteSelectionHighlight()
        {
            string[] options = autoCompleteStrings.ToArray();

            for (int i = 0; i < options.Length; i++)
            {
                if(i == autoCompleteSelection)
                {
                    options[i] = "<color=yellow>" + options[i] + "</color>";
                }
            }

            return string.Join("\n", options);
        }

        /// <summary>
        /// Increments through the autocomplete string options.
        /// </summary>
        /// <param name="increase">Increment up or down.</param>
        private int AutoCompleteOptionIncrement(bool increase)
        {
            if(increase)
            {
                return (((autoCompleteSelection + 1) < autoCompleteStrings.Count) ? (autoCompleteSelection + 1) : 0);
            }
            else
            {
                return (((autoCompleteSelection - 1) >= 0) ? (autoCompleteSelection - 1) : (autoCompleteStrings.Count - 1));
            }
        }

        /// <summary>
        /// Creates a new log file to add the command logs to.
        /// </summary>
        private void CreateLogInput()
        {
            string path;

            if (!Directory.Exists(Application.dataPath + "/Logs"))
            {
                Directory.CreateDirectory(Application.dataPath + "/Logs");
            }

            for (int i = 1; i < 1000; i++)
            {
                path = Application.dataPath + "/Logs/Log_" + i.ToString() + ".txt";

                if (!File.Exists(path))
                {
                    currentPathFile = path;
                    Debug.Log("Started new log.");
                    break;
                }
            }

            File.WriteAllText(currentPathFile, "[" + System.DateTime.Now + "] [STARTED]\n\n");
        }

        /// <summary>
        /// Adds the console logs to the log file when the player quits.
        /// </summary>
        private void EndLogInput()
        {
            if (File.Exists(currentPathFile))
            {
                File.AppendAllText(currentPathFile, consoleInputLog.text + "\n");
                File.AppendAllText(currentPathFile, "[" + System.DateTime.Now + "] [ENDED]");
                Debug.Log("Finished log.");
            }
        }

        /// <summary>
        /// Resets the command input text box to use again.
        /// </summary>
        private void ResetCommandInput()
        {
            commandInput.text = "";
            commandInput.ActivateInputField();
            commandInput.caretPosition = commandInput.text.Length;
        }

        /// <summary>
        /// Adds a message to the Console with the current DateTime and input.
        /// </summary>
        /// <param name="msg">The message to add to the console.</param>
        private void AddMessageToConsole(string msg)
        {
            consoleInputLog.text += "[" + System.DateTime.Now + "] " + msg + "\n";
        }

        /// <summary>
        /// Determines what to do with the string input from the user.
        /// </summary>
        /// <param name="input">The string given by the user.</param>
        private void ParseInput(string input)
        {
            #region Original
            
            if (input.StartsWith("/"))
            {
                input = input.TrimStart('/');

                string[] _input = input.Split(null);

                _input[0] = _input[0].ToLower();

                if (_input.Length == 0 || _input == null)
                {
                    AddMessageToConsole("Not a valid command.");
                    ResetCommandInput();
                    return;
                }

                if (!Commands.ContainsKey(_input[0]))
                {
                    AddMessageToConsole("Not a valid command.");
                    ResetCommandInput();
                }
                else
                {
                    AddMessageToConsole(Commands[_input[0]].RunCommand());
                    consoleCanvas.enabled = false;  //Closes the Developer Console after a valid command is executed.
                }
            }

            else
            {
                ResetCommandInput();
            }
            
            #endregion

            #region New Attempt
            /*
            if (!input.StartsWith(prefix))
            {
                AddMessageToConsole(input);
                ResetCommandInput();
                return;
            }

            input = input.Remove(0, prefix.Length);

            string[] inputSplit = input.Split(' ');

            string command = inputSplit[0].ToLower();
            string[] args = inputSplit.Skip(1).ToArray();

            if(args.Length > 0)
            {

                return;
            }

            if (!Commands.ContainsKey(command))
            {
                AddMessageToConsole("The console does not contain a command for '" + command + "'.");
                ResetCommandInput();
            }

            else
            {
                AddMessageToConsole(Commands[command].RunCommand());
                consoleCanvas.enabled = false;  //Closes the Developer Console after a valid command is executed.
            }
            */
            #endregion
        }
    }
}
