using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;


public class JackHereTrigger : MonoBehaviour
{
    public UnityEvent StayCallback;
    public UnityEvent ExitCallback;

    private bool isTriggered = false;
    // Start is called before the first frame update
    void Start()
    {
        
    }


    void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag== "Player" && isTriggered ==false )
        {
            StayCallback.Invoke();
            isTriggered = true;

            other.transform.GetChild(0).GetComponent<Camera>().clearFlags = CameraClearFlags.Color;

        }

    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player" && isTriggered == true)
        {
            ExitCallback.Invoke();
            isTriggered = false;
            other.transform.GetChild(0).GetComponent<Camera>().clearFlags = CameraClearFlags.Skybox;

        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
