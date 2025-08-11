using UnityEngine;
using UnityEngine.UI;
using UnityEngine.InputSystem;
using UnityEngine.XR.Interaction.Toolkit;
using System;

public class StartExperiment : MonoBehaviour
{
    [Header("UI")]
    public GameObject startMenuPanel;
    public Dropdown participantIDDropdown;
    public Button startButton;

    [Header("XR & Input")]
    public InputActionReference menuButtonAction;
    private CharacterController characterController;
    private ActionBasedContinuousMoveProvider movementProvider;
    private ActionBasedContinuousTurnProvider turnProvider;

    private bool isStartMenuVisible = true;

    void OnEnable()
    {
        if (menuButtonAction != null)
        {
            menuButtonAction.action.performed += OnMenuTogglePressed;
            menuButtonAction.action.Enable();
        }
    }

    void OnDisable()
    {
        if (menuButtonAction != null)
        {
            menuButtonAction.action.performed -= OnMenuTogglePressed;
            menuButtonAction.action.Disable();
        }
    }

    void Start()
    {
        startButton.onClick.AddListener(OnStartClicked);

        // Optional: Lock player movement when the menu is shown
        characterController = FindObjectOfType<CharacterController>();
        movementProvider = FindObjectOfType<ActionBasedContinuousMoveProvider>();
        turnProvider = FindObjectOfType<ActionBasedContinuousTurnProvider>();

        SetMenuVisibility(true); // Start with the menu visible
    }

    void Update()
    {
        // Optional: keyboard toggle
        if (Keyboard.current != null && Keyboard.current.mKey.wasPressedThisFrame)
        {
            ToggleMenu();
        }
    }

    private void OnMenuTogglePressed(InputAction.CallbackContext ctx)
    {
        ToggleMenu();
    }

    private void ToggleMenu()
    {
        isStartMenuVisible = !isStartMenuVisible;
        SetMenuVisibility(isStartMenuVisible);
    }

    private void SetMenuVisibility(bool visible)
    {
        if (startMenuPanel != null)
            startMenuPanel.SetActive(visible);

        if (characterController != null) characterController.enabled = !visible;
        if (movementProvider != null) movementProvider.enabled = !visible;
        if (turnProvider != null) turnProvider.enabled = !visible;
    }

    void OnStartClicked()
    {
        string selectedValue = participantIDDropdown.options[participantIDDropdown.value].text;

        if (int.TryParse(selectedValue, out int participantID))
        {
            ExperimentManager experimentManager = FindObjectOfType<ExperimentManager>();
            if (experimentManager == null)
            {
                GameObject go = new GameObject("ExperimentManager");
                experimentManager = go.AddComponent<ExperimentManager>();
            }

            experimentManager.participantID = participantID;
            SetMenuVisibility(false); // Hide menu when starting experiment
            experimentManager.StartCoroutine(experimentManager.RunExperiment());
        }
        else
        {
            Debug.LogError("Invalid participant ID selected.");
        }
    }
}
