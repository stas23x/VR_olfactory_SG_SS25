using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine.Rendering;
using Valve.VR;
using UnityEngine.XR.Interaction.Toolkit;
using System.Numerics;
using Unity.VisualScripting;
using System.Collections;

/// <summary>
/// MenuController handles the in-game menu functionality, including toggling the menu,
/// scene selection, sky profile changes, and audio settings.
/// </summary>
public class MenuController : MonoBehaviour
{
    [Header("UI Elements")]
    public GameObject playerMenu;
    public GameObject menuPanel;
    public Dropdown sceneDropdown;
    public Dropdown skyDropdown;
    public Slider audioSlider;
    public Button continueButton;
    public Button exitButton;

    [Header("References")]
    public Volume skyVolumeTarget;
    public AudioManager audioManager;

    private SkyDropdownHandler skyHandler;
    private SceneDropdownHandler sceneHandler;
    private AudioSliderHandler audioHandler;

    public bool isMenuVisible = true;

    public UnityEngine.InputSystem.InputActionReference menuButtonAction;
    private CharacterController characterController;
    private ActionBasedContinuousMoveProvider movementProvider;
    private ActionBasedContinuousTurnProvider turnProvider;
    private OlfactoryManager olfactoryManager;

    /// <summary>
    /// Subscribe to the menu button action when the script is enabled.
    /// This ensures that the menu can be toggled using the designated input action.
    /// </summary>
    private void OnEnable()
    {
        if (menuButtonAction != null)
            menuButtonAction.action.performed += OnMenuButtonPressed;

        menuButtonAction?.action.Enable();
    }

    /// <summary>
    /// Unsubscribe from the menu button action when the script is disabled.
    /// This prevents potential memory leaks and ensures that the action is not triggered
    /// </summary>
    private void OnDisable()
    {
        if (menuButtonAction != null)
            menuButtonAction.action.performed -= OnMenuButtonPressed;

        menuButtonAction?.action.Disable();
    }
 
    /// <summary>
    /// Callback method for when the menu button is pressed.
    /// Toggles the visibility of the menu.
    /// </summary>
    /// <param name="context"></param>
    private void OnMenuButtonPressed(UnityEngine.InputSystem.InputAction.CallbackContext context)
    {
        Debug.Log("Vive Menu button pressed!");
        ToggleMenu();
    }

    /// <summary>
    /// Initializes the menu controller, setting up UI elements and handlers.
    /// Also retrieves necessary components and references.
    /// </summary>
    void Start()
    {
        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);

        if (continueButton != null)
            continueButton.onClick.AddListener(OnContinueClicked);

        if (exitButton != null)
            exitButton.onClick.AddListener(OnExitClicked);

        // Add or find handler components on this gameObject
        skyHandler = GetComponent<SkyDropdownHandler>();
        if (skyHandler == null)
            skyHandler = gameObject.AddComponent<SkyDropdownHandler>();
        skyHandler.Initialize(skyDropdown, skyVolumeTarget);

        sceneHandler = GetComponent<SceneDropdownHandler>();
        if (sceneHandler == null)
            sceneHandler = gameObject.AddComponent<SceneDropdownHandler>();
            
        sceneHandler.Initialize(sceneDropdown);

        audioHandler = GetComponent<AudioSliderHandler>();

        characterController = GetComponentInParent<CharacterController>();
        movementProvider = GetComponentInParent<ActionBasedContinuousMoveProvider>();
        turnProvider = GetComponentInParent<ActionBasedContinuousTurnProvider>();
    }

    /// <summary>
    /// Updates the menu controller each frame.
    /// Listens for keyboard input to toggle the menu visibility.
    /// </summary>
    void Update()
    {
        // Keyboard input (M key)
        if (Input.GetKeyDown(KeyCode.M))
        {
            ToggleMenu();
        }
    }

    /// <summary>
    /// Toggles the visibility of the menu and updates the state of player controls accordingly.
    /// </summary>
    public void ToggleMenu()
    {
        isMenuVisible = !isMenuVisible;

        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);
        if (playerMenu != null)
            playerMenu.SetActive(isMenuVisible);

        if (isMenuVisible)
        {
            characterController.enabled = false;
            movementProvider.enabled = false;
            turnProvider.enabled = false;
            Debug.Log("Setting false");

        }
        else
        {
            characterController.enabled = true;
            movementProvider.enabled = true;
            turnProvider.enabled = true;
            Debug.Log("Setting true");

        }
    }

    /// <summary>
    /// Handles the logic when the "Continue" button is clicked.
    /// Applies the selected sky profile, audio settings, and loads the selected scene if different from the current one.
    /// </summary>
    void OnContinueClicked()
    {
        if (GlobalSettings.Instance == null)
        {
            Debug.LogError("GlobalSettings instance not found!");
            return;
        }

        // Update GlobalSettings for sky and audio are done automatically via handlers
        // Load selected scene
        string selectedScene = sceneHandler.GetSelectedScene();
        string currentScene = SceneManager.GetActiveScene().name;

        if (selectedScene != currentScene)
        {
            // Disable all pumps before switching scenes
            olfactoryManager = OlfactoryManager.Instance;
            if (olfactoryManager != null)
            {
                olfactoryManager.DisableAllPumps();
            }
            
            StartCoroutine(LoadSceneAndSpawn(selectedScene));
            GlobalSettings.Instance.currentSceneName = selectedScene;
        }

        // Apply sky profile explicitly just in case
        GlobalSettings.Instance.ApplySkyProfile();

        // Apply audio volume explicitly just in case
        audioManager?.SetMasterVolume(GlobalSettings.Instance.audioStrength);

        ToggleMenu();
    }

    /// <summary>
    /// Loads the specified scene asynchronously and sets the camera position based on the scene.
    /// This method ensures a smooth transition between scenes and places the player in the correct starting position
    /// </summary>
    /// <param name="selectedScene"></param>
    /// <returns></returns>
     private IEnumerator LoadSceneAndSpawn(string selectedScene)
    {
        var op = SceneManager.LoadSceneAsync(selectedScene, LoadSceneMode.Single);
        op.allowSceneActivation = false;

        // Wait until the scene is 90% loaded
        while (op.progress < 0.9f)
        {
            yield return null;
        }

        // Now activate the scene
        op.allowSceneActivation = true;

        // Wait until the scene is fully loaded
        yield return op;

        // Set camera position after the scene is fully loaded
        setCameraStartPosition(selectedScene);
    }  

    /// <summary>
    /// Sets the camera's starting position and rotation based on the specified scene name.
    /// This method finds the XR Rig in the scene and adjusts its transform accordingly.
    /// </summary>
    /// <param name="sceneName"></param>
    void setCameraStartPosition(string sceneName) {
        GameObject xrRig = GameObject.Find("XRRig");

        if (xrRig == null)
        {
            Debug.Log("XR Rig not found!");
        }
        else
        {
            Debug.Log("Found XRRig and setting it into the following scene " + sceneName);
            Camera camera = xrRig.GetComponentInChildren<Camera>();
            camera.tag = "MainCamera";
            
            switch (sceneName)
            {
                case "TemplateScene":
                    // When changing scenes the menu is always toggled. So we toggle it here so
                    // that after another toggle it is show again.
                    ToggleMenu();
                    break;
                case "forest 1":
                    // Set camera position for forest 1
                    xrRig.transform.position = new UnityEngine.Vector3(155.0f, 20.0f, 47.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(15.8f, 28.6f, 0f);
                    break;
                case "AmrumV2":
                    // Set camera position for AmrumV2
                    xrRig.transform.position = new UnityEngine.Vector3(455.0f, 56.0f, 494.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(3f, -117f, 0f);
                    break;
                case "Stanislav beach":
                    // Set camera position for Stanislav beach
                    xrRig.transform.position = new UnityEngine.Vector3(216.0f, 21.0f, 269.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(3.6f, 138f, 0f);
                    break;
                case "Koenigssee":
                    // Set camera position for Konigssee
                    xrRig.transform.position = new UnityEngine.Vector3(500.0f, 32.0f, 979.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(11f, -151f, 0f);
                    break;
                default:
                    Debug.LogWarning("Unknown scene name: " + sceneName);
                    break;
            }
        }
    }

    /// <summary>
    /// Closes the serial port connection if the OlfactoryManager is present.
    /// This is important to ensure that resources are properly released when the application quits.
    /// Otherwise the port will be unaccessible next time it is attempted to be opened.
    /// </summary>
    void CloseSerialPortIfNeeded()
    {
        OlfactoryManager manager = FindObjectOfType<OlfactoryManager>();
        if (manager != null)
        {
            manager.SendMessage("OnApplicationQuit", SendMessageOptions.DontRequireReceiver);
        }
    }

    /// <summary>
    /// Handles the logic when the "Exit" button is clicked.
    /// Disables all olfactory pumps, closes the serial port if needed, and quits the application.
    /// </summary>
    void OnExitClicked()
    {   
         olfactoryManager = OlfactoryManager.Instance;
            if (olfactoryManager != null)
            {
                olfactoryManager.DisableAllPumps();
            }
        CloseSerialPortIfNeeded();
        Application.Quit();

    #if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
    #endif
    }

}
