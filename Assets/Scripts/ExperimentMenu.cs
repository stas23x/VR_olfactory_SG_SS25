using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

/// <summary>
/// Handles the experiment menu UI, including participant ID selection and starting the experiment.
/// </summary>
public class ExperimentMenu : MonoBehaviour
{
    public Button startButton;
    public Dropdown participantDropdown;
    // public TMP_InputField participantField;

    public int ID;

    /// <summary>
    /// Initializes the experiment menu by setting up button listeners.
    /// Start is called before the first frame update
    /// </summary>
    void Start()
    {
        if (startButton != null)
            startButton.onClick.AddListener(OnStartClicked);
    }

    /// <summary>
    /// Called when the Start button is clicked. Retrieves the selected participant ID and starts the experiment.
    /// </summary>
    void OnStartClicked()
    {

        // int participantID = Convert.ToInt32(participantField.text);

        // int participantID = participantDropdown.value;
        int participantID = ID;
        
        _ = GameObject.Find("ExperimentManager").GetComponent<ExperimentManager>().RunExperiment(participantID);
        gameObject.SetActive(false);
    }
}
