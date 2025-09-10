using UnityEngine;

/// <summary>
/// Sets up scent zones with different radii and frequencies.
/// </summary>
public class ScentTrigger : MonoBehaviour
{
    public string scentType = "default";
    public float zone1Radius;
    public float zone2Radius;
    public float zone3Radius;

    /// <summary>
    /// Initializes the scent zones with specified radii and frequencies.
    /// </summary>
    void Start()
    {
        Transform zone1 = transform.Find("Zone 1");
        Transform zone2 = transform.Find("Zone 2");
        Transform zone3 = transform.Find("Zone 3");

        SphereCollider sphere1 = zone1.GetComponent<SphereCollider>();
        SphereCollider sphere2 = zone2.GetComponent<SphereCollider>();
        SphereCollider sphere3 = zone3.GetComponent<SphereCollider>();

        sphere1.radius = zone1Radius;
        sphere2.radius = zone2Radius;
        sphere3.radius = zone3Radius;

        zoneScentTrigger s1 = zone1.GetComponent<zoneScentTrigger>();
        zoneScentTrigger s2 = zone2.GetComponent<zoneScentTrigger>();
        zoneScentTrigger s3 = zone3.GetComponent<zoneScentTrigger>();
        if (s1 == null) Debug.LogError("Script not found");
        s1.frequency = 40;
        s2.frequency = 20;
        s3.frequency = 10;
    }
}
