using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ExperimentManager : MonoBehaviour
{
    public int participantID;
    public string[] sceneOrder = new string[] { "forest 1", "Stanislav beach", "Koenigssee", "AmrumV2" };

    private int currentSceneIndex = 0;

    private Logger logger;
    private AudioManager audioManager;
    private OlfactoryManager olfactoryManager;

    private QuestionnaireUI questionnaireUI;

    private bool isExperimentRunning = false;

    void Start()
    {
        logger = FindObjectOfType<Logger>();
        audioManager = FindObjectOfType<AudioManager>();
        olfactoryManager = FindObjectOfType<OlfactoryManager>();
        questionnaireUI = QuestionnaireUI.Instance;


        StartCoroutine(RunExperiment());
    }

    public IEnumerator RunExperiment()
    {
        isExperimentRunning = true;
        for (currentSceneIndex = 0; currentSceneIndex < sceneOrder.Length; currentSceneIndex++)
        {
            string sceneName = sceneOrder[currentSceneIndex];

            // Determine condition for this participant and scene
            StimuliCondition condition = ConditionAssigner.GetConditionForParticipant(participantID, currentSceneIndex);
            Debug.Log($"Loading scene '{sceneName}' with condition {condition}");

            // Set conditions
            ApplyCondition(condition);

            // Load scene
            yield return SceneManager.LoadSceneAsync(sceneName, LoadSceneMode.Single);

            // Log scene start
            logger?.LogSceneStart(sceneName, condition == StimuliCondition.AudioOnly || condition == StimuliCondition.Both,
                                          condition == StimuliCondition.OlfactoryOnly || condition == StimuliCondition.Both);

            // Wait for experiment duration or user input
            yield return RunSceneDuration();

            // Show questionnaire and wait for responses
            bool questionnaireDone = false;
            questionnaireUI.Show((string[] responses) =>
            {
                logger?.LogQuestionnaireResponses(responses);
                questionnaireDone = true;
            });
            while (!questionnaireDone)
                yield return null;
        }

        Debug.Log("Experiment completed.");
        isExperimentRunning = false;

        // Optionally return to template scene or quit
        SceneManager.LoadScene("TemplateScene");
    }

    void ApplyCondition(StimuliCondition condition)
    {
        bool useAudio = (condition == StimuliCondition.AudioOnly || condition == StimuliCondition.Both);
        bool useOlfactory = (condition == StimuliCondition.OlfactoryOnly || condition == StimuliCondition.Both);

        GlobalSettings.Instance.useAudio = useAudio;
        GlobalSettings.Instance.useOlfactory = useOlfactory;

        // Audio
        audioManager?.SetMasterVolume(useAudio ? GlobalSettings.Instance.audioStrength : 0f);

        // Olfactory
        if (olfactoryManager != null)
            olfactoryManager.enabled = useOlfactory;
    }

    IEnumerator RunSceneDuration()
    {
        // Placeholder: could be fixed time or wait for user input to continue
        float experimentDuration = 120f; // 2 minutes per scene
        float timer = 0f;
        while (timer < experimentDuration)
        {
            timer += Time.deltaTime;
            yield return null;
        }
    }
}
