using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.XR;

/// <summary>
/// Handles player movement in an XR Rig using D-pad or joystick input, with terrain following.
/// </summary>
public class XRRigDpadMover : MonoBehaviour
{
    [Header("Input Action Asset")]
    public InputActionAsset inputActions;
    public string actionMapName = "Player";
    public string actionName = "Movement";

    [Header("References")]
    private Transform cameraTransform; // XR camera
    public float moveSpeed = 2f;
    public float raycastDistance = 5f;
    public LayerMask groundLayer;

    private InputAction moveAction;
    private Vector2 moveInput;

    private Rigidbody rb;

    private MenuController menuController;

    /// <summary>
    /// Enables the input action for movement when the script is enabled.
    /// </summary>
    void OnEnable()
    {
        // Get the action
        var map = inputActions.FindActionMap(actionMapName);
        moveAction = map.FindAction(actionName);
        if (moveAction == null)
        {
            Debug.LogError("Action map for the player movement could not be found!");
        }
        moveAction.Enable();
    }

    /// <summary>
    /// Disables the input action when the script is disabled.
    /// </summary>
    void OnDisable()
    {
        moveAction.Disable();
    }

    /// <summary>
    /// Initializes references to Rigidbody, MenuController, and camera transform.
    /// </summary>
    void Awake()
    {

        rb = GetComponent<Rigidbody>();

        menuController = GetComponentInChildren<MenuController>();

        if (menuController == null)
        {
            Debug.LogError("MenuController not found in children!");
        }

        if (rb == null)
            Debug.LogError("No Rigidbody found on XR Rig!");
        // Automatically find the Main Camera inside this XR Rig hierarchy
        Camera cam = GetComponentInChildren<Camera>();
        if (cam != null)
        {
            cameraTransform = cam.transform;
        }
        else
        {
            Debug.LogError("Main Camera not found as child of XRRig!");
        }
    }

    /// <summary>
    /// Handles movement input and moves the player while following terrain height.
    /// </summary>
    void Update()
    {
        if (!menuController.isMenuVisible)
        {
            moveInput = moveAction.ReadValue<Vector2>();
            MoveWithTerrainFollow();
        }
    }

    /// <summary>
    /// Moves the player based on input while adjusting height to follow terrain.
    /// </summary>
    void MoveWithTerrainFollow()
    {
        if (moveInput == Vector2.zero)
        {
            return;
        }
        else
        {
            Debug.Log("Move detected:" + moveInput);
            // Get forward/right from headset direction
            Vector3 forward = cameraTransform.forward;
            Vector3 right = cameraTransform.right;

            // Flatten to XZ
            forward.y = 0;
            right.y = 0;
            forward.Normalize();
            right.Normalize();

            Vector3 direction = forward * moveInput.y + right * moveInput.x;
            Vector3 targetPosition = rb.position + direction * moveSpeed * Time.deltaTime;

            // Raycast down from above target position
            Vector3 rayOrigin = targetPosition + Vector3.up * (raycastDistance / 2);
            
            if (Physics.Raycast(rayOrigin, Vector3.down, out RaycastHit hit, raycastDistance, groundLayer))
            {
                targetPosition.y = hit.point.y;
                Debug.Log("Target position: " + hit.point.y);

            }

            rb.MovePosition(targetPosition);
            Debug.Log("Target position: " + targetPosition);
        }
    }
}