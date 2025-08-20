using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ExperimentMenu : MonoBehaviour
{

    public Button startButton;
    public Dropdown participantDropdown;


    // Start is called before the first frame update
    void Start()
    {
        if (startButton != null)
            startButton.onClick.AddListener(OnStartClicked);
    }


    void OnStartClicked()
    {

        int participantID = participantDropdown.value;
        // StartCoroutine(GameObject.Find("ExperimentManager").GetComponent<ExperimentManager>().RunExperiment(participantID));

        // // Hide the experiment menu
        // gameObject.SetActive(false);

        _ = GameObject.Find("ExperimentManager").GetComponent<ExperimentManager>().RunExperiment(participantID);
        gameObject.SetActive(false);
    }
    
    
    

}
