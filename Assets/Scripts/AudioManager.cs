using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Audio;

/// <summary>
/// Manages global audio settings using an Audio Mixer. 
/// </summary>
public class AudioManager : MonoBehaviour
{

    public static AudioManager Instance{get; private set;}
    
    public AudioMixer globalMixer;  // Assign your Audio Mixer in inspector

    public AudioSource globalAudioSource; // Assign a global AudioSource in inspector

    // Call this to set volume (value 0 to 1 from UI slider)

    /// <summary>
    /// Ensures a single instance of AudioManager exists and initializes the global audio mixer.
    /// </summary>
    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }

        Instance = this;

        if (globalMixer == null)
            Debug.LogWarning("Global AudioMixer not assigned in GlobalAudioManager!");
    }

    /// <summary>
    /// Sets the master volume of the audio mixer based on a linear slider value (0 to 1).
    /// </summary>
    /// <param name="volume"></param>
    public void SetMasterVolume(float volume)
    {
        // Convert linear slider (0-1) to decibels (-80 to 0)
        float dB = Mathf.Log10(Mathf.Clamp(volume, 0.0001f, 1f)) * 20f;
        globalMixer.SetFloat("MasterVolume", dB);
    }
}
