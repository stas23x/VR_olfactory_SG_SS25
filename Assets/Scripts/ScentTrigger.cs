using UnityEngine;

public class ScentTrigger : MonoBehaviour
{
    private OlfactoryManager olfactoryManager;
    public string scentType = "default";

    void Start()
    {
        olfactoryManager = OlfactoryManager.Instance;
        if (olfactoryManager == null)
        {
            Debug.LogError("OlfactoryManager instance not found. Make sure it is initialized before ScentTrigger.");
            return;
        }
        
    }
    public void OnTriggerEnter(Collider other)
    {
        // Debug.Log("Trigger scent: " + scentType);
        olfactoryManager.StartScent(scentType);
    }

    public void OnTriggerStay(Collider other)
    {
        // Debug.Log("Updating inside: " + scentType);
    }
    public void OnTriggerExit(Collider other)
    {
        // Debug.Log("Stop scent: " + scentType);
        olfactoryManager.StopScent(scentType);
    }

}
