using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Linq;

namespace WitchsBrew.Utilities.DeveloperConsole
{
    public class CommandReset : ConsoleCommand
    {
        public override string Name { get; protected set; }
        public override string Command { get; protected set; }
        public override string Description { get; protected set; }

        /// <summary>
        /// Sets string fields upon instantiation.
        /// </summary>
        public CommandReset()
        {
            Name = "Reset";
            Command = "reset";
            Description = "Resets the current or given level.";

            AddCommandToConsole();
        }

        /// <summary>
        /// Returns new instance of the class.
        /// </summary>
        /// <returns></returns>
        public static CommandReset CreateCommand()
        {
            return new CommandReset();
        }

        /// <summary>
        /// Resets current scene.
        /// </summary>
        public bool RunCommand()
        {
            LoadingScreenBar.Instance.LoadLevel(SceneManager.GetActiveScene().buildIndex);
            return true;
        }

        public string HelpCommand()
        {
            return "[Reset current scene]";
        }
    }
}
