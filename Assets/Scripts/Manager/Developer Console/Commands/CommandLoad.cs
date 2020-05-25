using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Linq;

namespace WitchsBrew.Utilities.DeveloperConsole
{
    public class CommandLoad : ConsoleCommand
    {
        public override string Name { get; protected set; }
        public override string Command { get; protected set; }
        public override string Description { get; protected set; }

        /// <summary>
        /// Sets string fields upon instantiation.
        /// </summary>
        public CommandLoad()
        {
            Name = "Load";
            Command = "load";
            Description = "Loads the current or given level.";

            AddCommandToConsole();
        }

        /// <summary>
        /// Returns new instance of the class.
        /// </summary>
        /// <returns></returns>
        public static CommandLoad CreateCommand()
        {
            return new CommandLoad();
        }

        /// <summary>
        /// Resets current scene.
        /// </summary>
        public bool RunCommand()
        {
            LoadingScreenBar.Instance.LoadLevel(SceneManager.GetActiveScene().buildIndex);
            return true;
        }

        /// <summary>
        /// Loads scene at given index.
        /// </summary>
        /// <param name="sceneIndex">The scene index to load.</param>
        public bool RunCommand(int sceneIndex)
        {
            if (sceneIndex < SceneManager.sceneCountInBuildSettings && sceneIndex >= 0)
            {
                LoadingScreenBar.Instance.LoadLevel(sceneIndex);
                return true;
            }
            else
            {
                string[] indexString = new string[SceneManager.sceneCountInBuildSettings];
                for (int i = 0; i < SceneManager.sceneCountInBuildSettings; i++)
                {
                    indexString[i] = i.ToString();
                }

                string indexList = string.Join(", ", indexString, 0, indexString.Length - 1) +
                    ((indexString.Length > 2) ? ", and " : " and ") + indexString.LastOrDefault();

                DeveloperConsole.Instance.AddMessage(string.Format("No scene at index: {0} could be found. There {1} {2} {3} in this build at index: {4}.",
                    sceneIndex.ToString(), (SceneManager.sceneCountInBuildSettings > 1) ? "are" : "is",
                    SceneManager.sceneCountInBuildSettings.ToString(), (SceneManager.sceneCountInBuildSettings > 1) ? "scenes" : "scene", indexList));
            }

            return false;
        }

        /// <summary>
        /// Loads scene with given string name.
        /// </summary>
        /// <param name="sceneName">The scene name to use.</param>
        /// <returns></returns>
        public bool RunCommand(string sceneName)
        {
            List<string> sceneNames = new List<string>();

            for (int i = 0; i < SceneManager.sceneCountInBuildSettings; i++)
            {
                sceneNames.Add(System.IO.Path.GetFileNameWithoutExtension(SceneUtility.GetScenePathByBuildIndex(i)));
            }

            if (sceneNames.Contains(sceneName))
            {
                LoadingScreenBar.Instance.LoadLevel(sceneNames.FindIndex(x => x.Equals(sceneName)));
                return true;
            }
            else
            {
                //string nameList = string.Join(", ", sceneNames);  
                string nameList = string.Join(", ", sceneNames.ToArray(), 0, sceneNames.Count - 1) +
                    ((sceneNames.Count > 2) ? ", and " : " and ") + sceneNames.LastOrDefault();

                DeveloperConsole.Instance.AddMessage(string.Format("No scene with the name: {0} could be found. The available scene names are: {1}",
                    sceneName, nameList));
            }
            return false;
        }

        public string HelpCommand()
        {
            return "[Reset current scene]";
        }

        public string HelpCommand(int sceneIndex)
        {
            return "[Load scene at index]";
        }

        public string HelpCommand(string sceneName)
        {
            return "[Load scene with name]";
        }
    }
}
