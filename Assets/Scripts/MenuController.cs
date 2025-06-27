using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using System.Linq;
using UnityEngine.Rendering;

public class MenuController : MonoBehaviour
{
    [Header("Scene References")]
    public Volume skyVolumeTarget;

    [Header("UI References")]
    public GameObject menuPanel;
    public Dropdown sceneDropdown;
    public Dropdown skyDropdown;
    public Slider audioSlider;
    public Button continueButton;
    public Button exitButton;

    public AudioManager audioManager;

    private bool isMenuVisible = true;
    private string loadedAdditiveScene = "";

    private void Start()
    {
        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);

        continueButton?.onClick.AddListener(OnContinueClicked);
        exitButton?.onClick.AddListener(OnExitClicked);
        audioSlider?.onValueChanged.AddListener(OnAudioSliderChanged);
        skyDropdown?.onValueChanged.AddListener(OnSkyDropdownChanged);
        sceneDropdown?.onValueChanged.AddListener(OnSceneDropdownChanged);

        PopulateSkyDropdown();
        UpdateMenuUI();

        if (GlobalSettings.Instance != null)
        {
            GlobalSettings.Instance.currentSceneName = SceneManager.GetActiveScene().name;
        }
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.M))
        {
            ToggleMenu();
        }

        // Optional: add XR controller support here
    }

    private void PopulateSkyDropdown()
    {
        if (GlobalSettings.Instance?.skyProfiles != null && skyDropdown != null)
        {
            skyDropdown.ClearOptions();
            var skyNames = GlobalSettings.Instance.skyProfiles
                .Where(p => p != null)
                .Select(p => p.name)
                .ToList();
            skyDropdown.AddOptions(skyNames);
        }
    }

    private void UpdateMenuUI()
    {
        if (GlobalSettings.Instance == null)
            return;

        // Sync audio
        audioSlider.value = GlobalSettings.Instance.audioStrength;
        audioManager?.SetMasterVolume(GlobalSettings.Instance.audioStrength);

        // Sync sky
        if (GlobalSettings.Instance.skyProfiles != null && skyDropdown.options.Count > 0)
        {
            int skyIndex = Mathf.Clamp(GlobalSettings.Instance.selectedSkyProfileIndex, 0, skyDropdown.options.Count - 1);
            skyDropdown.value = skyIndex;
            skyDropdown.RefreshShownValue();

            if (skyVolumeTarget != null && skyIndex >= 0 && skyIndex < GlobalSettings.Instance.skyProfiles.Count)
            {
                skyVolumeTarget.profile = GlobalSettings.Instance.skyProfiles[skyIndex];
            }
        }

        // Sync scene dropdown
        string currentScene = SceneManager.GetActiveScene().name;
        GlobalSettings.Instance.currentSceneName = currentScene;
        int sceneIndex = sceneDropdown.options.FindIndex(opt => opt.text == currentScene);
        if (sceneIndex >= 0)
        {
            sceneDropdown.value = sceneIndex;
            sceneDropdown.RefreshShownValue();
        }
    }

    public void ToggleMenu()
    {
        isMenuVisible = !isMenuVisible;
        menuPanel.SetActive(isMenuVisible);

        if (isMenuVisible)
        {
            UpdateMenuUI();
        }
    }

    private void OnAudioSliderChanged(float value)
    {
        if (GlobalSettings.Instance != null)
        {
            GlobalSettings.Instance.audioStrength = value;
            audioManager?.SetMasterVolume(value);
        }
    }

    private void OnSkyDropdownChanged(int index)
    {
        if (GlobalSettings.Instance != null)
        {
            GlobalSettings.Instance.selectedSkyProfileIndex = index;
            GlobalSettings.Instance.ApplySkyProfile();

            if (skyVolumeTarget != null &&
                index >= 0 &&
                index < GlobalSettings.Instance.skyProfiles.Count &&
                GlobalSettings.Instance.skyProfiles[index] != null)
            {
                skyVolumeTarget.profile = GlobalSettings.Instance.skyProfiles[index];
            }
        }
    }

    private void OnSceneDropdownChanged(int index)
    {
        // Optional: scene switching logic on dropdown change if you want it immediate
    }

    private void OnContinueClicked()
    {
        if (GlobalSettings.Instance == null || sceneDropdown == null)
            return;

        string selectedScene = sceneDropdown.options[sceneDropdown.value].text;
        string currentScene = SceneManager.GetActiveScene().name;

        // Save current UI values
        GlobalSettings.Instance.audioStrength = audioSlider.value;
        GlobalSettings.Instance.selectedSkyProfileIndex = skyDropdown.value;

        // Unload old additive scene if it's not the current selection
        if (!string.IsNullOrEmpty(loadedAdditiveScene) && loadedAdditiveScene != selectedScene)
        {
            SceneManager.UnloadSceneAsync(loadedAdditiveScene);
        }

        // Load new scene if different
        if (selectedScene != currentScene && selectedScene != loadedAdditiveScene)
        {
            loadedAdditiveScene = selectedScene;
            GlobalSettings.Instance.currentSceneName = selectedScene;

            SceneManager.LoadSceneAsync(selectedScene, LoadSceneMode.Additive);
        }

        // Apply settings
        GlobalSettings.Instance.ApplySkyProfile();
        audioManager?.SetMasterVolume(GlobalSettings.Instance.audioStrength);

        ToggleMenu();
    }

    private void OnExitClicked()
    {
        Application.Quit();

#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#endif
    }
}
