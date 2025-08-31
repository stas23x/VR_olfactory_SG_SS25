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
        participantID -= 1;
        int mod = participantID % 4;

        // Rotate conditions for each scene by adding scene index
        int conditionIndex = (mod + sceneIndex) % 4;

        // Debug.Log(participantID);
        // Debug.Log(sceneIndex);
        // Debug.Log(conditionIndex);

        return (StimuliCondition)conditionIndex;
    }
}
