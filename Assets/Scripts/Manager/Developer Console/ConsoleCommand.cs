using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace WitchsBrew.Utilities.DeveloperConsole
{
    public abstract class ConsoleCommand: MonoBehaviour
    {
        public abstract string Name { get; protected set; }
        public abstract string Command { get; protected set; }
        public abstract string Description { get; protected set; }
        //public abstract string Execution { get; protected set; }

        /// <summary>
        /// Adds the command to the list of viable console commands.
        /// </summary>
        public void AddCommandToConsole()
        {
            DeveloperConsole.AddCommandsToConsole(Command, this);
        }
        /*
        /// <summary>
        /// The execution of the Command
        /// </summary>
        public abstract string RunCommand();
        */
    }
}
