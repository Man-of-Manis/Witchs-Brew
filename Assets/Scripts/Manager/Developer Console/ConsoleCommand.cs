using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class ConsoleCommand
{
    public abstract string Name { get; protected set; }
    public abstract string Command { get; protected set; }
    public abstract string Description { get; protected set; }
    public abstract string Help { get; protected set; }

    public void AddCommandToConsole()
    {

    }

    public abstract void RunCommand();
}
