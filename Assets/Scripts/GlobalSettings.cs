using UnityEngine;
using UnityEngine.Rendering;
using System.Collections.Generic;

/// <summary>
/// Singleton class to hold global settings for the application.
/// This includes audio settings, scene settings, sky settings, and participant information.
/// </summary>
public class GlobalSettings : MonoBehaviour
{
    // Singleton instance that can be accessed globally
    public static GlobalSettings Instance;

    [Header("Audio Settings")]
    public float audioStrength = 1.0f;

    [Header("Scene Settings")]
    public string currentSceneName = "";

    [Header("Sky Settings")]
    public List<VolumeProfile> skyProfiles;
    public int selectedSkyProfileIndex = 0;
    public Volume globalVolume;
    public string participantID = "P001";
    public bool useAudio = true;
    public bool useOlfactory = true;
    public bool autoStartExperiment = false;

    /// <summary>
    /// Awake is called when the script instance is being loaded.
    /// Implements the singleton pattern to ensure only one instance exists.
    /// </summary>
    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else if (Instance != this)
        {
            Destroy(gameObject);
        }
    }

    /// <summary>
    /// Applies the selected sky profile to the global volume.
    /// </summary>
    public void ApplySkyProfile()
    {
        if (globalVolume != null &&
            skyProfiles != null &&
            selectedSkyProfileIndex >= 0 &&
            selectedSkyProfileIndex < skyProfiles.Count &&
            skyProfiles[selectedSkyProfileIndex] != null)
        {
            globalVolume.profile = skyProfiles[selectedSkyProfileIndex];
        }
        else
        {
            Debug.LogWarning("Sky profile not applied: Missing references or invalid index.");
        }
    }
}
