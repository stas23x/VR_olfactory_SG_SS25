using UnityEngine;

/// <summary>
/// Plays an audio clip when the player enters a trigger zone and stops it when they exit.
/// </summary>
[RequireComponent(typeof(AudioSource))]
public class ProximityAudio : MonoBehaviour
{
    private AudioSource audioSource;

    /// <summary>
    /// Initializes the audio source component.
    /// </summary>
    void Start()
    {
        audioSource = GetComponent<AudioSource>();
        audioSource.playOnAwake = false;
    }

    /// <summary>
    /// Plays the audio clip when the player enters the trigger zone.
    /// </summary>
    /// <param name="other"></param>
    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            audioSource.Play();
        }
    }

    /// <summary>
    /// Stops the audio clip when the player exits the trigger zone.
    /// </summary>
    /// <param name="other"></param>
    void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            audioSource.Stop();
        }
    }
}
