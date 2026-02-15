using System.Collections;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.UI;
using System.Threading.Tasks;
#if UNITY_EDITOR
using UnityEditor;
#endif

/// <summary>
/// Manages the overall experiment flow, including scene transitions, condition assignments, and logging.   
/// </summary>
public class ExperimentManager : MonoBehaviour
{
    public int participantID;
    public bool isExperimentActive = false;

    public GameObject ExperimentMenu;
    public GameObject PlayerMenu;
    public EventSystem eventSystem;
    public float experimentDuration = 10f;
    public string scene = "Stanislav beach";
    public int seqLenght = 4;

    private Logger logger;
    private AudioManager audioManager;
    private OlfactoryManager olfactoryManager;
    private QuestionnaireUI questionnaireUI;
    private bool isExperimentRunning = false;

    private CharacterController characterController;
    private ActionBasedContinuousMoveProvider movementProvider;
    private ActionBasedContinuousTurnProvider turnProvider;

    /// <summary>
    /// Ensures the ExperimentManager persists across scenes.
    /// </summary>
    void Awake()
    {
        DontDestroyOnLoad(gameObject);
    }

    /// <summary>
    /// Initializes references and sets up the initial UI state based on whether the experiment is active.
    /// </summary>
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

    /// <summary>
    /// Starts the experiment for the given participant ID.
    /// </summary>
    /// <param name="partID"></param>
    /// <returns></returns>
    public async Task RunExperiment(int partID)
    {
        isExperimentRunning = true;
        participantID = partID;

        for (int currentCondition = 0; currentCondition < seqLenght; currentCondition++)
        {
            // Determine condition for this participant and scene
            StimuliCondition condition = ConditionAssigner.GetConditionForParticipant(participantID, currentCondition);

            // Set conditions
            ApplyCondition(condition);
            //TO DELETE
            string previousscene = SceneManager.GetActiveScene().name;

            // Load scene

            // Set camera position after the scene is fully loaded
            // ! changing coordinates before changing the condition, as sometimes the PC needs more time to load the scene and 
            // the player falls indefinitelly
            setCameraStartPosition(condition);

            AsyncOperation loadOp = SceneManager.LoadSceneAsync(scene, LoadSceneMode.Single);
            characterController.enabled = true;
            movementProvider.enabled = true;
            turnProvider.enabled = true;

            // START logging
           // logger?.StartLogging(partID , scene, condition);

            // Wait for experiment duration or user input
            // Debug.Log($"Pre delay: " + scene);
            await Task.Delay(System.TimeSpan.FromSeconds(experimentDuration));

            // STOP logging
           // logger?.StopLogging();

            //questionnaire and logging of questionnaire responses
            // Disable movement while answering
            movementProvider.enabled = false;
            turnProvider.enabled = false;
            characterController.enabled = false;

            // SHOW questionnaire and WAIT for answers
            var tcs = new TaskCompletionSource<string[]>();
            questionnaireUI.Show((responses) =>{tcs.SetResult(responses);});
            string[] answers = await tcs.Task;
            

            // LOG questionnaire answers
            //logger?.LogQuestionnaire(participantID, condition, answers);

            // Re-enable movement (optional, since next scene loads anyway)
            movementProvider.enabled = true;
            turnProvider.enabled = true;
            characterController.enabled = true;
        }

        Debug.Log("Experiment completed.");
        isExperimentRunning = false;

        #if UNITY_EDITOR
                // Stop Play mode in Editor
                EditorApplication.isPlaying = false;
        #else
                // Quit built application
                Application.Quit();
        #endif
    }

    /// <summary>
    /// Applies the given stimuli condition by enabling/disabling audio and olfactory stimuli.
    /// </summary>
    /// <param name="condition"></param>
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

    /// <summary>
    /// Sets the starting position and rotation of the XR Rig based on the scene name.
    /// </summary>
    /// <param name="scene"></param>
    void setCameraStartPosition(StimuliCondition condition)
    {
        GameObject xrRig = GameObject.Find("XRRig");

        if (xrRig == null)
        {
            Debug.Log("XR Rig not found!");
        }
        else
        {
            Debug.Log("Found XRRig and setting it into the following scene " + scene);
            Camera camera = xrRig.GetComponentInChildren<Camera>();
            camera.tag = "MainCamera";

            switch (condition)
            {

                case StimuliCondition.None:
                    // Set camera position for condition == none
                    xrRig.transform.position = new UnityEngine.Vector3(155.0f, 20.0f, 47.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(15.8f, 28.6f, 0f);
                    break;
                case StimuliCondition.AudioOnly:
                    // Set camera position for condition == AudioOnly
                    xrRig.transform.position = new UnityEngine.Vector3(796.0f, 160.0f, 596.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(3f, -117f, 0f);
                    break;
                case StimuliCondition.OlfactoryOnly:
                    // Set camera position for condition == OlfactoryOnly
                    xrRig.transform.position = new UnityEngine.Vector3(216.0f, 21.0f, 269.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(3.6f, 138f, 0f);
                    break;
                case StimuliCondition.Both:
                    // Set camera position for condition == both
                    xrRig.transform.position = new UnityEngine.Vector3(500.0f, 32.0f, 979.0f);
                    xrRig.transform.rotation = UnityEngine.Quaternion.Euler(11f, -151f, 0f);
                    break;
                default:
                    Debug.LogWarning("Problem with setting coordinates");
                    break;
            }
        }
    }

    //TO DELETE
    // private Task<string[]> ShowQuestionnaireAsync()
    // {
    // var tcs = new TaskCompletionSource<string[]>();

    // questionnaireUI.Show((responses) =>
    // {
    //     tcs.SetResult(responses);
    // });
    // return tcs.Task;
    // }
}
