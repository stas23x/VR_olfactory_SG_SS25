using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Rendering;
using System.Linq;

/// <summary>
/// Handles the sky selection dropdown in the menu.
/// </summary>
public class SkyDropdownHandler : MonoBehaviour
{
    public Dropdown skyDropdown;
    public Volume skyVolumeTarget;

    /// <summary>
    /// Initializes the dropdown with sky profile names from GlobalSettings.
    /// </summary>
    /// <param name="dropdown"></param>
    /// <param name="volumeTarget"></param>
    public void Initialize(Dropdown dropdown, Volume volumeTarget)
    {
        skyDropdown = dropdown;
        skyVolumeTarget = volumeTarget;

        PopulateDropdown();
        skyDropdown.onValueChanged.AddListener(OnSkyChanged);
        skyDropdown.value = GlobalSettings.Instance.selectedSkyProfileIndex;
        skyDropdown.RefreshShownValue();
    }

    /// <summary>
    /// Populates the dropdown with the names of available sky profiles.
    /// </summary>
    void PopulateDropdown()
    {
        var profiles = GlobalSettings.Instance.skyProfiles;
        skyDropdown.ClearOptions();
        skyDropdown.AddOptions(profiles.Select(p => p.name).ToList());
    }

    /// <summary>
    /// Handles sky profile change when a new option is selected in the dropdown.
    /// </summary>
    /// <param name="index"></param>
    void OnSkyChanged(int index)
    {
        GlobalSettings.Instance.selectedSkyProfileIndex = index;
        GlobalSettings.Instance.ApplySkyProfile();

        if (skyVolumeTarget != null)
        {
            skyVolumeTarget.profile = GlobalSettings.Instance.skyProfiles[index];
        }
    }
}
