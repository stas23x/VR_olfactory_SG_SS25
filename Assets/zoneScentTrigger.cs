using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class zoneScentTrigger : MonoBehaviour
{
    // Start is called before the first frame update
    public int frequency;

    private OlfactoryManager olfactoryManager;

    private bool inZone3 = false;
    private bool inZone2 = false;
    private bool inZone1 = false;
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

            Debug.Log("Other collision");
            return;
        }
        if (gameObject.name == "Zone 3" & !inZone3)
        {
            inZone3 = true;
            Debug.Log("Entering zone 3: " + other.name);
        }
        else if (gameObject.name == "Zone 2" & !inZone2)
        {
            inZone2 = true;
            Debug.Log("Entering zone 2");
        }
        else if (gameObject.name == "Zone 1" & !inZone1)
        {
            inZone1 = true;
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
        if (gameObject.name == "Zone 3" & inZone3)
        {
            inZone3 = false;
            Debug.Log("Exit zone 3");
        }
        else if (gameObject.name == "Zone 2" & inZone2)
        {
            inZone2 = false;
            Debug.Log("Exit zone 2");
        }
        else if (gameObject.name == "Zone 1" & inZone1)
        {
            inZone1 = false;
            Debug.Log("Exit zone 1");
        }

        // olfactoryManager.StartScent("Sample", frequency);
    }
    
}
