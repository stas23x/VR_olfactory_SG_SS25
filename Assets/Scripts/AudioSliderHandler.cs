using UnityEngine;
using UnityEngine.UI;

public class AudioSliderHandler : MonoBehaviour
{
    public Slider audioSlider;
    public AudioManager audioManager;

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

    void OnSliderChanged(float value)
    {
        GlobalSettings.Instance.audioStrength = value;
        audioManager?.SetMasterVolume(value);
    }
}
