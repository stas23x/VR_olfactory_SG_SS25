using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class MenuController : MonoBehaviour
{
    [Header("UI References")]
    public GameObject menuPanel;

    public Dropdown sceneDropdown;

    public Slider audioSlider;
    public Slider skySlider;
    public Slider sceneSlider;

    public Button continueButton;
    public Button exitButton;

    private bool isMenuVisible = true;

    private void Start()
    {
        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);

        // Hook up button events
        if (continueButton != null)
            continueButton.onClick.AddListener(OnContinueClicked);

        if (exitButton != null)
            exitButton.onClick.AddListener(OnExitClicked);

        // Initialize sliders with values from GlobalSettings if exists
        if (GlobalSettings.Instance != null)
        {
            audioSlider.value = GlobalSettings.Instance.audioStrength;
            skySlider.value = GlobalSettings.Instance.skyVolume;
            sceneSlider.value = GlobalSettings.Instance.scene;
        }
    }

    // Show/hide menu (optional, can be called elsewhere)
    public void ToggleMenu()
    {
        if (menuPanel == null) return;

        isMenuVisible = !isMenuVisible;
        menuPanel.SetActive(isMenuVisible);
    }

    // Continue button: update settings and change scene if changed
    private void OnContinueClicked()
    {
        if (GlobalSettings.Instance != null)
        {
            GlobalSettings.Instance.audioStrength = audioSlider.value;
            GlobalSettings.Instance.skyVolume = skySlider.value;
            GlobalSettings.Instance.scene = sceneSlider.value;
        }

        // Get selected scene from dropdown
        string selectedScene = sceneDropdown.options[sceneDropdown.value].text;

        // If current scene is different, load new scene, else just close menu
        if (SceneManager.GetActiveScene().name != selectedScene)
        {
            SceneManager.LoadScene(selectedScene);
        }
        else
        {
            // Just close the menu if same scene
            ToggleMenu();
        }
    }

    // Exit button: close the application
    private void OnExitClicked()
    {
        // This works for build, does nothing in editor
        Application.Quit();

        // If running in the Unity editor, stop playing
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#endif
    }

    // Change scene button: immediate scene change without updating volumes
    private void OnChangeSceneClicked()
    {
        
    }
}
