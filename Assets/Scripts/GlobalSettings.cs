using UnityEngine;

public class GlobalSettings : MonoBehaviour
{
    public static GlobalSettings Instance;

    public string participantID;
    
    [Range(0f, 1f)]
    public float audioStrength = 1.0f;

    // TODO: change variable types
    [Range(0f, 1f)]
    public float skyVolume = 1.0f;

    [Range(0f, 1f)]
    public float scene = 1.0f;

    public string selectedVolumeProfile;

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
}
