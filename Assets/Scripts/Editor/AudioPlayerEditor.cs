using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(AudioPlayer))]
public class AudioPlayerEditor : Editor
{
    int pixelOffset = 0;

    public override void OnInspectorGUI()
    {
        DrawDefaultInspector();

        AudioPlayer audio = (AudioPlayer)target;

        GUILayout.BeginHorizontal();
        switch ((int)audio.mixer)
        {
            case 0:
                EditorGUILayout.LabelField(new GUIContent("Master Groups"),
                new GUILayoutOption[] { GUILayout.MaxWidth(EditorGUIUtility.labelWidth - pixelOffset) });

                audio.masterGroup = (MasterMixerGroup)EditorGUILayout.EnumPopup(audio.masterGroup);
                break;
            case 1:
                EditorGUILayout.LabelField(new GUIContent("Sound FX Groups"),
                new GUILayoutOption[] { GUILayout.MaxWidth(EditorGUIUtility.labelWidth - pixelOffset) });

                audio.soundFXGroup = (SoundFXMixerGroup)EditorGUILayout.EnumPopup(audio.soundFXGroup);
                break;
            case 2:
                EditorGUILayout.LabelField(new GUIContent("Ambient Groups"),
                new GUILayoutOption[] { GUILayout.MaxWidth(EditorGUIUtility.labelWidth - pixelOffset) });

                audio.ambientGroup = (AmbientMixerGroup)EditorGUILayout.EnumPopup(audio.ambientGroup);
                break;
            case 3:
                EditorGUILayout.LabelField(new GUIContent("Player Groups"),
                new GUILayoutOption[] { GUILayout.MaxWidth(EditorGUIUtility.labelWidth - pixelOffset) });

                audio.playerGroup = (PlayerMixerGroup)EditorGUILayout.EnumPopup(audio.playerGroup);
                break;
            case 4:
                EditorGUILayout.LabelField(new GUIContent("Creatures Groups"),
                new GUILayoutOption[] { GUILayout.MaxWidth(EditorGUIUtility.labelWidth - pixelOffset) });

                audio.creatureGroup = (CreaturesMixerGroup)EditorGUILayout.EnumPopup(audio.creatureGroup);
                break;
            default:
                EditorGUILayout.LabelField(new GUIContent("Master Groups"),
                new GUILayoutOption[] { GUILayout.MaxWidth(EditorGUIUtility.labelWidth - pixelOffset) });

                audio.masterGroup = (MasterMixerGroup)EditorGUILayout.EnumPopup(audio.masterGroup);
                break;
        }
        GUILayout.EndHorizontal();
    }
}
