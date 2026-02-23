using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System;
using UnityEditor.UI;
using UnityEngine.UIElements;
using Unity.XR.CoreUtils;
using System.Collections;
using UnityEngine.EventSystems;
using Unity.Mathematics;

/// <summary>
/// Manages the questionnaire UI for collecting user responses.
/// ! Important: This script assumes there are exactly 14 questions and corresponding dropdowns set up in the Unity Editor.
/// It is also incomplete and not fully tested due to time constraints.
/// </summary>
public class QuestionnaireUI : MonoBehaviour
{
    // Singleton instance of the QuestionnaireUI, accessible globally
    public static QuestionnaireUI Instance;

    public TMP_Text[] questionText;
    public TMP_Dropdown[] dropdowns;
    public UnityEngine.UI.Button submitButton;
    public UnityEngine.UI.Button nextButton;
    public UnityEngine.UI.Button backButton;
    private int currentPage = 0;
    public GameObject[] pages;

    public FollowHeadset scriptFollow;

    public XROrigin XRRig;
    private EventSystem eventSystem;

    // German IPQ items and anchors
    private readonly string[] questions = new string[]
    {
        "1. How stressed are you after watched the scene?",
        "2. How happy are you right now?",
        "3. Did you experience nausea?",
        "4. To what extent did the game hold your attention? ",
        "5. To what extent did you feel you were focused on the game?",
        "6. How much effort did you put into playing the game?",
        "7. To what extent did you lose track of time, e.g. did the game absorb your attention so that you were not bored?",
        "8. To what extent did you feel consciously aware of being in the real world whilst playing?",
        "9. To what extent did you forget about your everyday concerns?   ",
        "10. To what extent were you aware of yourself in your surroundings (in real world)?",
        "11. Did you feel the urge at any point to stop playing and see what was happening around you?  ",
        "12. To what extent did you feel as though you were separated from your real-world environment?  ",
        "13. To what extent did you feel that the game was something fun you were experiencing, rather than a task you were just doing?  ",
        "14. To what extent did you feel motivated while playing?",
        "15. To what extent did you feel emotionally attached to the game? ",
        "16. To what extent were you interested in seeing how the game’s events would progress?  ",
        "17. To what extent did you enjoy the graphics and the imagery?  ",
        "18. How much would you say you enjoyed playing the game? ",
        "19. When it ended, were you disappointed that the game was over? ",
        "20. Would you like to play the game again? ",
        "21. How immersed did you feel?  (10 = very immersed; 1 = not at all immersed)",
    };

    private readonly string[][] anchors = new string[][]
    {
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "7", "8", "9", "Very much - 10"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "7", "8", "9", "Very much - 10"  },
        new string[] { "-", "no", "little", "very much"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7" },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7" },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7" },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7" },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  }, 
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
        new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "7", "8", "9", "Very much - 10"  },
    };

    private Action<string[]> onComplete;

    /// <summary>
    /// Initializes the singleton instance and sets up the UI elements.
    /// </summary>
    void Awake()
    {
        Instance = this; 
        eventSystem = EventSystem.current; //to test   
        submitButton.onClick.AddListener(Submit);
        gameObject.SetActive(false);
        
        //initialize questions
        for (int i = 0; i < questions.Length; i++)
        {
            questionText[i].text = questions[i];
        }

        // Initialize dropdown options for each question
        for (int i = 0; i < dropdowns.Length; i++)
        {
            dropdowns[i].ClearOptions();
            var options = new System.Collections.Generic.List<string>(anchors[i]);
            dropdowns[i].AddOptions(options);
        }
    }

    public void Show(Action<string[]> callback)
    {
        gameObject.SetActive(true);
        onComplete = callback;

        //pages reset
        // pages[currentPage].SetActive(false);
        // currentPage = 0;
        // pages[currentPage].SetActive(true);
        // UpdateButtons();

        // Reset page index
        currentPage = 0;

        // Disable all pages first
        for (int i = 0; i < pages.Length; i++)
        {
            pages[i].gameObject.SetActive(false);
        }
        // Activate first page
        pages[currentPage].SetActive(true);
        UpdateButtons();
        gameObject.SetActive(true);
        Debug.Log("Resetting questionnaire to page 0");


        for (int i = 0; i < questions.Length; i++)
        {
            dropdowns[i].gameObject.SetActive(true);
            // Assuming you have TMP_Text labels for questions (assign them in inspector)
            // Or if you only have one questionText, update to current question here:
            // For simplicity, let's say you have an array of question labels.
        }

        // Reset to default option
        for (int i = 0; i < dropdowns.Length; i++)
        {
            dropdowns[i].value = 0;
        }

        var firstDropdown = dropdowns[0]; 
        eventSystem.SetSelectedGameObject(firstDropdown.gameObject);
        
        // // Calculate the new position **LOCAL** to XR Rig
        // Vector3 localOffset = new Vector3(-1.5f, 1f, 1.5f);  // 1m LEFT, 2m UP, 1.5m FORWARD

        // // Transform the local offset to world space relative to XR Rig
        // Vector3 worldOffset = XRRig.transform.TransformDirection(localOffset);

        // // Apply to your object
        // transform.position = XRRig.transform.position + worldOffset;

        // // Make the object face the same direction as the camera
        // Vector3 cameraForward = XRRig.transform.forward;
        // transform.rotation = Quaternion.LookRotation(cameraForward);
        Transform head = XRRig.Camera.transform;
        Vector3 spawnPos = head.position + head.forward * 1.5f;  
        spawnPos.y = head.position.y;
        transform.position = spawnPos;
        transform.rotation = Quaternion.LookRotation(head.forward);
    }

    public void NextPage()
    {
        pages[currentPage].SetActive(false);
        currentPage++;
        pages[currentPage].SetActive(true);

        // Select the first dropdown on the current page
        var firstDropdown = dropdowns[currentPage * 3]; 
        eventSystem.SetSelectedGameObject(firstDropdown.gameObject);

        UpdateButtons();
        Debug.Log($"Next page: {currentPage}");
    }

    public void PreviousPage()
    {
        pages[currentPage].SetActive(false);
        currentPage--;
        pages[currentPage].SetActive(true);

        var firstDropdown = dropdowns[currentPage * 3]; 
        eventSystem.SetSelectedGameObject(firstDropdown.gameObject);

        UpdateButtons();
        Debug.Log($"Previous page: {currentPage}");
    }

    void UpdateButtons()
    {
        backButton.gameObject.SetActive(currentPage > 0);
        nextButton.gameObject.SetActive(currentPage < pages.Length - 1);
        submitButton.gameObject.SetActive(currentPage == pages.Length - 1);
    }

    /// <summary>
    /// Handles the submission of the questionnaire and invokes the callback with responses.    
    /// </summary>
    public void Submit()
    {
        //submitButton.interactable = false;

        string[] responses = new string[dropdowns.Length];
        for (int i = 0; i < dropdowns.Length; i++)
        {
            responses[i] = dropdowns[i].options[dropdowns[i].value].text;
        }
        //TO DO: Check if all answered
        // if (dropdowns.Any(d => d.value < 0))
        // {
        //     Debug.LogWarning("Not all questions answered!");
        //     return;
        // }
        
        gameObject.SetActive(false);
        onComplete?.Invoke(responses);
        onComplete = null;
    }
}
