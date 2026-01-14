using UnityEngine;

/// <summary>
/// Defines the different stimuli conditions for participants.
/// </summary>
public enum StimuliCondition
{
    None,
    AudioOnly,
    OlfactoryOnly,
    Both
}

/// <summary>
/// Assigns stimuli conditions to participants based on their ID and the scene index.
/// </summary>
public static class ConditionAssigner
{
    public static StimuliCondition GetConditionForParticipant(int participantID, int currentCondition)
    {
        // Rotate conditions for each condition by adding scene index
        int conditionIndex = (participantID + currentCondition) % 4;
        
        return (StimuliCondition)conditionIndex;
    }
}
