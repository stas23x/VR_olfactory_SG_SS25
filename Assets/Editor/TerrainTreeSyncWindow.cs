// Assets/Editor/TerrainTreeSyncWindow.cs
using UnityEngine;
using UnityEditor;
using System.Linq;

public class TerrainTreeSyncWindow : EditorWindow
{
    private Terrain sourceTerrain;
    private bool copyInstances = false;
    private bool overwriteTargetInstances = false;

    [MenuItem("Tools/Terrain/Tree Sync")]
    public static void ShowWindow()
    {
        GetWindow<TerrainTreeSyncWindow>("Terrain Tree Sync");
    }

    private void OnGUI()
    {
        EditorGUILayout.LabelField("Quelle", EditorStyles.boldLabel);
        sourceTerrain = (Terrain)EditorGUILayout.ObjectField("Source Terrain", sourceTerrain, typeof(Terrain), true);

        EditorGUILayout.Space(6);
        EditorGUILayout.LabelField("Optionen", EditorStyles.boldLabel);
        copyInstances = EditorGUILayout.Toggle("TreeInstances mitkopieren", copyInstances);
        using (new EditorGUI.DisabledScope(!copyInstances))
        {
            overwriteTargetInstances = EditorGUILayout.Toggle("Ziel-Instanzen überschreiben", overwriteTargetInstances);
        }

        EditorGUILayout.Space(10);
        if (GUILayout.Button("Auf alle Terrains übertragen"))
        {
            ApplyToAllTerrains();
        }

        EditorGUILayout.HelpBox(
            "Nur TreePrototypes kopieren = nur die Auswahl/Arten im Paint-Tool.\n" +
            "TreeInstances kopieren = auch die bereits gepflanzten Bäume. " +
            "Achtung: Das Überschreiben löscht existierende Bäume in den Ziel-Terrains.",
            MessageType.Info);
    }

    private void ApplyToAllTerrains()
    {
        if (sourceTerrain == null || sourceTerrain.terrainData == null)
        {
            EditorUtility.DisplayDialog("Terrain Tree Sync", "Bitte ein gültiges Source Terrain zuweisen.", "OK");
            return;
        }

        var targets = Terrain.activeTerrains.Where(t => t != null && t != sourceTerrain).ToArray();
        if (targets.Length == 0)
        {
            EditorUtility.DisplayDialog("Terrain Tree Sync", "Keine weiteren Terrains in der aktiven Szene gefunden.", "OK");
            return;
        }

        var srcData = sourceTerrain.terrainData;
        var srcPrototypes = srcData.treePrototypes;
        var srcInstances = srcData.treeInstances;

        Undo.IncrementCurrentGroup();
        int undoGroup = Undo.GetCurrentGroup();

        foreach (var t in targets)
        {
            var td = t.terrainData;
            if (td == null) continue;

            Undo.RegisterCompleteObjectUndo(td, "Copy Tree Prototypes/Instances");

            // Prototypes kopieren (Auswahl der Baumarten)
            td.treePrototypes = srcPrototypes;

            // Optional: Instanzen kopieren
            if (copyInstances)
            {
                if (overwriteTargetInstances)
                {
                    td.treeInstances = srcInstances;
                }
                else
                {
                    // Bestehende behalten und die aus der Quelle hinzufügen
                    var merged = td.treeInstances.ToList();
                    merged.AddRange(srcInstances);
                    td.treeInstances = merged.ToArray();
                }
            }

            td.RefreshPrototypes();
            t.Flush(); // Terrain neu aufbauen/anzeigen
            EditorUtility.SetDirty(td);
        }

        Undo.CollapseUndoOperations(undoGroup);
        AssetDatabase.SaveAssets();

        EditorUtility.DisplayDialog(
            "Terrain Tree Sync",
            $"Übertragung abgeschlossen.\nBetroffene Terrains: {targets.Length}",
            "OK"
        );
    }
}
