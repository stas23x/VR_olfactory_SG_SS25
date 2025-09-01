using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class zoneScentTrigger : MonoBehaviour
{
    // Start is called before the first frame update
    public int frequency;

    private OlfactoryManager olfactoryManager;

    private string scentType;

    private bool inZone3 = false;
    private bool inZone2 = false;
    private bool inZone1 = false;
    // void Start()
    // {
    //     olfactoryManager = OlfactoryManager.Instance;
    //     if (olfactoryManager == null)
    //     {
    //         Debug.LogError("OlfactoryManager instance not found. Make sure it is initialized before ScentTrigger.");
    //     }

    //     // Look up the parent ScentTrigger to get the scentType
    //     ScentTrigger parentTrigger = GetComponentInParent<ScentTrigger>();
    //     if (parentTrigger != null)
    //     {
    //         scentType = parentTrigger.scentType;
    //     }
    //     else
    //     {
    //         Debug.LogError("Parent ScentTrigger not found! Make sure this zone is a child of an OlfactorySphere.");
    //     }

    // }


    void Start()
{
    olfactoryManager = OlfactoryManager.Instance;
    if (olfactoryManager == null)
    {
        // fallback if singleton not yet initialized
        olfactoryManager = FindObjectOfType<OlfactoryManager>();
    }

    if (olfactoryManager == null)
    {
        Debug.LogError("OlfactoryManager not found in scene! Make sure you have one active OlfactoryManager object.");
    }

    // Look up the parent ScentTrigger to get the scentType
    ScentTrigger parentTrigger = GetComponentInParent<ScentTrigger>();
    if (parentTrigger != null)
    {
        scentType = parentTrigger.scentType;
    }
    else
    {
        Debug.LogError("Parent ScentTrigger not found! Make sure this zone is a child of an OlfactorySphere.");
    }
}

    void OnTriggerEnter(Collider other)
    {
        if (other.name != "XRRig")
        {

            Debug.Log("Other collision");
            return;
        }

        Debug.Log($"Entering {gameObject.name}, starting scent {scentType} at {frequency}Hz");

        if (olfactoryManager != null)
        {
            olfactoryManager.StartScent(scentType, frequency);
        }
        else
        {
            Debug.LogError("OlfactoryManager instance is null. Cannot start scent.");
        }


        // if (gameObject.name == "Zone 3" & !inZone3)
        // {
        //     inZone3 = true;
        //     Debug.Log("Entering zone 3: " + other.name);
        // }
        // else if (gameObject.name == "Zone 2" & !inZone2)
        // {
        //     inZone2 = true;
        //     Debug.Log("Entering zone 2");
        // }
        // else if (gameObject.name == "Zone 1" & !inZone1)
        // {
        //     inZone1 = true;
        //     Debug.Log("Entering zone 1");
        // }


        // olfactoryManager.StartScent("Sample", frequency);
    }
    void OnTriggerExit(Collider other)
    {
        if (other.name != "XRRig")
        {
            return;
        }


        Debug.Log($"Exiting {gameObject.name}, stopping scent {scentType}");

        if (olfactoryManager != null)
        {
            olfactoryManager.StopScent(scentType);
        }
        else
        {
            Debug.LogError("OlfactoryManager instance is null. Cannot stop scent.");
        }


        // if (gameObject.name == "Zone 3" & inZone3)
        // {
        //     inZone3 = false;
        //     Debug.Log("Exit zone 3");
        // }
        // else if (gameObject.name == "Zone 2" & inZone2)
        // {
        //     inZone2 = false;
        //     Debug.Log("Exit zone 2");
        // }
        // else if (gameObject.name == "Zone 1" & inZone1)
        // {
        //     inZone1 = false;
        //     Debug.Log("Exit zone 1");
        // }

        // olfactoryManager.StartScent("Sample", frequency);
    }
    
}
