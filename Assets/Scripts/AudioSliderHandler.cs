using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// Handles audio slider changes and updates global audio settings.
/// </summary>
public class AudioSliderHandler : MonoBehaviour
{
    public Slider audioSlider;
    public AudioManager audioManager;

    /// <summary>
    /// Initializes the slider with the current audio strength and sets up the listener.
    /// </summary>
    /// <param name="slider"></param>
    /// <param name="audioMgr"></param>
    public void Initialize(Slider slider, AudioManager audioMgr)
    {
        audioSlider = slider;
        audioManager = audioMgr;

        if (audioSlider != null)
        {
            audioSlider.value = GlobalSettings.Instance.audioStrength;
            audioSlider.onValueChanged.AddListener(OnSliderChanged);
        }
    }

    /// <summary>
    /// Called when the slider value changes; updates global settings and audio manager.
    /// </summary>
    /// <param name="value"></param>
    void OnSliderChanged(float value)
    {
        GlobalSettings.Instance.audioStrength = value;
        audioManager?.SetMasterVolume(value);
    }
}
