using UnityEngine;

public class ScentTrigger : MonoBehaviour
{
    public OlfactoryManager olfactoryManager;
    public string scentType = "default";

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
