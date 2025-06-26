using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.IO;
using UnityEngine.SceneManagement;

public class ExperimentManager : MonoBehaviour
{
    public TMP_InputField participantIdInput;
    public Slider[] questionSliders;
    public TextMeshProUGUI[] questionTexts;
    public Button submitButton;
    public Button nextSceneButton;
    public TextMeshProUGUI feedbackText;

    private string logPath;

    private void Start()
    {
        participantIdInput.text = GlobalSettings.Instance.participantID;

        logPath = Path.Combine(Application.persistentDataPath, "experiment_log.csv");

        if (!File.Exists(logPath))
        {
            File.WriteAllText(logPath, "Timestamp,ParticipantID,Scene,Question1,Question2,Question3\n");
        }

        submitButton.onClick.AddListener(SubmitResponse);
        nextSceneButton.onClick.AddListener(LoadNextScene);
    }

    void SubmitResponse()
    {
        string time = System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        string id = GlobalSettings.Instance.participantID;
        string scene = SceneManager.GetActiveScene().name;

        string line = $"{time},{id},{scene}";

        foreach (Slider s in questionSliders)
        {
            line += $",{s.value:F2}";
        }

        File.AppendAllText(logPath, line + "\n");

        feedbackText.text = "Response recorded!";
    }

    void LoadNextScene()
    {
        // Cycle through predefined scenes (hardcoded for now)
        string current = SceneManager.GetActiveScene().name;
        string[] allScenes = new[] { "ForestScene", "LakeScene", "BeachScene", "IslandScene" };

        int index = System.Array.IndexOf(allScenes, current);
        int nextIndex = (index + 1) % allScenes.Length;

        SceneManager.LoadScene(allScenes[nextIndex]);
    }
}
