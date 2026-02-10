using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System;

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
    public Button submitButton;

    // German IPQ items and anchors
    private readonly string[] questions = new string[]
    {
        "In der computererzeugten Welt hatte ich den Eindruck, dort gewesen zu sein...",
        "Ich hatte das Gefühl, daß die virtuelle Umgebung hinter mir weitergeht.",
        "Ich hatte das Gefühl, nur Bilder zu sehen."
        // "Ich hatte nicht das Gefühl, in dem virtuellen Raum zu sein.",
        // "Ich hatte das Gefühl, in dem virtuellen Raum zu handeln statt etwas von außen zu bedienen.",
        // "Ich fühlte mich im virtuellen Raum anwesend.",
        // "Wie bewußt war Ihnen die reale Welt, während Sie sich durch die virtuelle Welt bewegten (z.B. Geräusche, Raumtemperatur, andere Personen etc.)?",
        // "Meine reale Umgebung war mir nicht mehr bewußt.",
        // "Ich achtete noch auf die reale Umgebung.",
        // "Meine Aufmerksamkeit war von der virtuellen Welt völlig in Bann gezogen.",
        // "Wie real erschien Ihnen die virtuelle Umgebung?",
        // "Wie sehr glich Ihr Erleben der virtuellen Umgebung dem Erleben einer realen Umgebung?",
        // "Wie real erschien Ihnen die virtuelle Welt?",
        // "Die virtuelle Welt erschien mir wirklicher als die reale Welt."
    };

    private readonly string[][] anchors = new string[][]
    {
        new string[] { "überhaupt nicht", "sehr stark" },
        new string[] { "trifft gar nicht zu", "trifft völlig zu" },
        new string[] { "trifft gar nicht zu", "trifft völlig zu" },
        // new string[] { "hatte nicht das Gefühl", "hatte das Gefühl" },
        // new string[] { "trifft gar nicht zu", "trifft völlig zu" },
        // new string[] { "trifft gar nicht zu", "trifft völlig zu" },
        // new string[] { "extrem bewußt", "mittelmäßig bewußt", "unbewußt" }, // 3 anchors
        // new string[] { "trifft gar nicht zu", "trifft völlig zu" },
        // new string[] { "trifft gar nicht zu", "trifft völlig zu" },
        // new string[] { "trifft gar nicht zu", "trifft völlig zu" },
        // new string[] { "vollkommen real", "weder noch", "gar nicht real" },
        // new string[] { "überhaupt nicht", "etwas", "vollständig" },
        // new string[] { "wie eine vorgestellte Welt", "nicht zu unterscheiden von der realen Welt" },
        // new string[] { "trifft gar nicht zu", "trifft völlig zu" }
    };

    private Action<string[]> onComplete;

    /// <summary>
    /// Initializes the singleton instance and sets up the UI elements.
    /// </summary>
    void Awake()
    {
        Instance = this;    
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

    /// <summary>
    /// Shows the questionnaire UI and sets the callback for when it's completed.
    /// </summary>
    /// <param name="callback"></param>
    public void Show(Action<string[]> callback)
    {
        gameObject.SetActive(true);
        onComplete = callback;

        for (int i = 0; i < questions.Length; i++)
        {
            dropdowns[i].gameObject.SetActive(true);
            // Assuming you have TMP_Text labels for questions (assign them in inspector)
            // Or if you only have one questionText, update to current question here:
            // For simplicity, let's say you have an array of question labels.
        }
    }

    /// <summary>
    /// Handles the submission of the questionnaire and invokes the callback with responses.    
    /// </summary>
    public void Submit()
    {
        submitButton.interactable = false;

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
