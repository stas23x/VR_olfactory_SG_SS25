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

    // Reference to your audio manager handling mixer volume
    public AudioManager audioManager;

    private bool isMenuVisible = true;

    private void Start()
    {
        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);

        continueButton?.onClick.AddListener(OnContinueClicked);
        exitButton?.onClick.AddListener(OnExitClicked);

        if (GlobalSettings.Instance != null)
        {
            // Initialize UI elements from GlobalSettings
            audioSlider.value = GlobalSettings.Instance.audioStrength;
            skyDropdown.value = skyDropdown.options.FindIndex(opt => opt.text == GlobalSettings.Instance.skyVolume);
            sceneDropdown.value = sceneDropdown.options.FindIndex(opt => opt.text == GlobalSettings.Instance.currentSceneName);

            // Set mixer volume immediately to match stored value
            if (audioManager != null)
            {
                audioManager.SetMasterVolume(GlobalSettings.Instance.audioStrength);
            }
        }

        // Add listener to update volume in real-time when slider changes
        audioSlider.onValueChanged.AddListener(OnAudioSliderChanged);
    }

    private void OnAudioSliderChanged(float value)
    {
        if (audioManager != null)
        {
            audioManager.SetMasterVolume(value);
        }

        if (GlobalSettings.Instance != null)
        {
            GlobalSettings.Instance.audioStrength = value;
        }
    }

    public void ToggleMenu()
    {
        if (menuPanel == null) return;

        isMenuVisible = !isMenuVisible;
        menuPanel.SetActive(isMenuVisible);
    }

    private void OnContinueClicked()
    {
        if (GlobalSettings.Instance != null)
        {
            // audioStrength already updated by slider listener, so no need here again
            GlobalSettings.Instance.skyVolume = skyDropdown.options[skyDropdown.value].text;
        }

        string selectedScene = sceneDropdown.options[sceneDropdown.value].text;

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

    private void OnExitClicked()
    {
        Application.Quit();

#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#endif
    }
}
