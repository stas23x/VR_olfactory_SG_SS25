using UnityEngine;
using System.IO;
using System;

/// <summary>
/// Simple logger for recording XR rig position and rotation per frame.
/// Logs to a CSV file with timestamp, scene name, and condition.
/// </summary>
public class Logger : MonoBehaviour
{
    private string logPath;
    private bool isLogging = false;

    private string currentScene;
    private string currentCondition;

    private float logInterval = 0f; // Set >0 to throttle if needed
    private float timeSinceLastLog = 0f;

    int partID;

    /// <summary>
    /// Ensures the logger persists across scenes.
    /// </summary>
    void Awake()
    {
        DontDestroyOnLoad(this.gameObject);
    }

    /// <summary>
    /// Logs data each frame if logging is active.
    /// </summary>
    void Update()
    {
        if (!isLogging) return;

        timeSinceLastLog += Time.deltaTime;

        if (timeSinceLastLog >= logInterval)
        {
            LogFrameData();
            timeSinceLastLog = 0f;
        }
    }

    /// <summary>
    /// Starts logging to a CSV file for the given participant, scene, and condition.
    /// </summary>
    /// <param name="participantID"></param>
    /// <param name="sceneName"></param>
    /// <param name="condition"></param>
    public void StartLogging(int participantID, string sceneName, StimuliCondition condition)
    {
        currentScene = sceneName;
        currentCondition = condition.ToString();

        string safeScene = sceneName.Replace(" ", "_");
        string fileName = $"log_participant_{participantID}_{safeScene}_{currentCondition}.csv";
        logPath = Path.Combine(Application.persistentDataPath, fileName);

        File.WriteAllText(logPath, "participantID,Timestamp,Scene,Condition,XRPosition,XRRotation\n");

        isLogging = true;

        Debug.Log($"Logger started. Saving to: {logPath}");
        partID = participantID;
    }

    /// <summary>
    /// Stops logging.
    /// </summary>
    public void StopLogging()
    {
        isLogging = false;
        Debug.Log("Logger stopped.");
    }

    /// <summary>
    /// Logs the current frame's data to the CSV file.
    /// </summary>
    private void LogFrameData()
    {
        string timestamp = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff");

        GameObject xrRig = GameObject.Find("XRRig");
        string posStr = "NotFound";
        string rotStr = "NotFound";

        if (xrRig != null)
        {
            Vector3 pos = xrRig.transform.position;
            Quaternion rot = xrRig.transform.rotation;

            posStr = $"{pos.x:F2};{pos.y:F2};{pos.z:F2}";
            rotStr = $"{rot.eulerAngles.x:F2};{rot.eulerAngles.y:F2};{rot.eulerAngles.z:F2}";
        }

        string line = $"{partID},{timestamp},{currentScene},{currentCondition},{posStr},{rotStr}\n";
        File.AppendAllText(logPath, line);
    }

    //add Questionary NEW
    public void LogQuestionnaire(int participantID, StimuliCondition condition, string[] answers)
    {
    string fileName = $"questionnaire_participant_{participantID}_{condition}.csv";
    string path = Path.Combine(Application.persistentDataPath, fileName);

    // Header
    if (!File.Exists(path))
    {
        File.WriteAllText(path, "participantID,condition,questionIndex,answer\n");
    }
    //Data
    for (int i = 0; i < answers.Length; i++)
    {
        string line = $"{participantID},{condition},{i},{answers[i]}\n";
        File.AppendAllText(path, line);
    }

    Debug.Log($"Questionnaire saved to {path}");
    }
}
