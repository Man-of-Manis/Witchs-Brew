using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.IO;
using System;
using System.Linq;
using System.Reflection;
using UnityEngine.EventSystems;

#if UNITY_EDITOR
using UnityEditor;
#endif


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
        public static List<string> CommandNames { get; private set; }
        public List<ConsoleCommand> CommandList;

        public static Dictionary<Type, string> ParamTypes = new Dictionary<Type, string>()
        {
            { typeof(Int32), "Integer" },
            { typeof(float), "Float" },
            { typeof(string), "String" },
            { typeof(Vector3), "Vector 3" }
        };

        public static Dictionary<Type, int> ParamParse = new Dictionary<Type, int>()
        {
            { typeof(Int32), 0 },
            { typeof(float), 1 },            
            { typeof(Vector3), 2 },
            { typeof(string), 3 }
        };

        [Header("Command")]
        public string prefix = "/";
        private string commandMethodName = "RunCommand";

        [Header("UI")]
        public Canvas consoleCanvas;
        public TextMeshProUGUI inputText;
        public TMP_InputField commandInput;
        public TMP_InputField consoleInputLog;
        private bool previouslyOpen;
        private float prevTimeScale;

        [Header("Auto Complete")]
        public Transform autoCompleteBackground;
        public TextMeshProUGUI autoCompleteText;

        public List<string> autoCompleteStrings;
        public int autoCompleteSelection = 0;
        public List<string> autoCompleteArgs;
        public List<string> commandParameters;        

        [Header("Debugging")]
        [SerializeField] private bool EnableEditorLogging = false;
        [SerializeField] private bool EnableUnityLogging = true;
        public LogTypes currentlogs;

        [Header("File Info")]
        private string fileString;
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
                //Application.logMessageReceived += UnityLogHandler;
            }
        }

        private void OnDisable()
        {
            if (Debug.isDebugBuild)
            {
                //Application.logMessageReceived -= UnityLogHandler;
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
                commandParameters = new List<string>();
                CreateCommands();

                if (EnableEditorLogging || !Application.isEditor)
                {
                    CreateLogInput();
                }
            }
        }

        private void OnDestroy()
        {
            if (Debug.isDebugBuild && (EnableEditorLogging || !Application.isEditor))
            {
                EndLogInput();
            }
        }

        private void Update()
        {
            if (Debug.isDebugBuild)
            {
                KeyInputs();

                if (consoleCanvas.enabled && !previouslyOpen)
                {
                    prevTimeScale = Time.timeScale;
                    Time.timeScale = 0f;
                    PlayerInput.Instance.ReleaseControl();
                    previouslyOpen = true;
                }
                else if (!consoleCanvas.enabled && previouslyOpen)
                {
                    Time.timeScale = prevTimeScale;
                    PlayerInput.Instance.GainControl();
                    previouslyOpen = false;
                }
            }
        }

        /// <summary>
        /// Gets the navigation input of the console fomr the user.
        /// </summary>
        private void KeyInputs()
        {
            if (Input.GetKeyUp(KeyCode.BackQuote))
            {
                OpenConsole();
            }

            if (Input.GetKeyUp(KeyCode.Slash))
            {
                OpenConsoleSlash();               
            }

            if (Input.GetKeyUp(KeyCode.Escape))
            {
                
                CloseConsole();
                /*
                if (consoleCanvas.enabled)
                {
                    commandInput.text = "";
                    consoleCanvas.enabled = false;
                    
                }
                */
            }

            if (Input.GetKeyUp(KeyCode.Return))
            {
                if (consoleCanvas.enabled)
                {
                    if (commandInput.text != "")
                    {
                        AddMessage(commandInput.text);
                        //ParseInput(commandInput.text);
                        ParseCommand(commandInput.text);
                    }
                }
            }

            if (Input.GetKeyUp(KeyCode.UpArrow))
            {
                if (autoCompleteBackground.gameObject.activeSelf)
                {
                    autoCompleteSelection = AutoCompleteOptionIncrement(false);
                    autoCompleteText.text = AutoCompleteCommandHighlight();
                }
            }

            if (Input.GetKeyUp(KeyCode.DownArrow))
            {
                if (autoCompleteBackground.gameObject.activeSelf)
                {
                    autoCompleteSelection = AutoCompleteOptionIncrement(true);
                    autoCompleteText.text = AutoCompleteCommandHighlight();
                }                
            }

            if (Input.GetKeyUp(KeyCode.Tab))
            {
                if (autoCompleteBackground.gameObject.activeSelf)
                {
                    if(autoCompleteStrings.Count > 0)
                    {
                        commandInput.text = prefix + autoCompleteStrings[autoCompleteSelection];
                        commandInput.ActivateInputField();
                        commandInput.caretPosition = commandInput.text.Length;
                    }                    
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
                    string msg = "<color=" + LogColor[i] + ">(" + logType.ToString() + ")</color> " + logMessage;
                    string msg2 = "(" + logType.ToString() + ") " + logMessage;
                    AddMessage(msg, msg2);
                    return;
                }
            }
        }

        public void OpenConsole()
        {
            if (!consoleCanvas.enabled)
            {
                StartCoroutine(OpenCanvas());
            }
        }

        private void OpenConsoleSlash()
        {
            if (!consoleCanvas.enabled)
            {
                StartCoroutine(OpenCanvasSlash());
            }
        }

        /// <summary>
        /// Closes the developer console window. Used by the close button in the corner of the window.
        /// </summary>
        public void CloseConsole()
        {
            if (consoleCanvas.enabled)
            {
                StartCoroutine(CloseCanvas());
            }
        }

        IEnumerator OpenCanvas()
        {
            yield return new WaitUntil(() => !CanvasUpdateRegistry.IsRebuildingGraphics());
            consoleCanvas.enabled = true;

            commandInput.text = "";
            commandInput.ActivateInputField();
        }

        IEnumerator OpenCanvasSlash()
        {
            yield return new WaitUntil(() => !CanvasUpdateRegistry.IsRebuildingGraphics());
            consoleCanvas.enabled = true;

            commandInput.text = "/";
            commandInput.ActivateInputField();
            commandInput.caretPosition = commandInput.text.Length;
        }


        IEnumerator CloseCanvas()
        {
            yield return new WaitUntil(() => !CanvasUpdateRegistry.IsRebuildingGraphics());
            consoleCanvas.enabled = false;
        }

        /// <summary>
        /// Instanciates an instance of a command's class.
        /// </summary>
        private void CreateCommands()
        {
            CommandGive.CreateCommand();
            CommandLoad.CreateCommand();
            CommandQuit.CreateCommand();
            CommandReset.CreateCommand();
            CommandSpawn.CreateCommand();
            CommandTeleport.CreateCommand();
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
        /// Checks if the input string uses the command prefix.
        /// </summary>
        /// <param name="inputString">The user input.</param>
        /// <returns></returns>
        private bool HasCommandPrefix(string inputString)
        {
            if (inputString.StartsWith(prefix))
            {
                return true;
            }

            return false;
        }

        /// <summary>
        /// Strips input string's prefix and splits it into an array of strings.
        /// </summary>
        /// <param name="inputString">The user's input string.</param>
        /// <returns></returns>
        private string[] InputSplit(string inputString)
        {
            inputString = inputString.Remove(0, prefix.Length);

            return inputString.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
        }

        /// <summary>
        /// Called when the command text input changes.
        /// </summary>
        /// <param name="inputString">The current string of the command input.</param>
        public void CommandInputOnChange(string inputString)
        {
            //Disables the autocomplete window if the prefix isn't used and returns.
            if (!HasCommandPrefix(inputString))
            {
                autoCompleteBackground.gameObject.SetActive(false);
                return;
            }

            string[] inputSplit = InputSplit(inputString);

            string command = string.Empty;

            if (inputSplit.Length > 0)
            {
                command = inputSplit[0];
            }

            string[] args = inputSplit.Skip(1).ToArray();
            string[] paramArgs = string.Join(" ", args).Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

            //Resets values
            autoCompleteStrings.Clear();            
            autoCompleteArgs.Clear();
            autoCompleteSelection = 0;

            for (int i = 0; i < paramArgs.Length; i++)
            {
                autoCompleteArgs.Add(paramArgs[i]);
            }

            //Clears any previous parameters
            commandParameters.Clear();

            //Searches through all commands
            for (int i = 0; i < CommandNames.Count; i++)
            {
                //Checks for available arguments for the given command, true if command string is finished
                if(CommandNames[i].Equals(command, StringComparison.OrdinalIgnoreCase))
                {
                    Type classType = Commands[CommandNames[i]].GetType();
                    MethodInfo[] methods = classType.GetMethods();
                    List<MethodInfo> usableMethonds = new List<MethodInfo>();
                    List<ParameterInfo[]> methodParameters = new List<ParameterInfo[]>();

                    //Get all possible methods
                    foreach (MethodInfo m in methods)
                    {
                        if (m.Name.Equals(commandMethodName))
                        {
                            usableMethonds.Add(m);
                        }
                    }

                    //Get List of parameters from usable methonds
                    foreach (MethodInfo m in usableMethonds)
                    {
                        methodParameters.Add(m.GetParameters());
                    }

                    //Gets a string list of the parameter types found in each method
                    foreach (ParameterInfo[] param in methodParameters)
                    {
                        string parameters = string.Empty;

                        for (int j = 0; j < param.Count(); j++)
                        {
                            if (j == 0)
                            {
                                string type = GetTypeString(param[j].ParameterType);
                                parameters += type;
                            }
                            else
                            {
                                string type = GetTypeString(param[j].ParameterType);
                                parameters += ", " + type;
                            }
                        }

                        //If usable method has no parameter display "(No Arg)"
                        if (parameters.Equals(String.Empty))
                        {
                            parameters = "(No Arg)";
                        }

                        commandParameters.Add(parameters);
                    }

                    //Sets the autocomplete text to the available arguments
                    autoCompleteText.text = AutoCompleteArguments();

                    //Disables the autocomplete window if no commands were found
                    autoCompleteBackground.gameObject.SetActive(!autoCompleteText.text.Equals(string.Empty));
                    return;
                }

                //Adds the current command string to the list of available commands to autocomplete
                if (CommandNames[i].StartsWith(command, StringComparison.OrdinalIgnoreCase))
                {
                    autoCompleteStrings.Add(CommandNames[i]);
                }
            }

            //Highlights the first command in the list of options
            autoCompleteText.text = AutoCompleteCommandHighlight();

            //Disables the autocomplete window if no commands were found
            autoCompleteBackground.gameObject.SetActive(!autoCompleteText.text.Equals(string.Empty));
        }

        /// <summary>
        /// Sets the current selected autocomplete option's string color.
        /// </summary>
        /// <returns></returns>
        private string AutoCompleteCommandHighlight()
        {
            string[] options = autoCompleteStrings.ToArray();

            for (int i = 0; i < options.Length; i++)
            {
                if (i == autoCompleteSelection)
                {
                    options[i] = "<color=yellow>" + options[i] + "</color>";
                }
            }

            return string.Join("\n", options);
        }

        private string AutoCompleteArguments()
        {
            string[] options = commandParameters.ToArray();


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
                File.AppendAllText(currentPathFile, fileString + "\n");
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
        /// Sends messages to appropriate destination.
        /// </summary>
        /// <param name="msg">The main message to be sent.</param>
        /// <param name="msg2">A secondary message that doesn't hold rich text.</param>
        public void AddMessage(string msg, string msg2 = null)
        {
            AddMessageToConsole(msg);
            AddMessageToFile(msg2 == null ? msg : msg2);
        }

        /// <summary>
        /// Adds a string to the end of the text file.
        /// </summary>
        /// <param name="msg">String added to the end of the text file.</param>
        private void AddMessageToFile(string msg)
        {
            fileString += "[" + System.DateTime.Now + "] " + msg + "\n";
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
                    AddMessage("Not a valid command.");
                    ResetCommandInput();
                    return;
                }

                if (!Commands.ContainsKey(_input[0]))
                {
                    AddMessage("Not a valid command.");
                    ResetCommandInput();
                }
                else
                {
                    //AddMessage(Commands[_input[0]].RunCommand());
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

        /// <summary>
        /// Gets a string version of a value type.
        /// </summary>
        /// <param name="type">The type to convert to a string.</param>
        /// <returns></returns>
        private string GetTypeString(Type type)
        {
            if (ParamTypes.ContainsKey(type))
            {
                return ParamTypes[type];
            }

            return type.ToString();
        }

        private void ParseCommand(string inputString)
        {
            if (!HasCommandPrefix(inputString))
            {
                return;
            }

            string[] inputSplit = InputSplit(inputString);

            string command = string.Empty;

            if (inputSplit.Length > 0)
            {
                command = inputSplit[0];
            }

            string[] args = inputSplit.Skip(1).ToArray();
            string[] paramArgs = string.Join(" ", args).Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

            //Searches through all commands
            for (int i = 0; i < CommandNames.Count; i++)
            {
                //Checks for available arguments for the given command
                if (CommandNames[i].Equals(command, StringComparison.OrdinalIgnoreCase))
                {
                    Type classType = Commands[CommandNames[i]].GetType();
                    object classInstance = Activator.CreateInstance(classType, null);
                    MethodInfo[] methods = classType.GetMethods();

                    if (paramArgs.Count() > 0)
                    {
                        List<MethodInfo> usableMethods = new List<MethodInfo>();
                        List<ParameterInfo[]> methodParameters = new List<ParameterInfo[]>();

                        foreach (MethodInfo m in methods)
                        {
                            if (m.Name.Equals(commandMethodName))
                            {
                                usableMethods.Add(m);
                            }
                        }

                        foreach (MethodInfo m in usableMethods)
                        {
                            methodParameters.Add(m.GetParameters());
                        }

                        //The usable methods from the class
                        for(int j = 0; j < usableMethods.Count; j++)
                        {
                            if (methodParameters[j].Length == paramArgs.Count())
                            {
                                if(ParseParameters(classInstance, usableMethods[j], methodParameters[j], paramArgs))
                                {
                                    return;
                                }
                            }
                        }

                        AddMessage("No command could be found with arguments: " + string.Join(" ", args));
                        return;
                    }
                    else
                    {
                        MethodInfo method =  classType.GetMethod(commandMethodName, Type.EmptyTypes);

                        if(method != null)
                        {
                            bool successful = (bool)method.Invoke(classInstance, null);

                            if (successful)
                            {
                                EventSystem.current.SetSelectedGameObject(null);
                                consoleCanvas.enabled = false;  //Closes the Developer Console after a valid command is executed.           
                            }
                            else
                            {
                                ResetCommandInput();
                            }
                        }
                        else
                        {
                            AddMessage("No command could be found with no arguments.");
                        }

                        return;
                    }
                }
            }

            AddMessage(string.Format("No command with the name {0} could be found.", command));
            ResetCommandInput();
            return;
        }

        /// <summary>
        /// Parses the string args to see if they match the method paramaters.
        /// </summary>
        /// <param name="method">The method of the parameters.</param>
        /// <param name="paramInfo">The array of parameters.</param>
        /// <param name="paramArgs">The input args.</param>
        private bool ParseParameters(object classType, MethodInfo method, ParameterInfo[] paramInfo, string[] paramArgs)
        {

            object[] dynamicValues = new object[paramArgs.Count()];

            //The array of parameters for a method
            for (int k = 0; k < paramInfo.Length; k++)
            {
                if (!DeveloperConsoleHelper.GetParamType(ParamParse[paramInfo[k].ParameterType], paramArgs[k], out dynamicValues[k]))
                {
                    return false;
                }
            }

            //Successful method
            bool successful = (bool)method.Invoke(classType, dynamicValues);

            if(successful)
            {
                EventSystem.current.SetSelectedGameObject(null);
                consoleCanvas.enabled = false;  //Closes the Developer Console after a valid command is executed.           
            }
            else
            {
                ResetCommandInput();
            }
            
            return true;
        }
    }
}
