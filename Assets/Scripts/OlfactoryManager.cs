using UnityEngine;
using System.IO.Ports;
using System.Data;
using System.Collections.Generic;

public class OlfactoryManager : MonoBehaviour
{

    private SerialPort serialPort;
    public string portName = "COM16";
    public int baudRate = 9600;
    private bool usingOlfactory = false;
    Stack<int>  frequencies = new Stack<int>();

    public static OlfactoryManager Instance { get; private set; }
    void Awake()
    {
        Debug.Log("Making connection to arduino");
        try
        {
            serialPort = new SerialPort(portName, baudRate);
            serialPort.Open();
            serialPort.DtrEnable = true;  
            Debug.Log("Serial port opened on " + portName);
            usingOlfactory = true;

            if (Instance != null && Instance != this)
            {
                Destroy(gameObject);
                return;
            }

            Instance = this;
        }
        catch (System.Exception e)
        {
            Debug.LogError("Failed to open serial port: " + e.Message);
        }
        
    }

    public void StartScent(string scentType, int frequency)
    {
        if (usingOlfactory)
        {   
            string command = "setAPump:"+scentType;
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
        public void PushFrequency(int frequency)
    {
        frequencies.Push(frequency);
    }

    public void ReturnToPreviousFrequency()
    {
        int f = frequencies.Pop();
        SetFrequency(f);
    }
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

    private void SendToArduino(string message)
    {
        if (serialPort != null && serialPort.IsOpen)
        {
            serialPort.WriteLine(message);
        }
    }
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
void OnApplicationQuit()
{
    DisableAllPumps(); // Disable all pumps before closing

    if (serialPort != null && serialPort.IsOpen)
    {
        serialPort.Close();
        Debug.Log("Serial port closed.");
    }
}
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
