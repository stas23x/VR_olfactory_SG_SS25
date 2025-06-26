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

    private void Start()
    {
        if (menuPanel != null)
            menuPanel.SetActive(isMenuVisible);

        continueButton?.onClick.AddListener(OnContinueClicked);
        exitButton?.onClick.AddListener(OnExitClicked);
        audioSlider.onValueChanged.AddListener(OnAudioSliderChanged);
        skyDropdown.onValueChanged.AddListener(OnSkyDropdownChanged);

        if (GlobalSettings.Instance != null)
        {
            // Populate sky dropdown
            if (GlobalSettings.Instance.skyProfiles != null)
            {
                skyDropdown.ClearOptions();
                var skyNames = GlobalSettings.Instance.skyProfiles
                    .Where(p => p != null)
                    .Select(p => p.name)
                    .ToList();
                skyDropdown.AddOptions(skyNames);
                skyDropdown.value = Mathf.Clamp(GlobalSettings.Instance.selectedSkyProfileIndex, 0, skyDropdown.options.Count - 1);
                skyDropdown.RefreshShownValue();
            }

            // Set audio and mixer
            audioSlider.value = GlobalSettings.Instance.audioStrength;
            if (audioManager != null)
                audioManager.SetMasterVolume(GlobalSettings.Instance.audioStrength);

            // Apply sky
            GlobalSettings.Instance.ApplySkyProfile();
        }

        // Set the sceneDropdown to match the current scene
        string currentScene = SceneManager.GetActiveScene().name;
        GlobalSettings.Instance.currentSceneName = currentScene;

        sceneDropdown.value = sceneDropdown.options.FindIndex(opt => opt.text == currentScene);
        sceneDropdown.RefreshShownValue();
    }

    private void OnAudioSliderChanged(float value)
    {
        if (audioManager != null)
            audioManager.SetMasterVolume(value);

        if (GlobalSettings.Instance != null)
            GlobalSettings.Instance.audioStrength = value;
    }

    private void OnSkyDropdownChanged(int index)
    {
        if (GlobalSettings.Instance != null)
        {
            GlobalSettings.Instance.selectedSkyProfileIndex = index;
            GlobalSettings.Instance.ApplySkyProfile();

            // Assign selected VolumeProfile to the target Volume
            if (skyVolumeTarget != null &&
                index >= 0 &&
                index < GlobalSettings.Instance.skyProfiles.Count &&
                GlobalSettings.Instance.skyProfiles[index] != null)
            {
                skyVolumeTarget.profile = GlobalSettings.Instance.skyProfiles[index];
            }
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
        // Apply sky profile to the scene's Volume
        if (skyVolumeTarget != null &&
            GlobalSettings.Instance.selectedSkyProfileIndex >= 0 &&
            GlobalSettings.Instance.selectedSkyProfileIndex < GlobalSettings.Instance.skyProfiles.Count) // <- no ()
        {
            var profile = GlobalSettings.Instance.skyProfiles[GlobalSettings.Instance.selectedSkyProfileIndex];
            if (profile != null)
                skyVolumeTarget.profile = profile;
        }


        if (GlobalSettings.Instance != null)
        {
            GlobalSettings.Instance.audioStrength = audioSlider.value;
            GlobalSettings.Instance.selectedSkyProfileIndex = skyDropdown.value;
        }

        string selectedScene = sceneDropdown.options[sceneDropdown.value].text;
        string currentScene = SceneManager.GetActiveScene().name;

        if (selectedScene != currentScene)
        {
            GlobalSettings.Instance.currentSceneName = selectedScene;
            SceneManager.LoadScene(selectedScene);
        }
        else
        {
            // Apply changes without reloading the scene
            GlobalSettings.Instance.ApplySkyProfile();
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
