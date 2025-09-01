using UnityEngine;
using System.IO.Ports;
using System.Data;

public class OlfactoryManager : MonoBehaviour
{

    private SerialPort serialPort;
    public string portName = "COM16";
    public int baudRate = 9600;
    private bool usingOlfactory = false;

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

    void OnApplicationQuit()
    {
        if (serialPort != null && serialPort.IsOpen)
        {
            serialPort.Close();
            Debug.Log("Serial port closed.");
        }
    }


}
