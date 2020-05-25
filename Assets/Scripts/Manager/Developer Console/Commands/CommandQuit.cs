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

        /// <summary>
        /// Sets string fields upon instantiation.
        /// </summary>
        public CommandQuit()
        {
            Name = "Quit";
            Command = "quit";
            Description = "Quits the application or editor.";

            AddCommandToConsole();
        }

        /// <summary>
        /// Returns a new instance of the class.
        /// </summary>
        /// <returns></returns>
        public static CommandQuit CreateCommand()
        {
            return new CommandQuit();
        }

        /// <summary>
        /// Quits the editor or application.
        /// </summary>
        /// <returns></returns>
        public bool RunCommand()
        {
#if UNITY_EDITOR
            if (UnityEditor.EditorApplication.isPlaying)
            {
                UnityEditor.EditorApplication.isPlaying = false;
                return true;
            }
#endif

            if (Application.isPlaying)
            {
                Application.Quit();
                return true;
            }

            return false;
        }

    }
}
