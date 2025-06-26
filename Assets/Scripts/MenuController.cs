using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using TMPro;

public class MenuController : MonoBehaviour
{
    public TMP_InputField participantIdInput;
    public Dropdown sceneDropdown;
    public Dropdown volumeProfileDropdown;
    public Slider audioSlider;

    public Button startExperimentButton;

    private void Start()
    {
        startExperimentButton.onClick.AddListener(OnStartExperiment);
    }

    void OnStartExperiment()
    {
        GlobalSettings.Instance.participantID = participantIdInput.text;
        GlobalSettings.Instance.audioStrength = audioSlider.value;
        GlobalSettings.Instance.selectedVolumeProfile = volumeProfileDropdown.options[volumeProfileDropdown.value].text;

        string selectedScene = sceneDropdown.options[sceneDropdown.value].text;
        SceneManager.LoadScene(selectedScene);
    }
}
