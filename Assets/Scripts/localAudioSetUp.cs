using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Sets up local audio sources to use the "Local" mixer group from the global audio mixer.
/// </summary>
public class localAudioSetUp : MonoBehaviour
{
    // Audio specified by the user when modifying the audion source parameters
    private AudioSource audioSource;

    /// <summary>
    /// Initializes the local audio source to use the "Local" mixer group from the global audio mixer.
    /// </summary>
    void Start()
    {
        // Connect to the audio source defined in the inspector which is modified for each 
        // instance on the scenes
        audioSource = GetComponent<AudioSource>();

        if (AudioManager.Instance != null)
        {
            // Assign the mixer group's master or any exposed group from globalMixer
            UnityEngine.Audio.AudioMixerGroup[] groups = AudioManager.Instance.globalMixer.FindMatchingGroups("Local");
            if (groups.Length > 0)
            {
                audioSource.outputAudioMixerGroup = groups[0];
                audioSource.Play();
            }
            else
            {
                Debug.LogWarning("No AudioMixerGroup named 'Local' found in GlobalAudioMixer.");
            }
        }
        else
        {
            Debug.LogWarning("GlobalAudioManager instance not found! Cannot assign AudioMixer.");
        }
    }
}
