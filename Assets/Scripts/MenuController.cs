using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class MenuController : MonoBehaviour
{
    [Header("UI References")]
    public GameObject menuPanel;

    public Dropdown sceneDropdown;
    public Dropdown skyDropdown;
    public Slider audioSlider;

    public Button continueButton;
    public Button exitButton;

    private bool isMenuVisible = true;

    private void Start()
    {
        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);

        // Hook up button events
        continueButton?.onClick.AddListener(OnContinueClicked);
        exitButton?.onClick.AddListener(OnExitClicked);

        // Initialize UI with values from GlobalSettings
        if (GlobalSettings.Instance != null)
        {
            audioSlider.value = GlobalSettings.Instance.audioStrength;
            skyDropdown.value = GlobalSettings.Instance.skyVolume;
            sceneDropdown.value = sceneDropdown.options.FindIndex(
                opt => opt.text == GlobalSettings.Instance.currentSceneName
            );
        }
    }

    // Toggle menu visibility
    public void ToggleMenu()
    {
        if (menuPanel == null) return;

        isMenuVisible = !isMenuVisible;
        menuPanel.SetActive(isMenuVisible);
    }

    // Apply settings and load scene if needed
    private void OnContinueClicked()
    {
        if (GlobalSettings.Instance != null)
        {
            GlobalSettings.Instance.audioStrength = audioSlider.value;
            GlobalSettings.Instance.skyVolume = skyDropdown.value;
        }

        string selectedScene = sceneDropdown.options[sceneDropdown.value].text;

        // Only load if different from current scene
        if (SceneManager.GetActiveScene().name != selectedScene)
        {
            GlobalSettings.Instance.currentSceneName = selectedScene;
            SceneManager.LoadScene(selectedScene);
        }
        else
        {
            ToggleMenu();
        }
    }

    // Exit the application
    private void OnExitClicked()
    {
        Application.Quit();

#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#endif
    }
}
