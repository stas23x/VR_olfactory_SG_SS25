using UnityEngine;

public class FollowHeadset : MonoBehaviour
{
    public Transform target;  // Assign the XR Camera
    public Vector3 offset = new Vector3(0, -0.2f, 0.5f);
    public float followSpeed = 5f;

    void Update()
    {
        if (target == null) return;

        Vector3 targetPosition = target.position + target.forward * offset.z + target.up * offset.y + target.right * offset.x;
        transform.position = Vector3.Lerp(transform.position, targetPosition, Time.deltaTime * followSpeed);

        // // Optional: smoothly rotate to face camera
        // Quaternion targetRotation = Quaternion.LookRotation(target.position - transform.position);
        // transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * followSpeed);
    }
}
