using UnityEngine;

public class MovementSound : MonoBehaviour
{
    public float speedThreshold = 0.2f;  // Minimum speed before sound plays
    public float fadeSpeed = 2f;         // How fast volume fades in/out

    private AudioSource audioSource;
    private Vector3 lastPosition;

    void Start()
    {
        audioSource = GetComponentInChildren<AudioSource>();

        if (audioSource == null)
        {
            Debug.LogError("No AudioSource found in children of XR Rig!");
            return;
        }

        lastPosition = transform.position;
        audioSource.loop = true;   // Looping movement sound
        audioSource.playOnAwake = false;
        audioSource.volume = 0f;   // Start silent
    }

    void Update()
    {
        if (audioSource == null) return;

        // Calculate movement speed
        float speed = (transform.position - lastPosition).magnitude / Time.deltaTime;
        lastPosition = transform.position;

        if (speed > speedThreshold)
        {
            if (!audioSource.isPlaying)
                audioSource.Play();

            // Fade in volume
            audioSource.volume = Mathf.MoveTowards(audioSource.volume, 1f, fadeSpeed * Time.deltaTime);
        }
        else
        {
            // Fade out volume
            audioSource.volume = Mathf.MoveTowards(audioSource.volume, 0f, fadeSpeed * Time.deltaTime);

            // Stop when fully silent
            if (audioSource.volume <= 0.01f && audioSource.isPlaying)
                audioSource.Stop();
        }
    }
}
