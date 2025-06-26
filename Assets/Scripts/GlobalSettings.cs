using UnityEngine;

public class GlobalSettings : MonoBehaviour
{
    public static GlobalSettings Instance;

    public float audioStrength = 1.0f;
    public string skyVolume = "";
    public string currentSceneName = "";

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
