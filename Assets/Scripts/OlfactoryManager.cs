using UnityEngine;

public class OlfactoryManager : MonoBehaviour
{
    void Start()
    {
        // Initialize serial communication with Arduino
    }

    public void TriggerScent(string scentType)
    {
        // Send signal to Arduino
        Debug.Log("Trigger scent: " + scentType);
    }
}
