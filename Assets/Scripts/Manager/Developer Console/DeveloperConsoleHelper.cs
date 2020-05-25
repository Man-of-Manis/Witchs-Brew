using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Dynamic;

namespace WitchsBrew.Utilities.DeveloperConsole
{
    public static class DeveloperConsoleHelper
    {
        /// <summary>
        /// Checks if string can parse as a float.
        /// </summary>
        /// <param name="vectorString">The arg string to check</param>
        /// <param name="conversion">The vector3 to return if parse is successful.</param>
        /// <returns></returns>
        public static bool TryParse(string vectorString, out Vector3 conversion)
        {
            conversion = Vector3.zero;
            vectorString = vectorString.TrimStart(' ');
            vectorString = vectorString.TrimEnd(' ');
            string[] vectors = vectorString.Split(' ');

            //Check if string only has 3 variables
            if (vectors.Length != 3)
            {
                //Debug.Log("Vector length was not equal to 3.");
                return false;
            }

            //Check if arg 1 can parse as a float
            if (!float.TryParse(vectors[0], out conversion.x))
            {
                return false;
            }

            //Check if arg 2 can parse as a float
            if (!float.TryParse(vectors[1], out conversion.y))
            {
                return false;
            }

            //Check if arg 3 can parse as a float
            if (!float.TryParse(vectors[2], out conversion.z))
            {
                return false;
            }

            return true;
        }

        /// <summary>
        /// Determines if given string value can be parsed by a Type.
        /// </summary>
        /// <param name="type">The Type to convert to.</param>
        /// <param name="arg">The string to convert from.</param>
        /// <param name="value">The value upon conversion.</param>
        /// <returns></returns>
        public static bool GetParamType(int type, string arg, out object value)
        {
            if(type == 0)
            {
                int intValue;
                if(int.TryParse(arg, out intValue))
                {
                    value = intValue;
                    return true;
                }

                //Debug.Log("String: " + arg + " couldn't be parsed into a int.");
                value = intValue;
                return false;
            }
            else if (type == 1)
            {
                float floatValue;
                if (float.TryParse(arg, out floatValue))
                {
                    value = floatValue;
                    return true;
                }

                //Debug.Log("String: " + arg + " couldn't be parsed into a float.");
                value = floatValue;
                return false;
            }
            else if (type == 2)
            {
                Vector3 vector3Value;
                if (TryParse(arg, out vector3Value))
                {
                    value = vector3Value;
                    return true;
                }

                //Debug.Log("String: " + arg + " couldn't be parsed into a Vector3.");
                value = vector3Value;
                return false;
            }
            //string
            else if(type == 3)
            {
                if(arg.Equals(string.Empty) || arg.Equals(null))
                {
                    value = null;
                    return true;
                }

                value = arg;
                return true;
            }
            else
            {
                //Debug.Log("String: " + arg + " couldn't be parsed at all.");
                value = arg;
                return false;
            }
        }
    }
}
