using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace WitchsBrew.Utilities.DeveloperConsole
{
    public class CommandQuit : ConsoleCommand
    {
        public override string Name { get; protected set; }
        public override string Command { get; protected set; }
        public override string Description { get; protected set; }
        public override string Execution { get; protected set; }

        /// <summary>
        /// sets the properties of the class when it is created.
        /// </summary>
        public CommandQuit()
        {
            Name = "Quit";
            Command = "quit";
            Description = "Quits the application or editor.";
            Execution = "[The application has quit]";

            AddCommandToConsole();
        }

        /// <summary>
        /// The execution of the Command.
        /// </summary>
        public override string RunCommand()
        {
#if UNITY_EDITOR
            if (UnityEditor.EditorApplication.isPlaying)
            {
                UnityEditor.EditorApplication.isPlaying = false;
            }
#endif

            if (Application.isPlaying)
            {
                Application.Quit();
            }

            return Execution;
        }

        /// <summary>
        /// Returns a new instance of the class.
        /// </summary>
        /// <returns></returns>
        public static CommandQuit CreateCommand()
        {
            return new CommandQuit();
        }
    }
}
