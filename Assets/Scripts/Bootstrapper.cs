using UnityEngine;
using System;

public class Bootstrapper : MonoBehaviour
{
    void Awake()
    {
        string participantID = GetCommandLineArgument("participantID");

        if (participantID != null)
        {
            Debug.Log($"Participant ID from command line: {participantID}");
            StartExperiment(participantID);
        }
        else
        {
            Debug.Log("No participant ID provided, running gameplay mode.");
        }
    }

    string GetCommandLineArgument(string name)
    {
        string[] args = Environment.GetCommandLineArgs();
        for (int i = 0; i < args.Length; i++)
        {
            if (args[i].Equals("-" + name, StringComparison.InvariantCultureIgnoreCase) && i + 1 < args.Length)
            {
                return args[i + 1];
            }
            else if (args[i].StartsWith("-" + name + "=", StringComparison.InvariantCultureIgnoreCase))
            {
                // For argument like -participantID=P0123
                return args[i].Substring(name.Length + 2);
            }
        }
        return null;
    }

    void StartExperiment(string participantID)
    {
        // Create ExperimentManager and start experiment
        var experimentManagerGO = new GameObject("ExperimentManager");
        var experimentManager = experimentManagerGO.AddComponent<ExperimentManager>();
        experimentManager.participantID = int.TryParse(participantID, out int id) ? id : 0;

        experimentManager.StartCoroutine(experimentManager.RunExperiment());
    }
}
