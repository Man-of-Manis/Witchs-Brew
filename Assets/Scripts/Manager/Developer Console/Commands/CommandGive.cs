using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Linq;

namespace WitchsBrew.Utilities.DeveloperConsole
{
    public class CommandGive : ConsoleCommand
    {
        public override string Name { get; protected set; }
        public override string Command { get; protected set; }
        public override string Description { get; protected set; }

        public List<string> options = new List<string>();

        /// <summary>
        /// Sets string fields upon instantiation.
        /// </summary>
        public CommandGive()
        {
            Name = "Give";
            Command = "give";
            Description = "Gives the player an item based on given string.";

            AddItems();

            AddCommandToConsole();
        }

        /// <summary>
        /// Returns new instance of the class.
        /// </summary>
        /// <returns></returns>
        public static CommandGive CreateCommand()
        {
            return new CommandGive();
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
        /// Gives the player the given amount of the string item if available.
        /// </summary>
        /// <param name="itemName">The name of the item.</param>
        /// <param name="amount">The amount to give.</param>
        /// <returns></returns>
        public bool RunCommand(string itemName, int amount)
        {
            return ItemSwitch(itemName, amount);
        }

        /// <summary>
        /// Cross-checks given string.
        /// </summary>
        /// <param name="itemName">The string to check.</param>
        /// <param name="amount">Optional int amount. Defaults to 1 if left empty.</param>
        /// <returns></returns>
        private bool ItemSwitch(string itemName, int amount = 1)
        {
            if(amount < 1)
            {
                return false;
            }

            switch(itemName)
            {
                case "AirPotion":
                    AddPotions(0, amount);
                    return true;
                case "FirePotion":
                    AddPotions(1, amount);
                    return true;
                default:
                    return false;
            }
        }

        private void AddPotions(int type, int amount)
        {
            //Add potion/s
            ItemController itemCon = GameManager.Instance.player.GetComponent<ItemController>();

            if(itemCon != null)
            {
                itemCon.LearnNewPotion(type);
                itemCon.Potions(type, amount);
            }            
        }

        public string HelpCommand(string itemName)
        {
            return "[Reset current scene]";
        }
    }
}
