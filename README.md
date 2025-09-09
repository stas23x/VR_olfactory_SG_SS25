# VR Olfactory Serious Games Project

This repository contains a Unity-based VR project that integrates visual, audio, and olfactory feedback to create an immersive VR environment. The project connects Unity and SteamVR with an Arduino olfactory device.

This document is intended for developers joining the project. It explains the systems, classes, their connections, and how to set up and extend the project.

For more information, contact:  
karina.miroslavova.lazarova@gmail.com  
danymao555@outlook.com
valev.stanislav03@gmail.com
simon.heinrich.weiss@outlook.de
---

## 1. Requirements

### Software
- **Unity**: 2022.3.62f (LTS)
- **SteamVR plugin**: Install via Unity Asset Store or Package Manager
- **Unity Input System**: Enabled in Project Settings
- **TextMeshPro (TMP)**: For questionnaire UI
- **HD Render Pipeline (HDRP)**: For water and sky rendering

### Hardware
- **SteamVR-compatible VR headset** (HTC Vive recommended)
- **Arduino-based olfactory device**, connected via USB and registered as a COM port
- **PC with Steam and SteamVR installed**

---

## 2. Project Architecture

The project is divided into the following subsystems:

### 2.1 Olfactory System
- Controls scent diffusion through an Arduino-based pump device.
- Entry point: `OlfactoryManager`.
- Triggers are handled via `zoneScentTrigger` and `ScentTrigger`.

### 2.2 VR Locomotion System
- Provides multiple locomotion methods for the XR rig:
  - `XRRigDpadMover` (Unity Input System)
  - `SteamVRDpadMovement` (SteamVR bindings)
  - `SimpleMovement` (Desktop fallback with WASD/mouse)
  
### 2.3 Environment Interaction System
- Handles audio and sky environment changes.
- Entry points: `ProximityAudio`, `SkyDropdownHandler`, `SceneDropdownHandler`.

### 2.4 UI and Global State
- Manages scene selection, experiment menu, and questionnaire.
- Entry points: `ExperimentMenu`, `MenuController`, `QuestionnaireUI`, `GlobalSettings`, `AppRoot`.

---

## 3. Class Overview and Connections

### 3.1 Olfactory System

The Olfactory System in this project handles **scent emission** in VR using an Arduino-controlled pump array. The system is designed to be modular and largely automated, but it requires careful setup and handling to function correctly.

---

#### **Core Components**

1. **OlfactoryManager**
   - **Singleton** class: only one instance should exist in the scene.
   - Handles connection to Arduino via a serial port.
   - Provides the API to start, stop, and adjust scent frequencies:
     - `StartScent(scentType, frequency)`
     - `StopScent(scentType)`
     - `SetFrequency(frequency)`
     - `PushFrequency(frequency)` / `ReturnToPreviousFrequency()`
     - `DisableAllPumps()` (used on scene exit or application quit)
   - Scans all available COM ports at startup and attempts to auto-connect to the Arduino. This is **automated**, but the device must be correctly powered and connected to a recognized COM port.

2. **ScentTrigger**
   - Parent object for scent zones.
   - Defines multiple concentric zones with radii and frequencies (usually 3 zones: Zone 1 = far, Zone 3 = closest).
   - Automatically attaches the `zoneScentTrigger` script to each zone.
   - Assigns different frequencies for scent intensity depending on the player's proximity.

3. **zoneScentTrigger**
   - Attached to each zone collider.
   - Handles `OnTriggerEnter` and `OnTriggerExit` events for the player (`XRRig`).
   - Calls `OlfactoryManager` API to start/stop or adjust scent frequencies.
   - Uses a **stack** of previous frequencies to restore scent intensity when the player leaves inner zones.

---

#### **Workflow and Automation**

- **Initialization**
  - `OlfactoryManager` runs on `Awake()`.
  - Scans COM ports and tries to connect automatically to the Arduino.
  - Logs the detected COM ports and successful connection to the Unity console.
  - If no Arduino is found, the system remains in “simulation mode,” allowing testing in the editor without hardware.

- **Player Interaction**
  - When the player enters a scent zone:
    - Zone 3 → Starts scent at assigned frequency.
    - Zone 2 → Adjusts frequency for medium intensity.
    - Zone 1 → Adjusts frequency for low intensity.
  - When the player exits a zone:
    - Zone 3 → Stops the scent entirely.
    - Zone 2 / Zone 1 → Returns to previous frequency.

- **Frequency Management**
  - Inner zones push their frequency onto a stack.
  - When leaving the zone, the system pops the stack to restore previous values.
  - Prevents sudden jumps in scent intensity when transitioning through multiple zones.

- **Cleanup**
  - `DisableAllPumps()` is automatically called:
    - On scene change.
    - On object destruction.
    - On application quit.
  - Ensures no pumps remain active after the session ends, preventing hardware wear or unintended scent emission.

---

#### **Arduino Connection**

1. **Connection**
   - Connect the Arduino device via USB before launching Unity.
   - Make sure the device is assigned a valid COM port (Windows: Device Manager → Ports (COM & LPT)).
   - `OlfactoryManager` will scan available ports automatically and attempt to connect.
   - The Arduino firmware must respond with a test message (e.g., containing "Channel") to confirm the connection.

2. **Disconnection**
   - Never unplug the Arduino while Unity is running.
   - Doing so may cause exceptions in `SerialPort` operations.
   - If the Arduino must be disconnected:
     1. Stop the scene.
     2. Ensure `DisableAllPumps()` has run.
     3. Safely remove the device.

3. **Reconnection**
   - If the Arduino is reconnected after a failed attempt, restart Unity or the scene to trigger `OlfactoryManager`’s auto-connect.

---

#### **Common Practices**

- **Prefab Setup**
  - Each scent zone should have `SphereCollider` triggers for Zone 1-3.
  - Attach `zoneScentTrigger` to each collider.
  - Parent all zones under a `ScentTrigger` object and set the `scentType`.

- **Frequency Tuning**
  - Zone 3: High intensity (closest)
  - Zone 2: Medium intensity
  - Zone 1: Low intensity (far)
  - Adjust according to room ventilation and odor strength.

- **Testing without Arduino**
  - The system can log actions to Unity Console when no Arduino is detected.
  - Allows VR gameplay testing without hardware.

- **Scene Management**
  - Only one `OlfactoryManager` should exist per scene (or persistent TemplateScene).
  - For additive scene loading, keep `OlfactoryManager` in the TemplateScene to maintain singleton across multiple scenes.

---

#### **Common Bugs**

1. **Arduino not detected**
   - Causes: wrong COM port, firmware not uploaded, or USB issue.
   - Solution: check Device Manager, upload correct firmware, verify COM port.

2. **Serial port in use**
   - Causes: another application (Serial Monitor, Arduino IDE) using the COM port.
   - Solution: close other programs using the port, restart Unity.

3. **Multiple OlfactoryManagers**
   - Causes: duplicate prefabs in scene.
   - Solution: ensure singleton pattern; only one active `OlfactoryManager` at runtime.

4. **Incorrect scent intensity**
   - Causes: wrong frequency assigned in `ScentTrigger` zones.
   - Solution: verify zone hierarchy and frequencies; check stack logic in `zoneScentTrigger`.

5. **Player collider not recognized**
   - Causes: `OnTriggerEnter` checks for `other.name == "XRRig"`.
   - Solution: ensure XR Rig object is named exactly `"XRRig"` or adjust the script check.

6. **Pumps stay on after exiting scene**
   - Causes: `OnDestroy()` or `OnApplicationQuit()` not called correctly (scene unloaded incorrectly).
   - Solution: always use TemplateScene to host persistent managers; call `DisableAllPumps()` in any manual shutdown.

---

### 3.2 VR Locomotion System

The VR Locomotion System in this project manages **player movement and orientation** inside the XR Rig. It is designed to support multiple input methods, terrain alignment, and objects that follow the headset.

---

#### **Core Components**

1. **XRRigDpadMover / SteamVRDpadMovement / SimpleMovement**
   - Handle movement of the XR Rig using different input methods:
     - **XRRigDpadMover**: Uses Unity Input System for joystick or d-pad movement.
     - **SteamVRDpadMovement**: Uses SteamVR boolean actions for d-pad or button-based movement relative to headset orientation.
     - **SimpleMovement**: Provides a desktop fallback with WASD + mouse look.
   - Ensure the XR Rig moves along terrain surfaces using raycasts or rigidbody alignment.
   - Automatically disabled if any menu or UI overlay is open.
   - **Input Configuration Subpoint**: 
     - For **SteamVRDpadMovement**, ensure that SteamVR actions (`moveUp`, `moveDown`, `moveLeft`, `moveRight`) are correctly mapped in the SteamVR Input window.
     - For **XRRigDpadMover**, verify that the Unity Input Actions asset includes the correct bindings for joystick, keyboard, or d-pad input.
     - Always regenerate or update input actions if you change bindings to avoid unresponsive controls.

2. **FollowHeadset**
   - Makes a GameObject (e.g., floating UI or object) follow the XR Camera.
   - Updates position and rotation each frame.
   - Can place objects at a fixed distance in front of the camera for UI or interactive elements.

---

#### **Workflow and Automation**

- **Movement Handling**
  - **SteamVRDpadMovement**
    - Reads four boolean inputs (`moveUp`, `moveDown`, `moveLeft`, `moveRight`).
    - Combines them into a 2D vector and normalizes for diagonal movement.
    - Rotates the vector relative to the XR headset's yaw before applying to XR Rig.
    - Speed is controlled via a public `speed` variable.
  
  - **SimpleMovement**
    - Reads `Horizontal` and `Vertical` axes for movement (WASD / arrow keys).
    - Handles yaw rotation from `Mouse X` and pitch (up/down) from `Mouse Y`.
    - Clamps pitch to avoid over-rotation (`minY` / `maxY`).
    - Updates the main camera’s local rotation for pitch.

- **Object Following**
  - FollowHeadset updates the attached object’s position and rotation based on XR Camera.
  - Typically used for UI, tools, or other objects that must remain in view of the player.
  - Can maintain a fixed distance in front of the camera (e.g., 1 meter).

---

#### **Best Practices**

1. **Movement**
   - Always attach movement scripts to the XR Rig root object.
   - Disable scripts when menus or overlays are active to prevent unwanted movement.
   - For additive scenes, ensure only one movement script controls the XR Rig to avoid conflicts.

2. **Headset Following**
   - Assign the XR Camera to the `target` field of `FollowHeadset`.
   - Avoid moving objects too far from the player to maintain immersion.
   - Use this for in-game HUD elements, floating tools, or interactive objects.

3. **Scene Setup**
   - Use consistent XR Rig naming (`XRRig`) if scripts reference it directly.
   - Make sure movement scripts respect terrain colliders to prevent clipping or floating.

---

#### **Common Bugs**

1. **Movement not responsive**
   - Causes: Incorrect input mapping, missing SteamVR actions, or XR Rig not assigned.
   - Solution: Verify SteamVR actions, Input System bindings, and XR Rig reference.

2. **Object not following headset**
   - Causes: `target` not assigned or null.
   - Solution: Assign XR Camera to `FollowHeadset.target`.

3. **Conflicting movement scripts**
   - Multiple movement scripts on XR Rig may fight for control.
   - Solution: Only enable the desired movement script based on platform (VR vs desktop).

4. **Rotation issues**
   - Pitch or yaw can invert if multiple rotations are applied incorrectly.
   - Solution: Clamp pitch and apply yaw rotations correctly relative to XR Camera.

---

### 3.3 Environment Interaction System

The Environment Interaction System manages **dynamic changes to the game environment**, including audio, scene selection, and sky profile switching. It ensures that immersive elements respond to player presence and UI interactions.

---

#### **Core Components**

1. **ProximityAudio**
   - Plays a looping audio clip when the player enters a trigger zone.
   - Stops playback when the player exits the trigger zone.
   - Requires an `AudioSource` component on the same GameObject.
   - Detects player entry using `Collider.CompareTag("Player")`.
   - Can be used for ambient sounds, localized effects, or interactive audio cues.

2. **MovementSound**
   - Plays a movement-related audio clip based on the player’s velocity.
   - Monitors the XR rig position each frame to calculate speed.
   - Automatically fades the sound in and out depending on the speed threshold.
   - Requires an `AudioSource` in the XR rig hierarchy.
   - Helps provide immersive feedback when the player walks, runs, or moves in VR.

3. **SceneDropdownHandler**
   - Populates a dropdown menu with scenes defined in **Build Settings**.
   - Maps internal scene names to user-friendly display names.
   - Provides the selected scene for loading (scene loading is typically triggered by a separate menu controller).
   - Important: All scenes to appear in the dropdown must be added in **Build Settings** and their order corresponds to the dropdown mapping.

4. **SkyDropdownHandler**
   - Populates a dropdown menu with available sky profiles from `GlobalSettings`.
   - Updates the URP/HDRP `Volume` component with the selected sky profile.
   - Can be used to switch lighting, skybox, and environmental effects at runtime.
   - Automatically initializes to the last selected profile stored in `GlobalSettings`.

5. **AudioManager**
   - Singleton class managing global audio settings via an `AudioMixer`.
   - Controls master volume and can expose multiple mixer groups (e.g., "Local" for scene-specific audio).
   - Other scripts (like `AudioSliderHandler` and `localAudioSetUp`) interact with it for volume control and routing.

6. **AudioSliderHandler**
   - Connects UI sliders to `AudioManager`.
   - Updates both the slider UI and `GlobalSettings` for persistent volume settings.
   - Ensures user volume preferences persist across sessions.

7. **localAudioSetUp**
   - Configures scene-specific `AudioSource` components to use a "Local" mixer group from the global `AudioMixer`.
   - Ensures audio is routed correctly and consistent with global audio management.

---

#### **Workflow and Automation**

- **Proximity Audio**
  - Automatically plays or stops audio based on player presence in trigger colliders.
  - No manual updates required per frame.
  
- **Movement Sound**
  - Automatically monitors player movement and plays/fades the sound based on speed.
  - Ensures audio feedback is consistent with VR locomotion.

- **Dropdown Menus**
  - `SceneDropdownHandler` and `SkyDropdownHandler` automatically populate dropdowns from build settings and `GlobalSettings`.
  - User selection is stored in `GlobalSettings` for persistence.
  - `SkyDropdownHandler` applies the selected sky profile immediately to the assigned Volume.

- **Audio Management**
  - `AudioManager` automatically persists singleton instance.
  - `AudioSliderHandler` synchronizes slider UI with current volume.
  - `localAudioSetUp` ensures that all local audio sources in a scene are routed through the correct mixer group.

---

#### **Setup Instructions**

1. **Audio**
   - Add `AudioManager` to a persistent GameObject (e.g., in TemplateScene).
   - Assign a global `AudioMixer` with at least a "Master" and "Local" group.
   - Attach `AudioSliderHandler` to UI sliders and assign the `AudioManager`.

2. **Movement Sound**
   - Attach `MovementSound` to the XR rig.
   - Ensure there is a child `AudioSource` configured with the walking/movement sound clip.
   - Set appropriate `speedThreshold` and `fadeSpeed` values for smooth fading.

3. **Scene Dropdown**
   - Add `SceneDropdownHandler` to the dropdown UI object.
   - Call `Initialize()` at runtime.
   - Ensure all scenes are added to **Build Settings**.

4. **Sky Dropdown**
   - Add `SkyDropdownHandler` to the dropdown UI object.
   - Assign the target `Volume` component that controls sky/environment.
   - Call `Initialize()` at runtime.
   - Ensure sky profiles are defined in `GlobalSettings`.

5. **Proximity Audio**
   - Attach `ProximityAudio` to any GameObject with a collider set as a trigger.
   - Add an `AudioSource` component with the desired audio clip.
   - Make sure the player GameObject has the tag `"Player"`.

---

#### **Best Practices**

1. **Dropdowns**
   - Keep scene and sky profiles consistent across builds to avoid index mismatches.
   - Always refresh the dropdown (`RefreshShownValue()`) after changing options programmatically.

2. **Audio**
   - Use `AudioMixerGroups` to separate global and local audio routing.
   - Always assign `AudioManager.Instance` before calling volume updates.
   - Avoid playing audio without a configured mixer to prevent runtime warnings.

3. **Proximity Audio**
   - Ensure triggers are sized appropriately for the intended area.
   - Use multiple triggers for layered audio zones (ambient vs localized sound).

4. **Movement Sound**
   - Position the `AudioSource` near the player's feet for realistic spatial sound.
   - Tune `speedThreshold` carefully to avoid triggering sound at unintended small movements.
   - Fade-in and fade-out speeds should feel natural in VR to avoid jarring audio.

---

#### **Common Bugs**

1. **Scene Dropdown Not Populated**
   - Cause: Scenes not added in Build Settings or incorrect hard-coded mapping.
   - Solution: Add scenes to Build Settings and update `SceneDropdownHandler` mappings.

2. **Sky Profile Not Changing**
   - Cause: Target Volume not assigned or profile index mismatch.
   - Solution: Assign the correct Volume and ensure `GlobalSettings` contains valid sky profiles.

3. **Audio Not Playing**
   - Cause: `AudioSource` not assigned or `AudioManager` not initialized.
   - Solution: Add an `AudioSource` and verify `AudioManager` singleton exists in scene.

4. **Multiple AudioSources Overlap**
   - Cause: Multiple triggers playing the same sound.
   - Solution: Use layering and distance attenuation to avoid overlapping audio.

5. **Movement Sound Issues**
   - Cause: Speed threshold too low or high; AudioSource not attached properly.
   - Solution: Check `speedThreshold`, ensure AudioSource is a child of the XR rig, and verify the clip is assigned.


---

### 3.4 UI and Global Management

The UI and Global Management system handles **experiment flow, participant management, logging, and global settings**. It ensures that participants progress through the experiment in the correct order, stimuli are applied consistently, and user input is recorded accurately.

---

#### **Core Components**

1. **ExperimentManager**
   - Manages the overall experiment flow:
     - Scene loading in a predefined order (`sceneOrder`).
     - Condition assignment using `ConditionAssigner` and `StimuliCondition`.
     - Logging participant position/rotation via `Logger`.
     - Questionnaires and responses (through `QuestionnaireUI`).
   - Controls XR rig movement and menu states during experiments.
   - Supports async scene transitions and timed experiment sessions.

2. **ConditionAssigner**
   - Determines which **stimuli condition** a participant receives based on:
     - `participantID`
     - Scene index
   - Rotates conditions across scenes to balance exposure.
   - Conditions include: `None`, `AudioOnly`, `OlfactoryOnly`, `Both`.

3. **ExperimentMenu**
   - UI menu for selecting **participant ID** and starting the experiment.
   - Retrieves the selected ID and triggers `ExperimentManager.RunExperiment()`.
   - Initializes button listeners and dropdown UI.

4. **MenuController**
   - In-game menu for players and experimenters.
   - Features:
     - Toggle menu visibility (keyboard or VR menu button).
     - Change scenes via `SceneDropdownHandler`.
     - Adjust sky profile via `SkyDropdownHandler`.
     - Adjust audio volume via `AudioSliderHandler`.
     - Continue / Exit actions.
   - Handles enabling/disabling XR rig movement when the menu is active.
   - Ensures olfactory devices are disabled before scene transitions.

5. **Logger**
   - Records XR rig **position and rotation per frame**.
   - Saves data to CSV files named per participant, scene, and condition.
   - Can throttle logging frequency using `logInterval`.
   - Automatically persists across scenes.

6. **GlobalSettings**
   - Singleton storing **global state**:
     - Audio volume (`audioStrength`).
     - Current scene (`currentSceneName`).
     - Sky profiles (`skyProfiles`) and selected index.
     - Participant info (`participantID`) and active stimuli flags (`useAudio`, `useOlfactory`).
   - Applies selected sky profile to the assigned `Volume`.
   - Persists across scenes to maintain experiment consistency.

7. **InputDebugLogger**
   - Logs **VR controller and keyboard inputs** for debugging.
   - Supports XR input actions (e.g., right-hand select, menu button).
   - Can log keyboard keys like `J` for testing outside VR.

8. **QuestionnaireUI**
   - Handles participant questionnaires (e.g., German IPQ items).
   - Supports multiple questions with TMP dropdowns.
   - Singleton pattern allows global access.
   - Captures responses via `Submit()` and invokes a callback.
   - Currently assumes exactly 14 questions with preconfigured anchors.

---

#### **Workflow**

1. **Experiment Initialization**
   - `ExperimentManager` persists across scenes using `DontDestroyOnLoad`.
   - On start, menu visibility is configured based on `isExperimentActive`.
   - Components like `Logger`, `AudioManager`, `OlfactoryManager`, and `QuestionnaireUI` are initialized.

2. **Starting an Experiment**
   - Participant ID selected via `ExperimentMenu`.
   - `RunExperiment(participantID)` iterates through the `sceneOrder`.
   - For each scene:
     - `ConditionAssigner` determines stimuli condition.
     - `ApplyCondition()` sets audio and olfactory states.
     - XR rig is placed at scene-specific start position.
     - Logging begins via `Logger`.
     - Experiment duration is tracked using `Task.Delay`.
     - Logging stops after the scene duration.
     - Questionnaire can optionally be presented at the end.

3. **In-Game Menu**
   - `MenuController` toggles menu visibility and XR movement.
   - Scene and sky selections are applied immediately.
   - Audio volume is updated via `AudioManager`.
   - Exit disables olfactory pumps and closes serial connections if needed.

4. **Logging and Input Debugging**
   - `Logger` captures timestamped position/rotation data per frame.
   - `InputDebugLogger` monitors VR controller and keyboard inputs for testing.

---

#### **Setup Instructions**

1. **ExperimentManager**
   - Add to a persistent GameObject named `"ExperimentManager"`.
   - Ensure `ExperimentMenu` and `PlayerMenu` are assigned.
   - Configure `sceneOrder` and experiment duration.
   - Assign `EventSystem` and ensure XR rig components (`CharacterController`, `MoveProvider`, `TurnProvider`) exist.

2. **ExperimentMenu**
   - Assign start button and participant dropdown.
   - Ensure `ExperimentManager` exists in the scene.

3. **MenuController**
   - Assign UI elements: `sceneDropdown`, `skyDropdown`, `audioSlider`, `menuPanel`, `playerMenu`.
   - Assign `AudioManager` and `Volume` for sky profile.
   - Optional: Assign VR menu button via `InputActionReference`.

4. **Logger**
   - No configuration needed beyond adding the script to a persistent GameObject.
   - Verify write permissions to `Application.persistentDataPath`.

5. **GlobalSettings**
   - Assign sky profiles and global `Volume`.
   - Configure default audio strength and participant ID.

6. **InputDebugLogger**
   - Assign XR input actions for debugging purposes.
   - Optional: add keyboard keys for testing outside VR.

7. **QuestionnaireUI**
   - Assign TMP dropdowns and submit button.
   - Ensure the number of dropdowns matches the number of questions.
   - Optionally set anchors and question texts in the inspector.

---

#### **Best Practices**

- **Experiment Flow**
  - Always use `RunExperiment()` for consistent condition assignment and logging.
  - Avoid manual scene loading during an active experiment to prevent mismatched stimuli.

- **Menus**
  - Disable XR rig movement when menus are active.
  - Ensure dropdown indices match scene/sky profile arrays.

- **Logging**
  - Use consistent participant IDs to maintain file naming conventions.
  - Consider increasing `logInterval` if performance issues occur.

- **Global Settings**
  - Always use `GlobalSettings.Instance` for cross-scene data.
  - Update audio and sky changes via handlers for real-time application.

- **Questionnaires**
  - Make sure the number of dropdowns matches questions to avoid null references.
  - Use the singleton pattern to show questionnaires from any scene.

- **Input Debugging**
  - Log input only in development builds to avoid unnecessary console spam in production.

---

#### **Common Bugs**

1. **Missing XR Rig Components**
   - Cause: `CharacterController` or movement providers not assigned.
   - Fix: Ensure these components exist on the XR rig parent object.

2. **Scene Misalignment**
   - Cause: Scene name mismatch in `sceneOrder` or dropdown mapping.
   - Fix: Verify names and mappings in `SceneDropdownHandler`.

3. **Logging Issues**
   - Cause: File write permissions or missing XR rig in scene.
   - Fix: Ensure `XRRig` is tagged correctly and `Application.persistentDataPath` is writable.

4. **Menu Input Not Working**
   - Cause: VR menu button not assigned or input action disabled.
   - Fix: Assign `InputActionReference` and enable in `MenuController.OnEnable()`.

5. **Questionnaire Misconfiguration**
   - Cause: Mismatch between dropdowns and questions/anchors.
   - Fix: Verify number of TMP dropdowns matches the hard-coded questions array.

---

## 4. Unity Project Setup

1. **Install Unity 2022.3.61f (LTS)**  
   - Ensure Input System and TextMeshPro are enabled.

2. **Install SteamVR Plugin**  
   - Via Package Manager or Asset Store.

3. **Build Settings**
   - Add all experiment and environment scenes.
   - Add all scenes to the Build, scene order should match `SceneDropdownHandler` mappings.

---

## 5. Olfactory Setup

### Arduino Device
- Upload the pump control firmware.
- Connect via USB.
- Verify COM port availability.

### Unity Connection
- `OlfactoryManager` automatically scans available COM ports.
- Triggers (`zoneScentTrigger` / `ScentTrigger`) activate scents in scene areas.

---

## 6. VR Interaction Setup

- **Locomotion**: Choose one locomotion script per XR Rig.  
  *(Note: The current setup does not include movement sound.)*

- **Environment Triggers**: Add `ProximityAudio` or scent triggers to scene areas.

- **UI**: Place `QuestionnaireUI` prefab for presence questionnaires; attach `SceneDropdownHandler` and `SkyDropdownHandler` to menu UI.

- **SteamVR Setup**:
  1. Install **SteamVR** from the Unity Asset Store.
  2. Open the **SteamVR Input window** (`Window → SteamVR Input`).
  3. Create a **new Input Actions map** for your project (if one does not exist).
  4. Assign the required actions (e.g., teleport, grab, menu button) in the action map.
  5. **Generate SteamVR input bindings** so that controllers are mapped correctly to the actions.
  6. Make sure your XR Rig references the SteamVR Input Actions for VR interactions.

---

## 7. TemplateScene and Scene Loading

- **TemplateScene** contains:
  - Persistent cameras
  - XR Rig prefab
  - Audio listener
  - Global managers (`GlobalSettings`, `AppRoot`, `AudioManager`)
  
- All other scenes are loaded asynchronously on top of TemplateScene, so the experiment hhas to be started in the TemplateScene, as no other scene has any VR nor Camera integration.
- `isExperimentActive` boolean in the Inspector of teh `ExperimentManager` determines experiment vs. demo mode, so it also controlls the type of menu that is shown.

---

## 8. Developer Guidelines

### Adding a new scene
1. Add the scene to **Build Settings**.
2. Update `SceneDropdownHandler` with a user-friendly display name.
3. Place triggers for:
   - `ProximityAudio`
   - `zoneScentTrigger` or `ScentTrigger` for olfactory zones
   - `SkyDropdownHandler` for environment sky profiles
4. **Important**: Do **not** add any Camera or XR Rig objects in the scene hierarchy. Use TemplateScene to host persistent objects.

### Adding a new scent
1. Connect the pump to Arduino and note its ID.
2. Add a `zoneScentTrigger` referencing that pump ID.
3. Adjust frequency zones (Zone 1 = far / low, Zone 2 = medium, Zone 3 = close / high).
4. Test with the Arduino connected or in simulation mode if unavailable.

### Adding a new locomotion method
1. Create a script to move the XR Rig.
2. Respect menu visibility and terrain alignment.
3. Ensure proper integration with:
   - Unity Input System (`XRRigDpadMover`)
   - SteamVR Input (`SteamVRDpadMovement`)  
     - Create a **SteamVR Input Actions Map**.
     - Add required actions (e.g., `moveUp`, `moveDown`, `grab`, `menuButton`).
     - Generate SteamVR input bindings for controller mapping.
4. Test in both VR and desktop (fallback) modes.

### Debugging Arduino
- Check Unity Console for connection and frequency logs.
- Use Arduino Serial Monitor to confirm pump responsiveness.
- Confirm COM port assignment and ensure no other programs are using the serial port.
- Restart Unity if the Arduino was reconnected after a failed attempt.

---

## 9. Class Connections Overview

- **Olfactory**
  - `zoneScentTrigger` / `ScentTrigger` → `OlfactoryManager` → Arduino pumps
- **Locomotion**
  - `XRRigDpadMover` (Unity Input System)
  - `SteamVRDpadMovement` (SteamVR Input Actions)
  - `SimpleMovement` (Desktop fallback)
  - → XR Rig movement
- **Audio & Environment**
  - `ProximityAudio` → AudioSource control
  - `SkyDropdownHandler` → HDRP Volume sky settings
  - `SceneDropdownHandler` → Scene loading (`SceneManager.LoadSceneAsync`)
- **UI & Experiment**
  - `QuestionnaireUI` → TMP Dropdown UI
  - `AppRoot` → Persistent global state
  - `isExperimentActive` → Toggles experiment/demo menus
- **Scene Persistence**
  - TemplateScene → Hosts persistent XR Rig, cameras, and global managers

---

## 10. Notes

- **Always start from TemplateScene**.
  - TemplateScene contains:
    - XR Rig prefab
    - Persistent cameras
    - Audio listener
    - Global managers (`GlobalSettings`, `AppRoot`, `AudioManager`, `OlfactoryManager`)
- **Additive scene loading** depends on TemplateScene for XR Rig, audio, and olfactory hardware persistence.
- **Experiment vs. demo mode**
  - Controlled by `isExperimentActive` in `ExperimentManager`.
  - Determines which menus and UI are visible.
- **SteamVR Integration**
  - Ensure SteamVR plugin is installed.
  - Input Actions Map must be created, with required actions bound.
  - Generate input bindings for the controllers.
  - XR Rig movement scripts must reference the appropriate SteamVR Input Actions.
- **Global Managers**
  - `GlobalSettings` and `AudioManager` singletons must always be present in TemplateScene.
  - Maintain persistent state across additive scene loads.
