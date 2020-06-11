using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Linq;

namespace WitchsBrew.Utilities.DeveloperConsole
{
    public class CommandTeleport : ConsoleCommand
    {
        public override string Name { get; protected set; }
        public override string Command { get; protected set; }
        public override string Description { get; protected set; }

        private CheckpointList checkpoints;

        /// <summary>
        /// Sets string fields upon instantiation.
        /// </summary>
        public CommandTeleport()
        {
            Name = "Teleport";
            Command = "teleport";
            Description = "Teleports the player to the given position or checkpoint.";

            AddCommandToConsole();

            GetCheckpoints();
        }

        /// <summary>
        /// Returns new instance of the class.
        /// </summary>
        /// <returns></returns>
        public static CommandTeleport CreateCommand()
        {
            return new CommandTeleport();
        }

        public bool RunCommand(Vector3 position)
        {
            return false;
        }

        public bool RunCommand(int checkpointIndex)
        {
            if(checkpoints == null)
            {
                return false;
            }

            Checkpoint check = checkpoints.SceneCheckpoints[checkpointIndex];

            if(check != null)
            {
                GameManager.Instance.player.GetComponent<PlayerMixamoController>().
                SetPlayerRotation(check.transform.eulerAngles.y, check.transform.position);
                return true;
            }

            return false;
        }

        private void GetCheckpoints()
        {
            checkpoints = FindObjectOfType<CheckpointList>();
        }
    }
}
