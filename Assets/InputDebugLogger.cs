using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.XR;

public class InputDebugLogger : MonoBehaviour
{
    [SerializeField] private InputActionProperty rightHandSelect;
    [SerializeField] private InputActionProperty rightHandMenuButton;  // Added for menu button

    void OnEnable()
    {
        if (rightHandSelect.action != null)
            rightHandSelect.action.Enable();

        if (rightHandMenuButton.action != null)
            rightHandMenuButton.action.Enable();
    }

    void OnDisable()
    {
        if (rightHandSelect.action != null)
            rightHandSelect.action.Disable();

        if (rightHandMenuButton.action != null)
            rightHandMenuButton.action.Disable();
    }

    void Update()
    {
        // Check XR RightHand Select (e.g. trigger)
        if (rightHandSelect.action != null && rightHandSelect.action.triggered)
        {
            Debug.Log("▶ Right-hand Select (trigger) was used");
        }

        // Check XR RightHand Menu button
        if (rightHandMenuButton.action != null && rightHandMenuButton.action.triggered)
        {
            Debug.Log("🎛️ Right-hand Menu button was pressed");
        }

        // Check J key on the keyboard
        if (Keyboard.current != null && Keyboard.current.jKey.wasPressedThisFrame)
        {
            Debug.Log("⌨️ 'J' key was pressed on the keyboard");
        }
    }
}