using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using TMPro;

public class TMPDropdownAutoScroller : MonoBehaviour
{
    public TMP_Dropdown dropdown;

    void Update()
    {
        if (dropdown == null || !dropdown.IsExpanded)
            return;

        if (EventSystem.current == null)
            return;

        GameObject selected = EventSystem.current.currentSelectedGameObject;
        if (selected == null)
            return;

        // Make sure selection belongs to this dropdown
        if (!selected.transform.IsChildOf(dropdown.transform.root))
            return;

        // Find runtime dropdown list
        ScrollRect scrollRect = dropdown.GetComponentInChildren<ScrollRect>(true);
        if (scrollRect == null)
            return;

        RectTransform content = scrollRect.content;

        // Loop through content children to find selected index
        for (int i = 0; i < content.childCount; i++)
        {
            if (content.GetChild(i).gameObject == selected)
            {
                int activeChildren = content.childCount;

                if (activeChildren > 1)
                {
                    float normalized = 1f - (float)i / (activeChildren - 1);
                    scrollRect.verticalNormalizedPosition = Mathf.Clamp01(normalized);
                }

                break;
            }
        }
    }
}
