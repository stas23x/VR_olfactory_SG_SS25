using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine.Rendering;

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

    private bool isMenuVisible = true;

    void Start()
    {
        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);

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
        if (audioHandler == null)
            audioHandler = gameObject.AddComponent<AudioSliderHandler>();
        audioHandler.Initialize(audioSlider, audioManager);
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.M))
        {
            ToggleMenu();
        }
    }

    public void ToggleMenu()
    {
        isMenuVisible = !isMenuVisible;
        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);

        if (isMenuVisible)
            SendMessage("OnMenuOpened", SendMessageOptions.DontRequireReceiver);
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
        }

        // Apply sky profile explicitly just in case
        GlobalSettings.Instance.ApplySkyProfile();

        // Apply audio volume explicitly just in case
        audioManager?.SetMasterVolume(GlobalSettings.Instance.audioStrength);

        ToggleMenu();
    }

    void OnExitClicked()
    {
        Application.Quit();

#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#endif
    }
}
