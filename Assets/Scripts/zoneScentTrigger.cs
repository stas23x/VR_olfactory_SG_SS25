using System.Collections;
using System.Collections.Generic;
using System.Runtime.ConstrainedExecution;
using UnityEngine;

/// <summary>
/// Sets up scent zones with different radii and frequencies.
/// </summary>
public class zoneScentTrigger : MonoBehaviour
{
    // Start is called before the first frame update
    public int frequency;
    private OlfactoryManager olfactoryManager;
    private string scentType;
    private bool inZone3 = false;
    private bool inZone2 = false;
    private bool inZone1 = false;

    public bool isActive = true; // only pump when true

    /// <summary>
    /// Initializes the scent zones with specified radii and frequencies.
    /// </summary>
    void Awake()
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

    /// <summary>
    /// Handles scent activation when the player enters the trigger zone.
    /// </summary>
    /// <param name="other"></param>
    void OnTriggerEnter(Collider other)
    {
        if (!isActive || other.name != "XRRig") return;
        
        if(GlobalSettings.Instance.useOlfactory)
        {
            if (gameObject.name == "Zone 3" & !inZone3)
            {
                inZone3 = true;
                olfactoryManager.StartScent(scentType, frequency);
                olfactoryManager.PushFrequency(frequency);
                Debug.Log("Entering zone 3: " + other.name);
            }
            else if (gameObject.name == "Zone 2" & !inZone2)
            {
                inZone2 = true;
                olfactoryManager.SetFrequency(frequency);
                olfactoryManager.PushFrequency(frequency);
                Debug.Log("Entering zone 2");
            }
            else if (gameObject.name == "Zone 1" & !inZone1)
            {
                inZone1 = true;
                olfactoryManager.SetFrequency(frequency);
                Debug.Log("Entering zone 1");
            }
        }
        
    }



    /// <summary>
    /// Handles scent deactivation when the player exits the trigger zone.
    /// </summary>
    /// <param name="other"></param>
    void OnTriggerExit(Collider other)
    {
        if (!isActive || other.name != "XRRig") return;


        if (GlobalSettings.Instance.useOlfactory)
        {
             if (gameObject.name == "Zone 3" & inZone3)
            {
                inZone3 = false;
                olfactoryManager.StopScent(scentType);
                Debug.Log("Exit zone 3");
            }
            else if (gameObject.name == "Zone 2" & inZone2)
            {
                inZone2 = false;
                olfactoryManager.ReturnToPreviousFrequency();
                Debug.Log("Exit zone 2");
            }
            else if (gameObject.name == "Zone 1" & inZone1)
            {
                inZone1 = false;
                olfactoryManager.ReturnToPreviousFrequency();
                Debug.Log("Exit zone 1");
            }
        }
       
    }
}
