using UnityEngine;
using UnityEditor;
using System.Linq;

public class AddTerrainLayersFromFolder : EditorWindow
{
    private Terrain targetTerrain;
    private DefaultAsset folder;

    [MenuItem("Tools/Terrain/Add Layers From Folder")]
    public static void ShowWindow()
    {
        GetWindow<AddTerrainLayersFromFolder>("Add Layers From Folder");
    }

    void OnGUI()
    {
        targetTerrain = (Terrain)EditorGUILayout.ObjectField("Target Terrain", targetTerrain, typeof(Terrain), true);
        folder = (DefaultAsset)EditorGUILayout.ObjectField("Folder", folder, typeof(DefaultAsset), false);

        if (GUILayout.Button("Add All Layers") && targetTerrain != null && folder != null)
        {
            string folderPath = AssetDatabase.GetAssetPath(folder);
            var layers = AssetDatabase.FindAssets("t:TerrainLayer", new[] { folderPath })
                                      .Select(guid => AssetDatabase.LoadAssetAtPath<TerrainLayer>(AssetDatabase.GUIDToAssetPath(guid)))
                                      .Where(l => l != null)
                                      .ToArray();

            if (layers.Length > 0)
            {
                var existing = targetTerrain.terrainData.terrainLayers.ToList();
                foreach (var layer in layers)
                {
                    if (!existing.Contains(layer))
                        existing.Add(layer);
                }
                targetTerrain.terrainData.terrainLayers = existing.ToArray();
                Debug.Log($"Added {layers.Length} layers to {targetTerrain.name}");
            }
            else
            {
                Debug.LogWarning("No TerrainLayers found in that folder.");
            }
        }
    }
}
