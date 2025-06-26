using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using TMPro;

public class MenuController : MonoBehaviour
{
    [Header("UI References")]
    public GameObject menuPanel; // Assign your full menu panel here
    public TMP_InputField participantIdInput;
    public Dropdown sceneDropdown;
    public Dropdown volumeProfileDropdown;
    public Slider audioSlider;
    public Button startExperimentButton;

    [Header("Menu Toggle Settings")]
    public KeyCode desktopToggleKey = KeyCode.M; // for debugging on desktop

    private bool isMenuVisible = true;

    private void Start()
    {
        if (startExperimentButton != null)
            startExperimentButton.onClick.AddListener(OnStartExperiment);

        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);
    }

    private void Update()
    {
        // Optional: Allow desktop toggling of the menu for debugging
        if (Input.GetKeyDown(desktopToggleKey))
        {
            ToggleMenu();
        }

        // Optional: Add XR controller input here (e.g., B button)
        // You can later connect this to an InputAction or Unity XR Input
    }

    public void ToggleMenu()
    {
        if (menuPanel == null) return;

        isMenuVisible = !isMenuVisible;
        menuPanel.SetActive(isMenuVisible);
    }

    void OnStartExperiment()
    {
        if (GlobalSettings.Instance != null)
        {
            GlobalSettings.Instance.participantID = participantIdInput.text;
            GlobalSettings.Instance.audioStrength = audioSlider.value;
            GlobalSettings.Instance.selectedVolumeProfile = volumeProfileDropdown.options[volumeProfileDropdown.value].text;
        }

        string selectedScene = sceneDropdown.options[sceneDropdown.value].text;
        SceneManager.LoadScene(selectedScene);
    }

    // Optional: call this method from any other script to load scenes directly
    public void LoadSceneByName(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }
}
