using UnityEngine;
using System.IO;
using System;

public class Logger : MonoBehaviour
{
    private string logPath;
    private bool isLogging = false;

    private string currentScene;
    private string currentCondition;

    private float logInterval = 0f; // Set >0 to throttle if needed
    private float timeSinceLastLog = 0f;

    void Awake()
    {
        DontDestroyOnLoad(this.gameObject);
    }

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

    public void StartLogging(int participantID, string sceneName, StimuliCondition condition)
    {
        currentScene = sceneName;
        currentCondition = condition.ToString();

        string safeScene = sceneName.Replace(" ", "_");
        string fileName = $"log_Participant_{participantID}_{safeScene}_{currentCondition}.csv";
        logPath = Path.Combine(Application.persistentDataPath, fileName);


        File.WriteAllText(logPath, "Timestamp,Scene,Condition,XRPosition,XRRotation\n");


        isLogging = true;

        Debug.Log($"Logger started. Saving to: {logPath}");
    }

    public void StopLogging()
    {
        isLogging = false;
        Debug.Log("Logger stopped.");
    }

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

        string line = $"{timestamp},{currentScene},{currentCondition},{posStr},{rotStr}\n";
        File.AppendAllText(logPath, line);
    }
}
