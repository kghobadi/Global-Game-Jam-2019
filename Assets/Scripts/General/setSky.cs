using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class setSky : MonoBehaviour
{
    //for changing skybox material
    public Material sky;
    Material originalSky;
    
    //for changing doorwall material
    public bool hasDoorMat;
    GameObject doorwall;
    public Material newWall;
    Material originalWall;

    //objects we need to turn on or off
    public GameObject[] stuffToTurnOnAndOff;

    void Start()
    {
        //grab original sky
        originalSky = RenderSettings.skybox;

        //get door and original mat
        if (hasDoorMat)
        {
            doorwall = GameObject.FindGameObjectWithTag("DoorWall");
            originalWall = doorwall.GetComponent<MeshRenderer>().material;
        }
        
        //start with objects off
        for (int i = 0; i < stuffToTurnOnAndOff.Length; i++)
        {
            stuffToTurnOnAndOff[i].SetActive(false);
        }
    }
   
    //while in trigger, keep this stuff on
    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            RenderSettings.skybox = sky;
            if(hasDoorMat)
                doorwall.GetComponent<MeshRenderer>().material = newWall;

            for (int i = 0; i < stuffToTurnOnAndOff.Length; i++)
            {
                stuffToTurnOnAndOff[i].SetActive(true);
            }
        }
    }

    //when player leaves, set back to before
    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            RenderSettings.skybox = originalSky;
            if (hasDoorMat)
                doorwall.GetComponent<MeshRenderer>().material = originalWall;
            for (int i = 0; i < stuffToTurnOnAndOff.Length; i++)
            {
                stuffToTurnOnAndOff[i].SetActive(false);
            }
        }
    }

}
