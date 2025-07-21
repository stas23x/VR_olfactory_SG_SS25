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

            // Careful the order of the scenes is hardcoded right now according to the build 
            // settings in the project
            if (name == "TemplateScene")
            {
                sceneNames.Add("Start menu");
            }
            else if (name == "forest 1")
            {
                sceneNames.Add("Forest");
            }
            else if (name == "AmrumV2")
            {
                sceneNames.Add("Amrum");
            }
            else if (name == "Stanislav beach")
            {
                sceneNames.Add("Beach");
            }
            else if (name == "Konigssee")
            {
                sceneNames.Add("Konigssee");
            }
            else
            {
                Debug.Log("The following scene was not included in the dropdown:" + name);
            }
            
        }
    }

    void PopulateDropdown()
    {
        sceneDropdown.ClearOptions();
        sceneDropdown.AddOptions(sceneNames);
    }

    public string GetSelectedScene()
    {
        switch (sceneDropdown.value)
        {
            // Careful the order of the scenes is hardcoded right now according to the build 
            // settings in the project
            case 0: return "TemplateScene";
            case 1: return "forest 1";
            case 2: return "AmrumV2";
            case 3: return "Stanislav beach";
            case 4: return "Konigssee";
            default: return "";
        }
        // If you want to use the dropdown value directly:
        //
        
        // return sceneNames[sceneDropdown.value];
    }

    void OnSceneChanged(int index)
    {
        // We won't load scene immediately here. Scene loading will be controlled by MenuController on Continue.
    }
}
