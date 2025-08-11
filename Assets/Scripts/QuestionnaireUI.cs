using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System;

public class QuestionnaireUI : MonoBehaviour
{
    public static QuestionnaireUI Instance;

    public TMP_Text questionText;
    public TMP_Dropdown[] dropdowns; // One per question
    public Button submitButton;

    private Action<string[]> onComplete;

    void Awake()
    {
        Instance = this;
        submitButton.onClick.AddListener(Submit);
        gameObject.SetActive(false);
    }

    public void Show(Action<string[]> callback)
    {
        gameObject.SetActive(true);
        onComplete = callback;
    }

    void Submit()
    {
        string[] responses = new string[dropdowns.Length];
        for (int i = 0; i < dropdowns.Length; i++)
            responses[i] = dropdowns[i].value.ToString();

        gameObject.SetActive(false);
        onComplete?.Invoke(responses);
    }
}
