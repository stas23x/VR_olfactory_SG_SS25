using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using System.IO;
using System.Linq;

public class AddGrassPrefabsToTerrain : EditorWindow
{
    [Header("Target Terrain")]
    public Terrain targetTerrain;
    
    [Header("Grass Prefabs Folder")]
    public string grassFolderPath = "Assets/Grass Prefabs/";
    
    [Header("Detail Settings")]
    public DetailRenderMode renderMode = DetailRenderMode.Grass;
    public Texture2D detailTexture; // For billboard mode
    public float minWidth = 1f;
    public float maxWidth = 2f;
    public float minHeight = 1f;
    public float maxHeight = 2f;
    public float noiseSpread = 0.1f;
    public float bendFactor = 0.05f;
    public Color healthyColor = Color.white;
    public Color dryColor = Color.yellow;
    
    [Header("Options")]
    public bool replaceExistingDetails = false;
    public bool showDebugLog = true;

    private Vector2 scrollPosition;

    [MenuItem("Tools/Terrain/Add Grass Prefabs to Terrain")]
    public static void ShowWindow()
    {
        GetWindow<AddGrassPrefabsToTerrain>("Add Grass Prefabs to Terrain");
    }

    void OnGUI()
    {
        scrollPosition = EditorGUILayout.BeginScrollView(scrollPosition);
        
        GUILayout.Label("Add Grass Prefabs to Terrain Details", EditorStyles.boldLabel);
        EditorGUILayout.Space();

        // Target Terrain
        EditorGUILayout.LabelField("Target Terrain", EditorStyles.boldLabel);
        targetTerrain = (Terrain)EditorGUILayout.ObjectField("Terrain", targetTerrain, typeof(Terrain), true);
        
        if (targetTerrain == null)
        {
            EditorGUILayout.HelpBox("Please assign a target terrain.", MessageType.Warning);
        }
        
        EditorGUILayout.Space();

        // Folder Path
        EditorGUILayout.LabelField("Grass Prefabs Folder", EditorStyles.boldLabel);
        EditorGUILayout.BeginHorizontal();
        grassFolderPath = EditorGUILayout.TextField("Folder Path", grassFolderPath);
        if (GUILayout.Button("Browse", GUILayout.Width(60)))
        {
            string selectedPath = EditorUtility.OpenFolderPanel("Select Grass Prefabs Folder", Application.dataPath, "");
            if (!string.IsNullOrEmpty(selectedPath))
            {
                // Convert absolute path to relative path
                if (selectedPath.StartsWith(Application.dataPath))
                {
                    grassFolderPath = "Assets" + selectedPath.Substring(Application.dataPath.Length);
                }
            }
        }
        EditorGUILayout.EndHorizontal();
        
        // Validate folder path
        bool folderExists = Directory.Exists(grassFolderPath);
        if (!folderExists && !string.IsNullOrEmpty(grassFolderPath))
        {
            EditorGUILayout.HelpBox($"Folder '{grassFolderPath}' does not exist.", MessageType.Error);
        }
        
        EditorGUILayout.Space();

        // Detail Settings
        EditorGUILayout.LabelField("Detail Settings", EditorStyles.boldLabel);
        EditorGUILayout.HelpBox("Grass prefabs will be added as DetailRenderMode.Grass with mesh rendering.", MessageType.Info);
        
        EditorGUILayout.LabelField("Size Range");
        EditorGUI.indentLevel++;
        minWidth = EditorGUILayout.FloatField("Min Width", minWidth);
        maxWidth = EditorGUILayout.FloatField("Max Width", maxWidth);
        minHeight = EditorGUILayout.FloatField("Min Height", minHeight);
        maxHeight = EditorGUILayout.FloatField("Max Height", maxHeight);
        EditorGUI.indentLevel--;
        
        noiseSpread = EditorGUILayout.FloatField("Noise Spread", noiseSpread);
        bendFactor = EditorGUILayout.FloatField("Bend Factor", bendFactor);
        
        EditorGUILayout.LabelField("Colors");
        EditorGUI.indentLevel++;
        healthyColor = EditorGUILayout.ColorField("Healthy Color", healthyColor);
        dryColor = EditorGUILayout.ColorField("Dry Color", dryColor);
        EditorGUI.indentLevel--;
        
        EditorGUILayout.Space();

        // Options
        EditorGUILayout.LabelField("Options", EditorStyles.boldLabel);
        replaceExistingDetails = EditorGUILayout.Toggle("Replace Existing Details", replaceExistingDetails);
        showDebugLog = EditorGUILayout.Toggle("Show Debug Log", showDebugLog);
        
        EditorGUILayout.Space();

        // Preview found prefabs
        if (folderExists)
        {
            var grassPrefabs = FindGrassPrefabs();
            EditorGUILayout.LabelField($"Found Prefabs ({grassPrefabs.Count})", EditorStyles.boldLabel);
            
            if (grassPrefabs.Count > 0)
            {
                EditorGUI.indentLevel++;
                foreach (var prefab in grassPrefabs.Take(10)) // Show first 10
                {
                    EditorGUILayout.ObjectField(prefab.name, prefab, typeof(GameObject), false);
                }
                if (grassPrefabs.Count > 10)
                {
                    EditorGUILayout.LabelField($"... and {grassPrefabs.Count - 10} more");
                }
                EditorGUI.indentLevel--;
            }
            else
            {
                EditorGUILayout.HelpBox("No grass prefabs found in the specified folder.", MessageType.Info);
            }
        }
        
        EditorGUILayout.Space();

        // Add Button
        GUI.enabled = targetTerrain != null && folderExists;
        
        if (GUILayout.Button("Add Grass Prefabs to Terrain", GUILayout.Height(30)))
        {
            AddGrassPrefabsToTerrainDetails();
        }
        GUI.enabled = true;

        EditorGUILayout.EndScrollView();
    }

    List<GameObject> FindGrassPrefabs()
    {
        List<GameObject> grassPrefabs = new List<GameObject>();
        
        if (!Directory.Exists(grassFolderPath))
            return grassPrefabs;

        // Find all prefab files in the folder
        string[] prefabGuids = AssetDatabase.FindAssets("t:Prefab", new[] { grassFolderPath });
        
        foreach (string guid in prefabGuids)
        {
            string path = AssetDatabase.GUIDToAssetPath(guid);
            GameObject prefab = AssetDatabase.LoadAssetAtPath<GameObject>(path);
            
            if (prefab != null && ValidateGrassPrefab(prefab))
            {
                grassPrefabs.Add(prefab);
            }
        }

        return grassPrefabs;
    }

    bool ValidateGrassPrefab(GameObject prefab)
    {
        // Check if prefab has a MeshRenderer or MeshFilter
        MeshRenderer meshRenderer = prefab.GetComponent<MeshRenderer>();
        MeshFilter meshFilter = prefab.GetComponent<MeshFilter>();
        
        if (meshRenderer == null || meshFilter == null || meshFilter.sharedMesh == null)
        {
            if (showDebugLog)
            {
                Debug.LogWarning($"[AddGrassPrefabsToTerrain] Skipping {prefab.name} - Missing MeshRenderer, MeshFilter, or Mesh");
            }
            return false;
        }

        return true;
    }

    void AddGrassPrefabsToTerrainDetails()
    {
        if (targetTerrain == null)
        {
            EditorUtility.DisplayDialog("Error", "No target terrain assigned!", "OK");
            return;
        }

        var grassPrefabs = FindGrassPrefabs();
        if (grassPrefabs.Count == 0)
        {
            EditorUtility.DisplayDialog("Error", "No grass prefabs found in the specified folder!", "OK");
            return;
        }

        // Get current terrain data
        TerrainData terrainData = targetTerrain.terrainData;
        
        // Prepare detail prototypes list
        List<DetailPrototype> detailPrototypes = new List<DetailPrototype>();
        
        // Keep existing details if not replacing
        if (!replaceExistingDetails && terrainData.detailPrototypes != null)
        {
            detailPrototypes.AddRange(terrainData.detailPrototypes);
        }

        int addedCount = 0;
        
        // Add grass prefabs as detail prototypes
        foreach (GameObject grassPrefab in grassPrefabs)
        {
            // Check if this prefab is already in the details (avoid duplicates)
            bool alreadyExists = detailPrototypes.Any(dp => dp.prototype == grassPrefab);
            
            if (!alreadyExists)
            {
                DetailPrototype detailPrototype = new DetailPrototype();
                
                // For grass prefabs, always use Grass mode with the mesh
                detailPrototype.renderMode = DetailRenderMode.Grass;
                detailPrototype.prototype = grassPrefab;
                detailPrototype.usePrototypeMesh = true;
                
                // Set common properties
                detailPrototype.minWidth = minWidth;
                detailPrototype.maxWidth = maxWidth;
                detailPrototype.minHeight = minHeight;
                detailPrototype.maxHeight = maxHeight;
                detailPrototype.noiseSpread = noiseSpread;
                detailPrototype.bendFactor = bendFactor;
                detailPrototype.healthyColor = healthyColor;
                detailPrototype.dryColor = dryColor;
                
                // Ensure proper setup for mesh rendering
                detailPrototype.useInstancing = false; // Disable GPU instancing for compatibility

                detailPrototypes.Add(detailPrototype);
                addedCount++;
                
                if (showDebugLog)
                {
                    Debug.Log($"[AddGrassPrefabsToTerrain] Added grass prefab: {grassPrefab.name}");
                }
            }
            else if (showDebugLog)
            {
                Debug.Log($"[AddGrassPrefabsToTerrain] Skipped duplicate: {grassPrefab.name}");
            }
        }

        // Apply the updated detail prototypes to terrain
        terrainData.detailPrototypes = detailPrototypes.ToArray();

        // Initialize detail layers for new prototypes (set all to zero initially)
        int detailResolution = terrainData.detailResolution;
        for (int i = terrainData.detailPrototypes.Length - addedCount; i < terrainData.detailPrototypes.Length; i++)
        {
            int[,] detailLayer = new int[detailResolution, detailResolution];
            terrainData.SetDetailLayer(0, 0, i, detailLayer);
        }

        // Mark terrain data as dirty for saving
        EditorUtility.SetDirty(terrainData);
        EditorUtility.SetDirty(targetTerrain);

        // Show completion message
        string message = $"Successfully added {addedCount} grass prefabs to terrain '{targetTerrain.name}'.\n" +
                        $"Total detail prototypes: {detailPrototypes.Count}";
        
        if (showDebugLog)
        {
            Debug.Log($"[AddGrassPrefabsToTerrain] {message}");
        }
        
        EditorUtility.DisplayDialog("Success", message, "OK");
        
        // Refresh the terrain to show changes
        targetTerrain.Flush();
    }

    void OnInspectorUpdate()
    {
        // Repaint the window to update the UI
        Repaint();
    }
}
