using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine.Rendering;
using Valve.VR;
using UnityEngine.XR.Interaction.Toolkit;
using System.Numerics;
using Unity.VisualScripting;
// using UnityEngine.UIElements;



public class MenuController : MonoBehaviour
{
    [Header("UI Elements")]
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

    public SteamVR_Action_Boolean menuToggleAction = SteamVR_Input.GetBooleanAction("MenuToggle");
    public SteamVR_Action_Boolean selectAction = SteamVR_Input.GetBooleanAction("Select");


    public UnityEngine.InputSystem.InputActionReference menuButtonAction;

    private CharacterController characterController;
    private ActionBasedContinuousMoveProvider movementProvider;
    private ActionBasedContinuousTurnProvider turnProvider;




    private void OnEnable()
    {
        if (menuButtonAction != null)
            menuButtonAction.action.performed += OnMenuButtonPressed;

        menuButtonAction?.action.Enable();
    }

 private void OnDisable()
    {
        if (menuButtonAction != null)
            menuButtonAction.action.performed -= OnMenuButtonPressed;

        menuButtonAction?.action.Disable();
    }
 
    private void OnMenuButtonPressed(UnityEngine.InputSystem.InputAction.CallbackContext context)
    {
        Debug.Log("Vive Menu button pressed!");
        ToggleMenu();
    }
    void Start()
    {
        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);

        // Version using UIElemnts. Not used anymore because cannot be used as game object in the inspector
        // Add functionality to the continue button
        // continueButton.clicked += OnContinueClicked;
        // Add functionality to the exit button
        // exitButton.clicked += OnExitClicked;
        // Add listeners to buttons
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
        // if (audioHandler == null)
        //     audioHandler = gameObject.AddComponent<AudioSliderHandler>();
        // audioHandler.Initialize(audioSlider, audioManager);

        characterController = GetComponentInParent<CharacterController>();
        movementProvider = GetComponentInParent<ActionBasedContinuousMoveProvider>();
        turnProvider = GetComponentInParent<ActionBasedContinuousTurnProvider>();
    }

    void Update()
    {
        // Keyboard input (M key)
        if (Input.GetKeyDown(KeyCode.M))
        {
            ToggleMenu();
        }

        // if (menuToggleAction.GetStateDown(SteamVR_Input_Sources.Any))
        // {
        //     ToggleMenu();
        // }

    }


    public void ToggleMenu()
    {
        isMenuVisible = !isMenuVisible;

        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);

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
            // SendMessage("OnMenuOpened", SendMessageOptions.DontRequireReceiver);
    }

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
            SceneManager.LoadSceneAsync(selectedScene, LoadSceneMode.Single);
            GlobalSettings.Instance.currentSceneName = selectedScene;
            setCameraStartPosition(selectedScene);
        }

        // Apply sky profile explicitly just in case
        GlobalSettings.Instance.ApplySkyProfile();

        // Apply audio volume explicitly just in case
        audioManager?.SetMasterVolume(GlobalSettings.Instance.audioStrength);

        ToggleMenu();
    }

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
                    // When changing scenes the menu is alway toggeld. SO we toggle it here so
                    // that after another toggel it is show again
                    ToggleMenu();

                    break;
                case "forest 1":
                    // xrRig.transform.position = new UnityEngine.Vector3(155.0f, 18.0f, 47.0f);
                    xrRig.transform.position = new UnityEngine.Vector3(155.0f, 20.0f, 47.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(15.8f, 28.6f, 0f);
                    break;
                case "AmrumV2":
                    // Set camera position for AmrumV2
                    // xrRig.transform.position = new UnityEngine.Vector3(796.0f, 58.0f, 596.0f);
                    xrRig.transform.position = new UnityEngine.Vector3(796.0f, 60.0f, 596.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(3f, -117f, 0f);
                    break;
                case "Stanislav beach":
                    // Set camera position for Stanislav beach
                    // xrRig.transform.position = new UnityEngine.Vector3(216.0f, 19.0f, 269.0f);
                    xrRig.transform.position = new UnityEngine.Vector3(216.0f, 21.0f, 269.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(3.6f, 138f, 0f);
                    break;
                case "Konigssee":
                    // Set camera position for Konigssee
                    // xrRig.transform.position = new UnityEngine.Vector3(500.0f, 30.0f, 979.0f);
                    xrRig.transform.position = new UnityEngine.Vector3(500.0f, 32.0f, 979.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(11f, -151f, 0f);
                    break;
                default:
                    Debug.LogWarning("Unknown scene name: " + sceneName);
                    break;
            }
            
        }
        
    }

    void CloseSerialPortIfNeeded()
    {
        OlfactoryManager manager = FindObjectOfType<OlfactoryManager>();
        if (manager != null)
        {
            manager.SendMessage("OnApplicationQuit", SendMessageOptions.DontRequireReceiver);
        }
    }


    void OnExitClicked()
    {
        CloseSerialPortIfNeeded();
        Application.Quit();

    #if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
    #endif
    }

}
