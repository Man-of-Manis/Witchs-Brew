using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Linq;

namespace WitchsBrew.Utilities.DeveloperConsole
{
    public class CommandSpawn : ConsoleCommand
    {
        public override string Name { get; protected set; }
        public override string Command { get; protected set; }
        public override string Description { get; protected set; }

        public List<string> options = new List<string>();

        private PlayerItemPickup itemPickup;

        /// <summary>
        /// Sets string fields upon instantiation.
        /// </summary>
        public CommandSpawn()
        {
            Name = "Spawn";
            Command = "spawn";
            Description = "Spawns the player an object based on given string.";

            AddItems();

            AddCommandToConsole();

            itemPickup = GameManager.Instance.player.GetComponent<PlayerItemPickup>();
        }

        /// <summary>
        /// Returns new instance of the class.
        /// </summary>
        /// <returns></returns>
        public static CommandSpawn CreateCommand()
        {
            return new CommandSpawn();
        }

        private void AddItems()
        {
            options.Add("AirPotion");
            options.Add("FirePotion");
            //itemNames.Add("LightningPotion");
            //itemNames.Add("NaturePotion");
            //itemNames.Add("IcePotion");            
            //itemNames.Add("MegaPotion");
        }

        /// <summary>
        /// Gives player, 1 of the string item if available.
        /// </summary>
        /// <param name="itemName">The name of the item.</param>
        /// <returns></returns>
        public bool RunCommand(string itemName)
        {
            return ItemSwitch(itemName);
        }

        /// <summary>
        /// Cross-checks given string.
        /// </summary>
        /// <param name="itemName">The string to check.</param>
        /// <param name="amount">Optional int amount. Defaults to 1 if left empty.</param>
        /// <returns></returns>
        private bool ItemSwitch(string itemName, int amount = 1)
        {
            if (amount < 1)
            {
                return false;
            }

            switch (itemName)
            {
                case "RedCube":
                    AddPotions(0, amount);
                    return true;
                case "OrangeCube":
                    AddPotions(1, amount);
                    return true;
                case "YellowCube":
                    AddPotions(2, amount);
                    return true;
                case "GreenCube":
                    AddPotions(3, amount);
                    return true;
                case "BlueCube":
                    AddPotions(4, amount);
                    return true;
                case "PurpleCube":
                    AddPotions(5, amount);
                    return true;
                case "AllCubes":
                    for(int i = 0; i < 6; i++)
                    {
                        AddPotions(i, amount);
                    }
                    return true;
                default:
                    return false;
            }
        }

        private void AddPotions(int type, int amount)
        {
            Instantiate(itemPickup.KeyCubes[type], itemPickup.PickupDropPosition, Quaternion.identity);
        }

        public string HelpCommand(string itemName)
        {
            return "[Reset current scene]";
        }
    }
}
