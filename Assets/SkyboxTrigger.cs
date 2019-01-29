using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class SkyboxTrigger : MonoBehaviour
{
    private GameObject player;
    void Start()
    {
         player = GameObject.Find("Player");
    }

    private void OnTriggerStay(Collider other)
    {
        player.transform.GetChild(0).GetComponent<Camera>().clearFlags = CameraClearFlags.Color;
    }

    private void OnTriggerExit(Collider other)
    {
        player.transform.GetChild(0).GetComponent<Camera>().clearFlags = CameraClearFlags.Skybox;

    }
}
