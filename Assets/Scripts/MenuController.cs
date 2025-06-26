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

        continueButton?.onClick.AddListener(OnContinueClicked);
        exitButton?.onClick.AddListener(OnExitClicked);

        // Initialize UI with values from GlobalSettings
        if (GlobalSettings.Instance != null)
        {
            audioSlider.value = GlobalSettings.Instance.audioStrength;

            // Match dropdown options with stored string values
            skyDropdown.value = skyDropdown.options.FindIndex(opt => opt.text == GlobalSettings.Instance.skyVolume);
            sceneDropdown.value = sceneDropdown.options.FindIndex(opt => opt.text == GlobalSettings.Instance.currentSceneName);
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
            GlobalSettings.Instance.audioStrength = audioSlider.value;
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
