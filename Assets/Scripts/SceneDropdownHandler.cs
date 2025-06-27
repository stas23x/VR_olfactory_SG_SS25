using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections.Generic;

public class SceneDropdownHandler : MonoBehaviour
{
    public Dropdown sceneDropdown;
    private List<string> sceneNames = new List<string>();

    public void Initialize(Dropdown dropdown)
    {
        sceneDropdown = dropdown;

        LoadSceneNamesFromBuildSettings();
        PopulateDropdown();
        sceneDropdown.onValueChanged.AddListener(OnSceneChanged);

        string currentScene = SceneManager.GetActiveScene().name;
        int index = sceneNames.FindIndex(name => name == currentScene);
        if (index >= 0)
        {
            sceneDropdown.value = index;
            sceneDropdown.RefreshShownValue();
        }
    }

    void LoadSceneNamesFromBuildSettings()
    {
        int sceneCount = SceneManager.sceneCountInBuildSettings;
        sceneNames.Clear();

        for (int i = 0; i < sceneCount; i++)
        {
            string path = SceneUtility.GetScenePathByBuildIndex(i);
            string name = System.IO.Path.GetFileNameWithoutExtension(path);
            sceneNames.Add(name);
        }
    }

    void PopulateDropdown()
    {
        sceneDropdown.ClearOptions();
        sceneDropdown.AddOptions(sceneNames);
    }

    public string GetSelectedScene()
    {
        return sceneNames[sceneDropdown.value];
    }

    void OnSceneChanged(int index)
    {
        // We won't load scene immediately here. Scene loading will be controlled by MenuController on Continue.
    }
}
