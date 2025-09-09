using UnityEngine;

/// <summary>
/// Singleton class that persists across scenes to maintain global state.
/// </summary>
public class AppRoot : MonoBehaviour
{
    // Static reference to the single instance of AppRoot
    public static AppRoot Instance;

    /// <summary>
    /// Initializes the Singleton instance and ensures it persists across scene loads.
    /// </summary>
    private void Awake()
    {
        // Check if an instance of AppRoot already exists
        if (Instance == null)
        {
            Debug.Log("Crating template -------------");
            // If no instance exists, set the current instance as the Singleton
            Instance = this;

            // Ensure that this object is not destroyed when loading a new scene
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            // If an instance already exists, destroy the new object to avoid duplication
            Debug.Log("Destroying template -------------");
            Destroy(gameObject);
        }
    }
}
