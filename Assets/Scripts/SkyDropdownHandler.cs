using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Rendering;
using System.Linq;

public class SkyDropdownHandler : MonoBehaviour
{
    public Dropdown skyDropdown;
    public Volume skyVolumeTarget;

    public void Initialize(Dropdown dropdown, Volume volumeTarget)
    {
        skyDropdown = dropdown;
        skyVolumeTarget = volumeTarget;

        PopulateDropdown();
        skyDropdown.onValueChanged.AddListener(OnSkyChanged);
        skyDropdown.value = GlobalSettings.Instance.selectedSkyProfileIndex;
        skyDropdown.RefreshShownValue();
    }

    void PopulateDropdown()
    {
        var profiles = GlobalSettings.Instance.skyProfiles;
        skyDropdown.ClearOptions();
        skyDropdown.AddOptions(profiles.Select(p => p.name).ToList());
    }

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
