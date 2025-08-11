using UnityEngine;
using System.IO;
using System;

public class Logger : MonoBehaviour
{
    private string logPath;

    void Awake()
    {
        logPath = Path.Combine(Application.persistentDataPath, "experiment_log.csv");

        if (!File.Exists(logPath))
        {
            File.WriteAllText(logPath, "Timestamp,ParticipantID,Scene,Audio,Olfactory,Responses\n");
        }
    }

    public void LogSceneStart(string sceneName, bool audio, bool olfactory)
    {
        string line = $"{GetTime()},{GlobalSettings.Instance.participantID},{sceneName},{BoolToStr(audio)},{BoolToStr(olfactory)},\n";
        File.AppendAllText(logPath, line);
    }

    public void LogQuestionnaireResponses(string[] responses)
    {
        string joined = string.Join(",", responses);
        File.AppendAllText(logPath, $",,,,{joined}\n");
    }

    private string GetTime() => DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
    private string BoolToStr(bool b) => b ? "On" : "Off";
}
