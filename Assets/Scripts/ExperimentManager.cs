using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using System.Collections.Generic;

public class ExperimentManager : MonoBehaviour
{
    [System.Serializable]
    public class Condition
    {
        public string sceneName;
        public bool useAudio;
        public bool useOlfactory;
    }

    public List<Condition> conditions;
    public float sceneDuration = 180f; // 3 minutes
    private int currentConditionIndex = 0;

    private Logger logger;

    void Start()
    {
        logger = FindObjectOfType<Logger>();
        StartCoroutine(RunNextCondition());
    }

    IEnumerator RunNextCondition()
    {
        if (currentConditionIndex >= conditions.Count)
        {
            ShowFinalQuestionnaire();
            yield break;
        }

        Condition current = conditions[currentConditionIndex];

        ApplySensorySettings(current);

        AsyncOperation asyncLoad = SceneManager.LoadSceneAsync(current.sceneName);
        while (!asyncLoad.isDone)
            yield return null;

        logger.LogSceneStart(current.sceneName, current.useAudio, current.useOlfactory);

        yield return new WaitForSeconds(sceneDuration);

        ShowSceneQuestionnaire();
    }

    public void OnQuestionnaireSubmitted(string[] responses)
    {
        logger.LogQuestionnaireResponses(responses);
        currentConditionIndex++;
        StartCoroutine(RunNextCondition());
    }

    private void ApplySensorySettings(Condition condition)
    {
        AudioManager.Instance?.SetMasterVolume(condition.useAudio ? 1f : 0f);
        if (condition.useOlfactory)
            OlfactoryManager.Instance?.StartScent("default", 40);
        else
            OlfactoryManager.Instance?.StopScent("default");
    }

    private void ShowSceneQuestionnaire()
    {
        QuestionnaireUI.Instance.Show(OnQuestionnaireSubmitted);
    }

    private void ShowFinalQuestionnaire()
    {
        Debug.Log("Experiment complete.");
        // Could show a final form or exit
    }
}
