// Assets/Editor/TerrainDetailSyncWindow.cs
using UnityEngine;
using UnityEditor;
using System.Linq;
using System.Collections.Generic;

public class TerrainDetailSyncWindow : EditorWindow
{
    private Terrain sourceTerrain;
    private bool copyDetailMaps = false;
    private bool overwriteTargetMaps = false;
    private bool syncSelectedOnly = false;
    private List<bool> selectedPrototypes = new List<bool>();
    private Vector2 scrollPosition;

    [MenuItem("Tools/Terrain/Detail Sync")]
    public static void ShowWindow()
    {
        GetWindow<TerrainDetailSyncWindow>("Terrain Detail Sync");
    }

    private void OnGUI()
    {
        scrollPosition = EditorGUILayout.BeginScrollView(scrollPosition);
        
        EditorGUILayout.LabelField("Source", EditorStyles.boldLabel);
        sourceTerrain = (Terrain)EditorGUILayout.ObjectField("Source Terrain", sourceTerrain, typeof(Terrain), true);

        if (sourceTerrain != null && sourceTerrain.terrainData != null)
        {
            var detailPrototypes = sourceTerrain.terrainData.detailPrototypes;
            
            EditorGUILayout.Space(6);
            EditorGUILayout.LabelField($"Detail Prototypes ({detailPrototypes.Length})", EditorStyles.boldLabel);
            
            // Ensure selectedPrototypes list matches the number of prototypes
            while (selectedPrototypes.Count < detailPrototypes.Length)
                selectedPrototypes.Add(true);
            while (selectedPrototypes.Count > detailPrototypes.Length)
                selectedPrototypes.RemoveAt(selectedPrototypes.Count - 1);

            syncSelectedOnly = EditorGUILayout.Toggle("Sync Selected Only", syncSelectedOnly);
            
            if (syncSelectedOnly && detailPrototypes.Length > 0)
            {
                EditorGUILayout.LabelField("Select Detail Prototypes to Sync:", EditorStyles.boldLabel);
                EditorGUI.indentLevel++;
                
                for (int i = 0; i < detailPrototypes.Length; i++)
                {
                    var prototype = detailPrototypes[i];
                    string displayName = GetPrototypeName(prototype, i);
                    selectedPrototypes[i] = EditorGUILayout.Toggle(displayName, selectedPrototypes[i]);
                }
                
                EditorGUI.indentLevel--;
                
                EditorGUILayout.Space(3);
                EditorGUILayout.BeginHorizontal();
                if (GUILayout.Button("Select All"))
                {
                    for (int i = 0; i < selectedPrototypes.Count; i++)
                        selectedPrototypes[i] = true;
                }
                if (GUILayout.Button("Select None"))
                {
                    for (int i = 0; i < selectedPrototypes.Count; i++)
                        selectedPrototypes[i] = false;
                }
                EditorGUILayout.EndHorizontal();
            }
        }

        EditorGUILayout.Space(6);
        EditorGUILayout.LabelField("Options", EditorStyles.boldLabel);
        copyDetailMaps = EditorGUILayout.Toggle("Copy Detail Maps", copyDetailMaps);
        
        using (new EditorGUI.DisabledScope(!copyDetailMaps))
        {
            overwriteTargetMaps = EditorGUILayout.Toggle("Overwrite Target Maps", overwriteTargetMaps);
        }

        EditorGUILayout.Space(10);
        
        GUI.enabled = sourceTerrain != null;
        if (GUILayout.Button("Apply to All Terrains", GUILayout.Height(30)))
        {
            ApplyToAllTerrains();
        }
        GUI.enabled = true;

        EditorGUILayout.Space(5);
        EditorGUILayout.HelpBox(
            "Detail Prototypes only = sync the available detail types in the Paint Details tool.\n" +
            "Copy Detail Maps = also copy the painted detail density maps. " +
            "Warning: Overwriting will delete existing detail paintings in target terrains.",
            MessageType.Info);
            
        EditorGUILayout.EndScrollView();
    }

    private string GetPrototypeName(DetailPrototype prototype, int index)
    {
        if (prototype.prototype != null)
            return $"[{index}] {prototype.prototype.name} (Mesh)";
        else if (prototype.prototypeTexture != null)
            return $"[{index}] {prototype.prototypeTexture.name} (Texture)";
        else
            return $"[{index}] Detail Prototype {index}";
    }

    private void ApplyToAllTerrains()
    {
        if (sourceTerrain == null || sourceTerrain.terrainData == null)
        {
            EditorUtility.DisplayDialog("Terrain Detail Sync", "Please assign a valid source terrain.", "OK");
            return;
        }

        var targets = Terrain.activeTerrains.Where(t => t != null && t != sourceTerrain).ToArray();
        if (targets.Length == 0)
        {
            EditorUtility.DisplayDialog("Terrain Detail Sync", "No other terrains found in the active scene.", "OK");
            return;
        }

        var srcData = sourceTerrain.terrainData;
        var srcPrototypes = srcData.detailPrototypes;

        if (srcPrototypes.Length == 0)
        {
            EditorUtility.DisplayDialog("Terrain Detail Sync", "Source terrain has no detail prototypes.", "OK");
            return;
        }

        // Determine which prototypes to sync
        List<int> indicesToSync = new List<int>();
        if (syncSelectedOnly)
        {
            for (int i = 0; i < selectedPrototypes.Count && i < srcPrototypes.Length; i++)
            {
                if (selectedPrototypes[i])
                    indicesToSync.Add(i);
            }
            
            if (indicesToSync.Count == 0)
            {
                EditorUtility.DisplayDialog("Terrain Detail Sync", "No detail prototypes selected for sync.", "OK");
                return;
            }
        }
        else
        {
            for (int i = 0; i < srcPrototypes.Length; i++)
                indicesToSync.Add(i);
        }

        Undo.IncrementCurrentGroup();
        int undoGroup = Undo.GetCurrentGroup();
        int processedCount = 0;

        try
        {
            foreach (var targetTerrain in targets)
            {
                var targetData = targetTerrain.terrainData;
                if (targetData == null) continue;

                Undo.RegisterCompleteObjectUndo(targetData, "Sync Detail Prototypes/Maps");

                if (syncSelectedOnly)
                {
                    SyncSelectedPrototypes(srcData, targetData, indicesToSync);
                }
                else
                {
                    // Copy all prototypes
                    targetData.detailPrototypes = srcPrototypes;
                }

                // Optional: Copy detail maps
                if (copyDetailMaps)
                {
                    SyncDetailMaps(srcData, targetData, indicesToSync);
                }

                targetData.RefreshPrototypes();
                targetTerrain.Flush();
                EditorUtility.SetDirty(targetData);
                processedCount++;
            }
        }
        catch (System.Exception e)
        {
            Debug.LogError($"Error during detail sync: {e.Message}");
            EditorUtility.DisplayDialog("Error", $"An error occurred during sync: {e.Message}", "OK");
        }

        Undo.CollapseUndoOperations(undoGroup);
        AssetDatabase.SaveAssets();

        EditorUtility.DisplayDialog(
            "Terrain Detail Sync",
            $"Sync completed.\nProcessed terrains: {processedCount}\nSynced prototypes: {indicesToSync.Count}",
            "OK"
        );
    }

    private void SyncSelectedPrototypes(TerrainData srcData, TerrainData targetData, List<int> indicesToSync)
    {
        var srcPrototypes = srcData.detailPrototypes;
        var targetPrototypes = targetData.detailPrototypes.ToList();

        // Add or update selected prototypes
        foreach (int index in indicesToSync)
        {
            if (index >= srcPrototypes.Length) continue;

            var sourcePrototype = srcPrototypes[index];
            
            // Find if this prototype already exists in target
            int existingIndex = FindMatchingPrototype(targetPrototypes, sourcePrototype);
            
            if (existingIndex >= 0)
            {
                // Update existing prototype
                targetPrototypes[existingIndex] = sourcePrototype;
            }
            else
            {
                // Add new prototype
                targetPrototypes.Add(sourcePrototype);
            }
        }

        targetData.detailPrototypes = targetPrototypes.ToArray();
    }

    private int FindMatchingPrototype(List<DetailPrototype> prototypes, DetailPrototype source)
    {
        for (int i = 0; i < prototypes.Count; i++)
        {
            var existing = prototypes[i];
            
            // Compare by prototype object or texture
            if (source.prototype != null && existing.prototype == source.prototype)
                return i;
            if (source.prototypeTexture != null && existing.prototypeTexture == source.prototypeTexture)
                return i;
        }
        return -1;
    }

    private void SyncDetailMaps(TerrainData srcData, TerrainData targetData, List<int> indicesToSync)
    {
        int srcResolution = srcData.detailResolution;
        int targetResolution = targetData.detailResolution;
        
        foreach (int srcIndex in indicesToSync)
        {
            if (srcIndex >= srcData.detailPrototypes.Length) continue;

            // Get source detail map
            int[,] srcDetailMap = srcData.GetDetailLayer(0, 0, srcResolution, srcResolution, srcIndex);
            
            // Find corresponding index in target terrain
            int targetIndex = syncSelectedOnly ? 
                FindMatchingPrototypeIndex(targetData, srcData.detailPrototypes[srcIndex]) : 
                srcIndex;

            if (targetIndex >= 0 && targetIndex < targetData.detailPrototypes.Length)
            {
                int[,] targetDetailMap;
                
                if (srcResolution == targetResolution)
                {
                    // Direct copy if resolutions match
                    targetDetailMap = srcDetailMap;
                }
                else
                {
                    // Scale detail map if resolutions differ
                    targetDetailMap = ScaleDetailMap(srcDetailMap, srcResolution, targetResolution);
                }

                if (!overwriteTargetMaps)
                {
                    // Merge with existing detail map
                    int[,] existingMap = targetData.GetDetailLayer(0, 0, targetResolution, targetResolution, targetIndex);
                    targetDetailMap = MergeDetailMaps(existingMap, targetDetailMap);
                }

                targetData.SetDetailLayer(0, 0, targetIndex, targetDetailMap);
            }
        }
    }

    private int FindMatchingPrototypeIndex(TerrainData targetData, DetailPrototype sourcePrototype)
    {
        var targetPrototypes = targetData.detailPrototypes;
        for (int i = 0; i < targetPrototypes.Length; i++)
        {
            var target = targetPrototypes[i];
            if (sourcePrototype.prototype != null && target.prototype == sourcePrototype.prototype)
                return i;
            if (sourcePrototype.prototypeTexture != null && target.prototypeTexture == sourcePrototype.prototypeTexture)
                return i;
        }
        return -1;
    }

    private int[,] ScaleDetailMap(int[,] sourceMap, int srcRes, int targetRes)
    {
        int[,] scaledMap = new int[targetRes, targetRes];
        float scale = (float)srcRes / targetRes;

        for (int y = 0; y < targetRes; y++)
        {
            for (int x = 0; x < targetRes; x++)
            {
                int srcX = Mathf.Clamp(Mathf.RoundToInt(x * scale), 0, srcRes - 1);
                int srcY = Mathf.Clamp(Mathf.RoundToInt(y * scale), 0, srcRes - 1);
                scaledMap[y, x] = sourceMap[srcY, srcX];
            }
        }

        return scaledMap;
    }

    private int[,] MergeDetailMaps(int[,] existing, int[,] incoming)
    {
        int height = existing.GetLength(0);
        int width = existing.GetLength(1);
        int[,] merged = new int[height, width];

        for (int y = 0; y < height; y++)
        {
            for (int x = 0; x < width; x++)
            {
                // Take the maximum density value
                merged[y, x] = Mathf.Max(existing[y, x], incoming[y, x]);
            }
        }

        return merged;
    }

    private void OnInspectorUpdate()
    {
        Repaint();
    }
}
