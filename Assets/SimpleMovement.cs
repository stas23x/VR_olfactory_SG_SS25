using UnityEngine;

public class SimpleMovement : MonoBehaviour
{
    public float moveSpeed = 3f;
    public float rotationSpeed = 100f;
    public float lookSpeed = 2f;
    public float minY = -80f;
    public float maxY = 80f;

    private float rotationY = 0f;

    void Update()
    {
        // --- Movement ---
        float moveX = Input.GetAxis("Horizontal"); // A/D or Left/Right
        float moveZ = Input.GetAxis("Vertical");   // W/S or Up/Down
        Vector3 move = transform.right * moveX + transform.forward * moveZ;
        transform.position += move * moveSpeed * Time.deltaTime;

        // --- Rotation (left/right yaw) ---
        float yaw = Input.GetAxis("Mouse X") * rotationSpeed * Time.deltaTime;
        transform.Rotate(0f, yaw, 0f);

        // --- Look up/down (pitch) ---
        float pitch = -Input.GetAxis("Mouse Y") * lookSpeed;
        rotationY += pitch;
        rotationY = Mathf.Clamp(rotationY, minY, maxY);

        Camera cam = Camera.main;
        if (cam != null)
        {
            cam.transform.localEulerAngles = new Vector3(rotationY, 0f, 0f);
        }
    }
}
