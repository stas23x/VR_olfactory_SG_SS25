using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class localAudioSetUp : MonoBehaviour
{

    // Audio specified by the user when modifying the audion source parameters
    private AudioSource audioSource;

    // Update is called once per frame
    void Update()
    {

    }

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

    // void OnTriggerEnter(Collider other)
    // {
    //     if (other.CompareTag("Player"))
    //     {
    //         audioSource.Play();
    //     }
    // }

    // void OnTriggerExit(Collider other)
    // {
    //     if (other.CompareTag("Player"))
    //     {
    //         audioSource.Stop();
    //     }
    // }
}
