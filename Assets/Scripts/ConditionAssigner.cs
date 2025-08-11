using UnityEngine;

public enum StimuliCondition
{
    None,
    AudioOnly,
    OlfactoryOnly,
    Both
}

public static class ConditionAssigner
{
    public static StimuliCondition GetConditionForParticipant(int participantID, int sceneIndex)
    {

        int mod = participantID % 4;

        // Rotate conditions for each scene by adding scene index
        int conditionIndex = (mod + sceneIndex) % 4;

        return (StimuliCondition)conditionIndex;
    }
}
