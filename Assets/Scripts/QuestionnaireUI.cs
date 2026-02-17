// using TMPro;
// using UnityEngine;
// using UnityEngine.UI;
// using System;
// using UnityEditor.UI;
// using UnityEngine.UIElements;
// using Unity.XR.CoreUtils;
// using System.Collections;
// using UnityEngine.EventSystems;
// using Unity.Mathematics;

// /// <summary>
// /// Manages the questionnaire UI for collecting user responses.
// /// ! Important: This script assumes there are exactly 14 questions and corresponding dropdowns set up in the Unity Editor.
// /// It is also incomplete and not fully tested due to time constraints.
// /// </summary>
// public class QuestionnaireUI : MonoBehaviour
// {
//     // Singleton instance of the QuestionnaireUI, accessible globally
//     public static QuestionnaireUI Instance;
    

//     public TMP_Text[] questionText;
//     public TMP_Dropdown[] dropdowns;
//     public UnityEngine.UI.Button submitButton;
//     public UnityEngine.UI.Button nextButton;
//     public UnityEngine.UI.Button backButton;
//     private int currentPage = 0;
//     public GameObject[] pages;

//     public FollowHeadset scriptFollow;

//     public XROrigin XRRig;
//     private EventSystem eventSystem;
//     private GameObject currentDropdownList;


//     // German IPQ items and anchors
//     private readonly string[] questions = new string[]
//     {
//         "1. To what extent did the game hold your attention? ",
//         "2. To what extent did you feel you were focused on the game?",
//         "3. How much effort did you put into playing the game?",
//         "4. To what extent did you lose track of time, e.g. did the game absorb your attention so that you were not bored?",
//         "5. To what extent did you feel consciously aware of being in the real world whilst playing?",
//         "6. To what extent did you forget about your everyday concerns?   ",
//         "7. To what extent were you aware of yourself in your surroundings?",
//         "8. Did you feel the urge at any point to stop playing and see what was happening around you?  ",
//         "9. To what extent did you feel as though you were separated from your real-world environment?  ",
//         "10. To what extent did you feel that the game was something fun you were experiencing, rather than a task you were just doing?  ",
//         "11. To what extent did you feel motivated while playing?",
//         "12. To what extent did you feel emotionally attached to the game? ",
//         "13. To what extent were you interested in seeing how the game’s events would progress?  ",
//         "14. To what extent did you enjoy the graphics and the imagery?  ",
//         "15. How much would you say you enjoyed playing the game? ",
//         "16. When it ended, were you disappointed that the game was over? ",
//         "17. Would you like to play the game again? ",
//         "18. How immersed did you feel?  (10 = very immersed; 1 = not at all immersed)",
//     };

//     private readonly string[][] anchors = new string[][]
//     {
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7" },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7" },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7" },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7" },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  }, 
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "Very much - 7"  },
//         new string[] { "-", "Not at all - 1", "2", "3", "4", "5", "6", "7", "8", "9", "Very much - 10"  },
//     };

//     private Action<string[]> onComplete;

//     /// <summary>
//     /// Initializes the singleton instance and sets up the UI elements.
//     /// </summary>
//     void Awake()
//     {
//         Instance = this; 
//         eventSystem = EventSystem.current; //to test   
//         submitButton.onClick.AddListener(Submit);
//         gameObject.SetActive(false);
        
//         //initialize questions
//         for (int i = 0; i < questions.Length; i++)
//         {
//             questionText[i].text = questions[i];
//         }

//         // Initialize dropdown options for each question
//         for (int i = 0; i < dropdowns.Length; i++)
//         {
//             dropdowns[i].ClearOptions();
//             var options = new System.Collections.Generic.List<string>(anchors[i]);
//             dropdowns[i].AddOptions(options);
//         }
//     }

//     void Update()
//     {
//         // If a dropdown list clone exists in the scene
//         GameObject dropdownList = GameObject.Find("Dropdown List (Clone)");

//         if (dropdownList != null)
//         {
//             // Only adjust once per open
//             if (currentDropdownList != dropdownList)
//             {
//                 currentDropdownList = dropdownList;
//                 ResizeDropdownList(currentDropdownList, 200f);
//             }
//         }
//         else
//         {
//             // Reset when closed
//             currentDropdownList = null;
//         }
//     }

//     private void ResizeDropdownList(GameObject list, float height)
//     {
//         RectTransform rect = list.GetComponent<RectTransform>();
//         if (rect != null)
//         {
//             rect.SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, height);
//         }

//         // Optional: also force viewport height
//         ScrollRect scroll = list.GetComponent<ScrollRect>();
//         if (scroll != null)
//         {
//             RectTransform viewport = scroll.viewport;
//             viewport.SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, height);
//         }
//     }



//     // private void FixDropdownScrolling(TMP_Dropdown dropdown)
//     // {
//     //     if (!dropdown.IsExpanded)
//     //         return;

//     //     GameObject dropdownList = dropdown.transform.root.Find(dropdown.name + "Dropdown List")?.gameObject;
//     //     if (dropdownList == null)
//     //         return;

//     //     ScrollRect scrollRect = dropdown.GetComponentInChildren<ScrollRect>();
//     //     if (scrollRect == null)
//     //         return;

//     //     RectTransform content = scrollRect.content;

//     //     int selectedIndex = dropdown.value;
//     //     int totalOptions = dropdown.options.Count;
//     //     if (totalOptions<=0)
//     //         return;
//     //     float normalizedPosition = 1f - (float)selectedIndex / (totalOptions - 1);

//     //     scrollRect.verticalNormalizedPosition = Mathf.Clamp01(normalizedPosition);
            
//     // }
//     /// <summary>
//     /// Shows the questionnaire UI and sets the callback for when it's completed.
//     /// </summary>
//     /// <param name="callback"></param>
//     public void Show(Action<string[]> callback)
//     {
//         gameObject.SetActive(true);
//         onComplete = callback;

//         //pages reset
//         // pages[currentPage].SetActive(false);
//         // currentPage = 0;
//         // pages[currentPage].SetActive(true);
//         // UpdateButtons();

//         // Reset page index
//         currentPage = 0;

//         // Disable all pages first
//         for (int i = 0; i < pages.Length; i++)
//         {
//             pages[i].gameObject.SetActive(false);
//         }
//         // Activate first page
//         pages[currentPage].SetActive(true);
//         UpdateButtons();
//         gameObject.SetActive(true);
//         Debug.Log("Resetting questionnaire to page 0");


//         for (int i = 0; i < questions.Length; i++)
//         {
//             dropdowns[i].gameObject.SetActive(true);
//             // Assuming you have TMP_Text labels for questions (assign them in inspector)
//             // Or if you only have one questionText, update to current question here:
//             // For simplicity, let's say you have an array of question labels.
//         }

//         // Reset to default option
//         for (int i = 0; i < dropdowns.Length; i++)
//         {
//             dropdowns[i].value = 0;
//         }

//         var firstDropdown = dropdowns[0]; 
//         eventSystem.SetSelectedGameObject(firstDropdown.gameObject);
        
//         // // Calculate the new position **LOCAL** to XR Rig
//         // Vector3 localOffset = new Vector3(-1.5f, 1f, 1.5f);  // 1m LEFT, 2m UP, 1.5m FORWARD

//         // // Transform the local offset to world space relative to XR Rig
//         // Vector3 worldOffset = XRRig.transform.TransformDirection(localOffset);

//         // // Apply to your object
//         // transform.position = XRRig.transform.position + worldOffset;

//         // // Make the object face the same direction as the camera
//         // Vector3 cameraForward = XRRig.transform.forward;
//         // transform.rotation = Quaternion.LookRotation(cameraForward);
//         Transform head = XRRig.Camera.transform;
//         Vector3 spawnPos = head.position + head.forward * 1.5f;  
//         spawnPos.y = head.position.y;
//         transform.position = spawnPos;
//         transform.rotation = Quaternion.LookRotation(head.forward);
//     }

//     public void NextPage()
//     {
//         pages[currentPage].SetActive(false);
//         currentPage++;
//         pages[currentPage].SetActive(true);

//         // Select the first dropdown on the current page
//         var firstDropdown = dropdowns[currentPage * 3]; 
//         eventSystem.SetSelectedGameObject(firstDropdown.gameObject);

//         UpdateButtons();
//         Debug.Log($"Next page: {currentPage}");
//     }

//     public void PreviousPage()
//     {
//         pages[currentPage].SetActive(false);
//         currentPage--;
//         pages[currentPage].SetActive(true);

//         var firstDropdown = dropdowns[currentPage * 3]; 
//         eventSystem.SetSelectedGameObject(firstDropdown.gameObject);

//         UpdateButtons();
//         Debug.Log($"Previous page: {currentPage}");
//     }

//     void UpdateButtons()
//     {
//         backButton.gameObject.SetActive(currentPage > 0);
//         nextButton.gameObject.SetActive(currentPage < pages.Length - 1);
//         submitButton.gameObject.SetActive(currentPage == pages.Length - 1);
//     }

//     /// <summary>
//     /// Handles the submission of the questionnaire and invokes the callback with responses.    
//     /// </summary>
//     public void Submit()
//     {
//         //submitButton.interactable = false;

//         string[] responses = new string[dropdowns.Length];
//         for (int i = 0; i < dropdowns.Length; i++)
//         {
//             responses[i] = dropdowns[i].options[dropdowns[i].value].text;
//         }
//         //TO DO: Check if all answered
//         // if (dropdowns.Any(d => d.value < 0))
//         // {
//         //     Debug.LogWarning("Not all questions answered!");
//         //     return;
//         // }
        
//         gameObject.SetActive(false);
//         onComplete?.Invoke(responses);
//         onComplete = null;
//     }
// }

using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System;
using Unity.XR.CoreUtils;
using UnityEngine.EventSystems;

public class QuestionnaireUI : MonoBehaviour
{
    public static QuestionnaireUI Instance;

    [Header("UI References")]
    public TMP_Text[] questionText;
    public Slider[] sliders;       
    public Button submitButton;
    public Button nextButton;
    public Button backButton;
    public GameObject[] pages;

    [Header("XR")]
    public XROrigin XRRig;

        // Added array for value display
    private TMP_Text[] valueTexts;


    private EventSystem eventSystem;
    private int currentPage = 0;
    private Action<string[]> onComplete;

    private readonly string[] questions = new string[]
    {
        "1. To what extent did the game hold your attention?",
        "2. To what extent did you feel focused on the game?",
        "3. How much effort did you put into playing?",
        "4. To what extent did you lose track of time?",
        "5. To what extent were you aware of the real world?",
        "6. To what extent did you forget everyday concerns?",
        "7. To what extent were you aware of yourself?",
        "8. Did you feel the urge to stop playing?",
        "9. To what extent did you feel separated from reality?",
        "10. Did the game feel fun rather than a task?",
        "11. Did you feel motivated?",
        "12. Did you feel emotionally attached?",
        "13. Were you interested in the progression?",
        "14. Did you enjoy the graphics?",
        "15. How much did you enjoy playing?",
        "16. Were you disappointed when it ended?",
        "17. Would you like to play again?",
        "18. How immersed did you feel? (10 = very immersed)"
    };

    void Awake()
    {
        Instance = this;
        eventSystem = EventSystem.current;
        submitButton.onClick.AddListener(Submit);

        gameObject.SetActive(false);

        // Set question texts
        for (int i = 0; i < questions.Length; i++)
        {
            questionText[i].text = questions[i];
        }

        // Setup value texts
        valueTexts = new TMP_Text[sliders.Length];
        
        ConfigureNavigation();
    }

    private void CreateValueTextForSlider(int index)
    {
        GameObject textGO = new GameObject("ValueText_" + index, typeof(RectTransform));
        textGO.transform.SetParent(sliders[index].transform.parent, false);

        TMP_Text valueText = textGO.AddComponent<TMP_Text>();
        valueText.fontSize = 24;
        valueText.alignment = TextAlignmentOptions.Left;
        valueText.color = Color.black;

        RectTransform sliderRect = sliders[index].GetComponent<RectTransform>();
        RectTransform textRect = textGO.GetComponent<RectTransform>();
        textRect.sizeDelta = new Vector2(60, sliderRect.sizeDelta.y);
        textRect.anchorMin = sliderRect.anchorMin;
        textRect.anchorMax = sliderRect.anchorMax;
        textRect.pivot = sliderRect.pivot;

        // Place 10 units to the right of the slider
        textRect.anchoredPosition = sliderRect.anchoredPosition + new Vector2(sliderRect.sizeDelta.x / 2 + 10f, 0f);

        valueText.text = sliders[index].value.ToString("0"); // initialize

        // Correct closure capture for independent sliders
        int localIndex = index;
        sliders[index].onValueChanged.AddListener((val) =>
        {
            valueTexts[localIndex].text = val.ToString("0");
        });

        valueTexts[index] = valueText;
    }


    // -----------------------------------
    // NAVIGATION SETUP
    // -----------------------------------
    private void ConfigureNavigation()
    {
        int slidersPerPage = 3;  // or whatever number of sliders per page you have

        for (int page = 0; page < pages.Length; page++)
        {
            int startIndex = page * slidersPerPage;
            int endIndex = Mathf.Min(startIndex + slidersPerPage, sliders.Length) - 1;

            for (int i = startIndex; i <= endIndex; i++)
            {
                Navigation nav = new Navigation
                {
                    mode = Navigation.Mode.Explicit
                };

                // Up: previous slider or buttons if first slider
                if (i > startIndex)
                    nav.selectOnUp = sliders[i - 1];
                else
                    nav.selectOnUp = backButton;  // from top slider, Up goes to Back button

                // Down: next slider or buttons if last slider
                if (i < endIndex)
                {
                    nav.selectOnDown = sliders[i + 1];
                }
                else
                {
                    // Last slider on page: Down goes to Continue/Submit button
                    nav.selectOnDown = (page == pages.Length - 1) ? submitButton : nextButton;
                }

                nav.selectOnLeft = null;
                nav.selectOnRight = null;

                sliders[i].navigation = nav;
            }
        }

        // Navigation for Back Button
        Navigation backNav = new Navigation
        {
            mode = Navigation.Mode.Explicit,
            selectOnUp = sliders.Length > 0 ? sliders[Mathf.Min((currentPage + 1) * 3, sliders.Length) - 1] : null,
            selectOnRight = (currentPage == pages.Length - 1) ? submitButton : nextButton
        };
        backButton.navigation = backNav;

        // Navigation for Next/Submit Button
        var rightButton = (currentPage == pages.Length - 1) ? submitButton : nextButton;
        Navigation rightNav = new Navigation
        {
            mode = Navigation.Mode.Explicit,
            selectOnUp = sliders.Length > 0 ? sliders[Mathf.Min((currentPage + 1) * 3, sliders.Length) - 1] : null,
            selectOnLeft = backButton
        };
        rightButton.navigation = rightNav;
    }

    // -----------------------------------
    // SHOW UI
    // -----------------------------------
        public void Show(Action<string[]> callback)
    {
        gameObject.SetActive(true);
        onComplete = callback;

        currentPage = 0;



        for (int i = 0; i < pages.Length; i++)
            pages[i].SetActive(false);

        pages[currentPage].SetActive(true);
        UpdateButtons();

        // Reset slider values
        for (int i = 0; i < sliders.Length; i++)
        {
            sliders[i].value = sliders[i].minValue;
            valueTexts[i].text = sliders[i].value.ToString("0");
        }

        
        // for (int i = 0; i < sliders.Length; i++)
        // {
        //     CreateValueTextForSlider(i);
        // }

        // SELECT FIRST SLIDER
        eventSystem.SetSelectedGameObject(sliders[0].gameObject);

        // Position in front of player
        Transform head = XRRig.Camera.transform;
        Vector3 spawnPos = head.position + head.forward * 1.5f;
        spawnPos.y = head.position.y;
        transform.position = spawnPos;
        transform.rotation = Quaternion.LookRotation(head.forward);
    }

    // -----------------------------------
    // PAGE CONTROL
    // -----------------------------------
    public void NextPage()
    {
        pages[currentPage].SetActive(false);
        currentPage++;
        pages[currentPage].SetActive(true);

        // Select first slider of that page (assuming 3 per page)
        eventSystem.SetSelectedGameObject(sliders[currentPage * 3].gameObject);

        UpdateButtons();
    }

    public void PreviousPage()
    {
        pages[currentPage].SetActive(false);
        currentPage--;
        pages[currentPage].SetActive(true);

        eventSystem.SetSelectedGameObject(sliders[currentPage * 3].gameObject);

        UpdateButtons();
    }

    void UpdateButtons()
    {
        backButton.gameObject.SetActive(currentPage > 0);
        nextButton.gameObject.SetActive(currentPage < pages.Length - 1);
        submitButton.gameObject.SetActive(currentPage == pages.Length - 1);
    }

    // -----------------------------------
    // SUBMIT
    // -----------------------------------
    public void Submit()
    {
        string[] responses = new string[sliders.Length];

        for (int i = 0; i < sliders.Length; i++)
        {
            responses[i] = sliders[i].value.ToString();
        }

        gameObject.SetActive(false);
        onComplete?.Invoke(responses);
        onComplete = null;
    }
}
