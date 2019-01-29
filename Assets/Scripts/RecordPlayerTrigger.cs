using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class RecordPlayerTrigger : MonoBehaviour
{
    private bool isTriggered;
    public UnityEvent callbackFn;

    public UnityEvent ExitCallback;


    void OnTriggerStay(Collider other)
    {
        if (!isTriggered && other.gameObject.tag == "Player")
        {
            callbackFn.Invoke();
            isTriggered = true;
            other.transform.GetChild(0).GetComponent<Camera>().clearFlags = CameraClearFlags.Color;



        }



    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            ExitCallback.Invoke();
            other.transform.GetChild(0).GetComponent<Camera>().clearFlags = CameraClearFlags.Skybox;

        }
    }
}
