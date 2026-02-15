using UnityEngine;

/// <summary>
/// Makes the GameObject follow the XR camera's position and orientation.
/// Attach this script to the GameObject you want to follow the headset.
/// </summary>
public class FollowHeadset : MonoBehaviour
{
    public Transform target;  // Assign the XR Camera
   
   /// <summary>
   /// Update is called once per frame and repositions the object you want to 
   /// follow the camera accordingly to the camera position and orientation.
   /// </summary>
    void Update()
    {
        if (target == null) return;

        // Calculate the new position
        Vector3 cameraPosition = target.position;
        Vector3 cameraForward = target.forward;

        // Set the position 2 meters in front of the camera
        transform.position = cameraPosition + cameraForward * 1.5f;

        // Make the object face the same direction as the camera
        transform.rotation = Quaternion.LookRotation(cameraForward);

    }
}