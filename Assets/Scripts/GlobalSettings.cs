using UnityEngine;
using UnityEngine.Rendering;
using System.Collections.Generic;


public class GlobalSettings : MonoBehaviour
{
    public static GlobalSettings Instance;

    [Header("Audio Settings")]
    public float audioStrength = 1.0f;

    [Header("Scene Settings")]
    public string currentSceneName = "";

    [Header("Sky Settings")]
    public List<VolumeProfile> skyProfiles;              
    public int selectedSkyProfileIndex = 0;
    public Volume globalVolume;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }

    public void ApplySkyProfile()
    {
        if (globalVolume != null && skyProfiles != null && selectedSkyProfileIndex >= 0 && selectedSkyProfileIndex < skyProfiles.Count)
        {
            globalVolume.profile = skyProfiles[selectedSkyProfileIndex];
        }
        else
        {
            Debug.LogWarning("Sky profile not applied: Missing references or invalid index.");
        }
    }
}
