using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.XR;

/// <summary>
/// Logs input actions for debugging purposes.
/// </summary>
public class InputDebugLogger : MonoBehaviour
{
    [SerializeField] private InputActionProperty rightHandSelect;
    [SerializeField] private InputActionProperty rightHandMenuButton;  // Added for menu button

    /// <summary>
    /// Enables the input actions when the script is enabled.
    /// </summary>
    void OnEnable()
    {
        if (rightHandSelect.action != null)
            rightHandSelect.action.Enable();

        if (rightHandMenuButton.action != null)
            rightHandMenuButton.action.Enable();
    }

    /// <summary>
    /// Disables the input actions when the script is disabled.
    /// </summary>
    void OnDisable()
    {
        if (rightHandSelect.action != null)
            rightHandSelect.action.Disable();

        if (rightHandMenuButton.action != null)
            rightHandMenuButton.action.Disable();
    }

    /// <summary>
    /// Checks for input actions and logs them to the console.
    /// </summary>
    void Update()
    {
        // Check XR RightHand Select (e.g. trigger)
        if (rightHandSelect.action != null && rightHandSelect.action.triggered)
        {
            Debug.Log("Right-hand Select (trigger) was used");
        }

        // Check XR RightHand Menu button
        if (rightHandMenuButton.action != null && rightHandMenuButton.action.triggered)
        {
            Debug.Log("Right-hand Menu button was pressed");
        }

        // Check J key on the keyboard
        if (Keyboard.current != null && Keyboard.current.jKey.wasPressedThisFrame)
        {
            Debug.Log("'J' key was pressed on the keyboard");
        }
    }
}