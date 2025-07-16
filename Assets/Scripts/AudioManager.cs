using UnityEngine;
using UnityEngine.Audio;

public class AudioManager : MonoBehaviour
{
    public AudioMixer masterMixer;  // Assign your Audio Mixer in inspector

    public AudioSource globalAudioSource; // Assign a global AudioSource in inspector

    // Call this to set volume (value 0 to 1 from UI slider)
    public void SetMasterVolume(float volume)
    {
        // Convert linear slider (0-1) to decibels (-80 to 0)
        float dB = Mathf.Log10(Mathf.Clamp(volume, 0.0001f, 1f)) * 20f;
        masterMixer.SetFloat("MasterVolume", dB);
    }
}
