using System.Collections;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.UI;
using System.Threading.Tasks;

public class ExperimentManager : MonoBehaviour
{
    public int participantID;
    

    public bool isExperimentActive = false;

    public GameObject ExperimentMenu;

    public GameObject PlayerMenu;

    public EventSystem eventSystem;

    public float experimentDuration = 10f;

    public GameObject questionnairePrefab;

    public string[] sceneOrder = new string[] { "forest 1", "Stanislav beach", "Koenigssee", "AmrumV2" };

    private int currentSceneIndex = 0;

    private Logger logger;
    private AudioManager audioManager;
    private OlfactoryManager olfactoryManager;

    private QuestionnaireUI questionnaireUI;

    private bool isExperimentRunning = false;
    private CharacterController characterController;
    private ActionBasedContinuousMoveProvider movementProvider;
    private ActionBasedContinuousTurnProvider turnProvider;

    void Awake()
    {
        DontDestroyOnLoad(gameObject);
    }

    void Start()
    {
        logger = FindObjectOfType<Logger>();
        audioManager = FindObjectOfType<AudioManager>();
        olfactoryManager = FindObjectOfType<OlfactoryManager>();
        questionnaireUI = QuestionnaireUI.Instance;
        

        if (isExperimentActive)
        {
            PlayerMenu.SetActive(false); // Hide the player menu initially
            ExperimentMenu.SetActive(true); // Start with the menu visible
            eventSystem.firstSelectedGameObject = GameObject.Find("ParticipantDropdown");
            characterController = GetComponentInParent<CharacterController>();
            movementProvider = GetComponentInParent<ActionBasedContinuousMoveProvider>();
            turnProvider = GetComponentInParent<ActionBasedContinuousTurnProvider>();

        }
        else
        {
            PlayerMenu.SetActive(true); // Show the player menu initially
            ExperimentMenu.SetActive(false); // Hide menu if not in experiment mode
            eventSystem.firstSelectedGameObject = GameObject.Find("SceneDropdown");
        }
    }

    public async Task RunExperiment(int partID)
    {
        isExperimentRunning = true;
        participantID = partID;

        for (currentSceneIndex = 0; currentSceneIndex < sceneOrder.Length; currentSceneIndex++)
        {
            string sceneName = sceneOrder[currentSceneIndex];

            // Determine condition for this participant and scene
            StimuliCondition condition = ConditionAssigner.GetConditionForParticipant(participantID, currentSceneIndex);
            // Debug.Log($"Loading scene '{sceneName}' with condition {condition}");
            // yield return new WaitForSeconds(10.0f);
          

            // Set conditions
            ApplyCondition(condition);

            string previousscene = SceneManager.GetActiveScene().name;
            // Load scene
            // SceneManager.LoadSceneAsync(sceneName, LoadSceneMode.Single);
            AsyncOperation loadOp = SceneManager.LoadSceneAsync(sceneName, LoadSceneMode.Single);

            setCameraStartPosition(sceneName);
            characterController.enabled = true;
            movementProvider.enabled = true;
            turnProvider.enabled = true;

            // Log scene start
            logger?.LogSceneStart(sceneName, condition == StimuliCondition.AudioOnly || condition == StimuliCondition.Both,
                                          condition == StimuliCondition.OlfactoryOnly || condition == StimuliCondition.Both);

            // Wait for experiment duration or user input
            //yield return RunSceneDuration();
            Debug.Log($"Pre delay: " + sceneName);
            await Task.Delay(System.TimeSpan.FromSeconds(experimentDuration));
            Debug.Log($"waited 10 sec");
            //Show questionnaire and wait for responses
            // bool questionnaireDone = false;
            // questionnairePrefab.SetActive(true);
            
            // Debug.Log($"opened a questionnaire");
                // questionnaireUI.Show((string[] responses) =>
            // {   
            //     Debug.Log($"Python bitche");
            //     logger?.LogQuestionnaireResponses(responses);
            //     Debug.Log($"Python bitchy");
            //     questionnaireDone = true;
            // });
            // while (!questionnaireDone)
            //     yield return null;
        }
        

        Debug.Log("Experiment completed.");
        isExperimentRunning = false;

        // // Optionally return to template scene or quit
        // SceneManager.LoadScene("TemplateScene");

        // yield return null;
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
        float timer = 0f;
        while (timer < experimentDuration)
        {
            timer += Time.deltaTime;
            yield return null;
        }
    }

    void setCameraStartPosition(string sceneName) {
        GameObject xrRig = GameObject.Find("XRRig");

        if (xrRig == null)
        {
            Debug.Log("XR Rig not found!");
        }
        else
        {
            Debug.Log("Found XRRig and setting it into the following scene " + sceneName);
            Camera camera = xrRig.GetComponentInChildren<Camera>();
            camera.tag = "MainCamera";
            
            switch (sceneName)
            {
               
                case "forest 1":
                    // xrRig.transform.position = new UnityEngine.Vector3(155.0f, 18.0f, 47.0f);
                    xrRig.transform.position = new UnityEngine.Vector3(155.0f, 20.0f, 47.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(15.8f, 28.6f, 0f);
                    break;
                case "AmrumV2":
                    // Set camera position for AmrumV2
                    // xrRig.transform.position = new UnityEngine.Vector3(796.0f, 58.0f, 596.0f);
                    xrRig.transform.position = new UnityEngine.Vector3(796.0f, 60.0f, 596.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(3f, -117f, 0f);
                    break;
                case "Stanislav beach":
                    // Set camera position for Stanislav beach
                    // xrRig.transform.position = new UnityEngine.Vector3(216.0f, 19.0f, 269.0f);
                    xrRig.transform.position = new UnityEngine.Vector3(216.0f, 21.0f, 269.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(3.6f, 138f, 0f);
                    break;
                case "Koenigssee":
                    // Set camera position for Konigssee
                    // xrRig.transform.position = new UnityEngine.Vector3(500.0f, 30.0f, 979.0f);
                    xrRig.transform.position = new UnityEngine.Vector3(500.0f, 32.0f, 979.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(11f, -151f, 0f);
                    break;
                default:
                    Debug.LogWarning("Unknown scene name: " + sceneName);
                    break;
            }
            
        }
        
    }
}
