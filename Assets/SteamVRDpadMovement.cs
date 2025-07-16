using UnityEngine;
using Valve.VR;

public class SteamVRDpadMovement : MonoBehaviour
{
    [Header("SteamVR DPad Actions")]
    public SteamVR_Action_Boolean moveUp;
    public SteamVR_Action_Boolean moveDown;
    public SteamVR_Action_Boolean moveLeft;
    public SteamVR_Action_Boolean moveRight;

    [Header("Movement Settings")]
    public float speed = 1.5f;
    public Transform head; // Usually Camera in XR Rig

    void Update()
    {
        Vector2 moveDir = Vector2.zero;

        if (moveUp.state)    moveDir.y += 1;
        if (moveDown.state)  moveDir.y -= 1;
        if (moveLeft.state)  moveDir.x -= 1;
        if (moveRight.state) moveDir.x += 1;

        Vector3 direction = new Vector3(moveDir.x, 0, moveDir.y).normalized;

        // Move relative to head direction (HMD facing)
        Vector3 move = Quaternion.Euler(0, head.eulerAngles.y, 0) * direction;
        transform.position += move * speed * Time.deltaTime;
    }
}
