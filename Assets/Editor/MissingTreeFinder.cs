using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;
using System.Collections.Generic;

public class MissingTreeFinder : EditorWindow
{
    [MenuItem("Tools/Finde fehlende Trees im Scenes-Ordner")]
    public static void FindMissingTrees()
    {
        // Nur Szenen im Assets/Scenes-Ordner suchen
        string[] sceneGuids = AssetDatabase.FindAssets("t:Scene", new[] { "Assets/Scenes" });
        List<string> results = new List<string>();

        foreach (string guid in sceneGuids)
        {
            string scenePath = AssetDatabase.GUIDToAssetPath(guid);
            var scene = EditorSceneManager.OpenScene(scenePath, OpenSceneMode.Single);

            Terrain[] terrains = GameObject.FindObjectsOfType<Terrain>();
            foreach (Terrain terrain in terrains)
            {
                if (terrain.terrainData == null)
                {
                    Debug.LogWarning($"⚠ Terrain '{terrain.name}' in Szene '{scenePath}' hat keine TerrainData.");
                    continue;
                }

                var treePrototypes = terrain.terrainData.treePrototypes;
                for (int i = 0; i < treePrototypes.Length; i++)
                {
                    if (treePrototypes[i].prefab == null)
                    {
                        results.Add($"❌ Fehlender Tree in Szene: {scenePath} | Terrain: {terrain.name} | Index: {i}");
                    }
                }
            }
        }

        if (results.Count == 0)
        {
            Debug.Log("✅ Keine fehlenden Trees im Scenes-Ordner gefunden!");
        }
        else
        {
            Debug.LogError("Fehlende Trees gefunden:\n" + string.Join("\n", results));
        }
    }
}
