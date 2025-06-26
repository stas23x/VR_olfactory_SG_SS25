using UnityEngine;

public class AudioManager : MonoBehaviour
{
    public AudioSource ambientAudio;

    void Start()
    {
        if (ambientAudio != null)
        {
            ambientAudio.volume = GlobalSettings.Instance.audioStrength;
        }
    }
}
