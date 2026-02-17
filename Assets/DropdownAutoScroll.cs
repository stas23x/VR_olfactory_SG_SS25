using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class DropdownAutoScroll : MonoBehaviour
{
    private Dropdown dropdown;
    private ScrollRect scrollRect;

    void Start()
    {
        dropdown = GetComponent<Dropdown>();
    }

    void Update()
    {
        if (dropdown.transform.Find("Dropdown List") == null)
            return;

        if (scrollRect == null)
        {
            scrollRect = dropdown.transform
                .Find("Dropdown List/Viewport")
                .GetComponentInParent<ScrollRect>();
        }

        GameObject selected = EventSystem.current.currentSelectedGameObject;

        if (selected != null && selected.transform.IsChildOf(scrollRect.content))
        {
            ScrollToSelected(selected.GetComponent<RectTransform>());
        }
    }

    void ScrollToSelected(RectTransform selected)
    {
        Canvas.ForceUpdateCanvases();

        float contentHeight = scrollRect.content.rect.height;
        float viewportHeight = scrollRect.viewport.rect.height;

        float itemTop = Mathf.Abs(selected.localPosition.y);
        float itemBottom = itemTop + selected.rect.height;

        float scrollTop = scrollRect.verticalNormalizedPosition * 
                        (contentHeight - viewportHeight);

        if (itemBottom > scrollTop + viewportHeight)
        {
            scrollRect.verticalNormalizedPosition -= 
                selected.rect.height / contentHeight;
        }
        else if (itemTop < scrollTop)
        {
            scrollRect.verticalNormalizedPosition += 
                selected.rect.height / contentHeight;
        }
    }

}
