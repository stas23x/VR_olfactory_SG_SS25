using UnityEngine;
using System.IO.Ports;
using System.Data;
using System.Collections.Generic;
using System.Collections;
using System.Threading;

/// <summary>
/// Manages connection to an olfactory device via serial port and controls scent emission.
/// </summary>
public class OlfactoryManager : MonoBehaviour
{

    private SerialPort serialPort;
    public string portName = "COM16";
    public int baudRate = 9600;
    private bool usingOlfactory = false;
    Stack<int> frequencies = new Stack<int>();
    private bool isConnecting = false;

    /// <summary>
    /// Singleton instance of the OlfactoryManager.
    /// AVoids spawning two instances in the scene.
    /// Accessible via OlfactoryManager.Instance globally.
    /// </summary>
    public static OlfactoryManager Instance { get; private set; }

    /// <summary>
    /// Initializes the OlfactoryManager, attempts to connect to the olfactory device, and sets up the singleton instance.
    /// </summary>
    void Awake()
    {
        Debug.Log("Making connection to arduino");
        string[] availablePorts = SerialPort.GetPortNames();
        Debug.Log("Available COM ports: " + string.Join(", ", availablePorts));

        AutoConnectSerial();
        usingOlfactory = true;

        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }

        Instance = this;
    }

    /// <summary>
    /// Automatically attempts to connect to the olfactory device by iterating through available serial ports.
    /// </summary>
    private void AutoConnectSerial()
    {
        isConnecting = true;
        string[] availablePorts = SerialPort.GetPortNames();

        Debug.Log($"Found {availablePorts.Length} available serial ports");

        foreach (string port in availablePorts)
        {
            Debug.Log($"Trying to connect to {port}...");

            if (TryConnectToPort(port))
            {
                Debug.Log($"Successfully connected to olfactory device on {port}");
                portName = port;
                usingOlfactory = true;
                isConnecting = false;
                break;
            }
        }

        Debug.LogWarning("No olfactory device found on any available COM port");
        isConnecting = false;
    }

    /// <summary>
    /// Attempts to connect to the olfactory device on the specified port.
    /// Sends a test command and waits for a valid response to confirm the connection.
    /// </summary>
    /// <param name="port"></param>
    /// <returns></returns>
    private bool TryConnectToPort(string port)
    {
        try
        {
            // Close existing connection if any
            if (serialPort != null && serialPort.IsOpen)
            {
                serialPort.Close();
            }

            serialPort = new SerialPort(port, baudRate);
            serialPort.ReadTimeout = 2000; // 2 second timeout for reading
            serialPort.WriteTimeout = 2000; // 2 second timeout for writing
            serialPort.Open();
            serialPort.DtrEnable = true;

            // Send test command
            SendToArduino("setAPump:1");

            // Wait for response
            Thread.Sleep(100);

            // Check if there's data available to read
            if (serialPort.BytesToRead > 0)
            {
                string response = serialPort.ReadExisting().Trim();
                Debug.Log($"Received response from {port}: {response}");

                if (response.Contains("Channel"))
                {
                    Debug.Log($"Device initialized successfully on {port}");
                    return true;
                }
            }

            // If we get here, the device didn't respond correctly
            serialPort.Close();
            return false;
        }
        catch (System.Exception e)
        {
            Debug.Log($"Failed to connect to {port}: {e.Message}");

            if (serialPort != null && serialPort.IsOpen)
            {
                try
                {
                    serialPort.Close();
                }
                catch (System.Exception closeEx)
                {
                    Debug.LogError($"Error closing port {port}: {closeEx.Message}");
                }
            }

            return false;
        }
    }

    /// <summary>
    /// Starts emitting a scent of the specified type at the given frequency.
    /// </summary>
    /// <param name="scentType"></param>
    /// <param name="frequency"></param>
    public void StartScent(string scentType, int frequency)
    {
        if (usingOlfactory)
        {
            string command = "setAPump:" + scentType;
            SendToArduino(command);
            command = $"setF:{frequency}";
            SendToArduino(command);
            command = "setStatus:1";
            SendToArduino(command);
            Debug.Log("Activated the olfactory device: Pump" + scentType);
        }
        else
        {
            Debug.Log("Entering olfactory area without arduino");
        }
    }

    /// <summary>
    /// Sets the frequency of scent emission.
    /// </summary>
    /// <param name="frequency"></param>
    public void SetFrequency(int frequency)
    {
        if (usingOlfactory)
        {
            string command = $"setF:{frequency}";
            SendToArduino(command);
            Debug.Log("Changed frequency to " + frequency);
        }
        else
        {
            Debug.Log("Changing frequency without arduino. Freq: " + frequency);
        }
    }

    /// <summary>
    /// Pushes the current frequency onto the stack for later retrieval.
    /// </summary>
    /// <param name="frequency"></param>
    public void PushFrequency(int frequency)
    {
        frequencies.Push(frequency);
    }

    /// <summary>
    /// Returns to the previous frequency by popping it from the stack and setting it.
    /// </summary>
    public void ReturnToPreviousFrequency()
    {
        int f = frequencies.Pop();
        SetFrequency(f);
    }

    /// <summary>
    /// Stops emitting the scent of the specified type.
    /// </summary>
    /// <param name="scentType"></param>
    public void StopScent(string scentType)
    {
        if (usingOlfactory)
        {
            string command = "setStatus:0";
            SendToArduino(command);
            Debug.Log("Pump was stopped");
        }
        else
        {
            Debug.Log("Exiting olfactory area without arduino.");
        }
    }

    /// <summary>
    /// Sends a command message to the Arduino via the serial port.
    /// </summary>
    /// <param name="message"></param>
    private void SendToArduino(string message)
    {
        if (serialPort != null && serialPort.IsOpen)
        {
            serialPort.WriteLine(message);
        }
    }

    /// <summary>
    /// Disables all pumps by sending the appropriate commands to the Arduino.
    /// </summary>
    public void DisableAllPumps()
    {
        if (usingOlfactory && serialPort != null && serialPort.IsOpen)
        {
            Debug.Log("Disabling all pumps...");

            // Send commands to disable all pumps (assuming you have multiple pumps numbered 1-8 or similar)
            // Adjust the range based on your actual pump configuration
            for (int i = 1; i <= 8; i++)
            {
                string command = "setAPump:" + i;
                SendToArduino(command);
                System.Threading.Thread.Sleep(50); // Small delay between commands

                command = "setStatus:0";
                SendToArduino(command);
                System.Threading.Thread.Sleep(50); // Small delay between commands
            }

            Debug.Log("All pumps disabled.");
        }
        else
        {
            Debug.Log("Cannot disable pumps - no olfactory connection available.");
        }
    }

    /// <summary>
    /// Cleans up the serial port connection when the application quits.
    /// </summary>
    void OnApplicationQuit()
    {
        DisableAllPumps(); // Disable all pumps before closing

        if (serialPort != null && serialPort.IsOpen)
        {
            serialPort.Close();
            Debug.Log("Serial port closed.");
        }
    }

    /// <summary>
    /// Cleans up the serial port connection when the object is destroyed.
    /// </summary>
    void OnDestroy()
    {
        // This will be called when the object is destroyed (e.g., scene change)
        DisableAllPumps();

        if (serialPort != null && serialPort.IsOpen)
        {
            serialPort.Close();
            Debug.Log("Serial port closed on destroy.");
        }
    }

}
