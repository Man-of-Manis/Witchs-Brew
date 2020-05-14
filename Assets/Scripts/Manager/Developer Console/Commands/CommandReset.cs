using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace WitchsBrew.Utilities.DeveloperConsole
{
    public class CommandReset : ConsoleCommand
    {
        public override string Name { get; protected set; }
        public override string Command { get; protected set; }
        public override string Description { get; protected set; }
        public override string Execution { get; protected set; }

        public CommandReset()
        {
            Name = "Reset";
            Command = "reset";
            Description = "Resets the current level.";
            Execution = "[The level has been reset]";

            AddCommandToConsole();
        }

        /// <summary>
        /// The execution of the Command
        /// </summary>
        public override string RunCommand()
        {
            //SceneManager.LoadScene(SceneManager.GetActiveScene().name);
            LoadingScreenBar.Instance.LoadLevel(1);
            return Execution;
        }

        public static CommandReset CreateCommand()
        {
            return new CommandReset();
        }
    }
}
