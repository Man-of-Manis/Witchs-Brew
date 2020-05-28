using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IConsoleCommand 
{
    string Name { get; set; }
    string Command { get; set; }
}
