using UnityEngine;

public class ScentTrigger : MonoBehaviour
{
    public OlfactoryManager olfactoryManager;
    public string scentType = "default";

    private void OnTriggerEnter(Collider other)
    {
        
        olfactoryManager.TriggerScent(scentType);
        Debug.Log("Entered first part");
    }

    void OnTriggerExit(Collider other)
    {

        olfactoryManager.StopScent(scentType);
    }
}
