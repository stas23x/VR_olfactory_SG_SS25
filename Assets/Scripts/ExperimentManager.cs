using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.IO;
using UnityEngine.SceneManagement;

public class ExperimentManager : MonoBehaviour
{
    public TMP_InputField participantIdInput;

    private string logPath;

    private void Start()
    {
        // participantIdInput.text = GlobalSettings.Instance.participantID;

        logPath = Path.Combine(Application.persistentDataPath, "experiment_log.csv");

        if (!File.Exists(logPath))
        {
            File.WriteAllText(logPath, "Timestamp,ParticipantID,Scene,Question1,Question2,Question3\n");
        }
    }

}
