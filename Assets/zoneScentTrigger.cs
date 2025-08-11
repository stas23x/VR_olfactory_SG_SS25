using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class zoneScentTrigger : MonoBehaviour
{
    // Start is called before the first frame update
    public int frequency;

    private OlfactoryManager olfactoryManager;

    void Start()
    {
        olfactoryManager = OlfactoryManager.Instance;
        if (olfactoryManager == null)
        {
            Debug.LogError("OlfactoryManager instance not found. Make sure it is initialized before ScentTrigger.");
            // return;
        }

    }
    void OnTriggerEnter(Collider other)
    {
        if (other.name != "XRRig")
        {
            return;
        }
        if (gameObject.name == "Zone 3")
        {
            Debug.Log("Entering zone 3");
        }
        else if (gameObject.name == "Zone 2")
        {
            Debug.Log("Entering zone 2");
        }
        else if (gameObject.name == "Zone 1")
        {
            Debug.Log("Entering zone 1");
        }

        // olfactoryManager.StartScent("Sample", frequency);
    }
    void OnTriggerExit(Collider other)
    {
        if (other.name != "XRRig")
        {
            return;
        }
        if (gameObject.name == "Zone 3")
        {
            Debug.Log("Exit zone 3");
        }
        else if (gameObject.name == "Zone 2")
        {
            Debug.Log("Exit zone 2");
        }
        else if (gameObject.name == "Zone 1")
        {
            Debug.Log("Exit zone 1");
        }

        // olfactoryManager.StartScent("Sample", frequency);
    }
    
}
