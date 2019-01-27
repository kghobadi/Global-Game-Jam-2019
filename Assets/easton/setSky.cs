using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class setSky : MonoBehaviour
{
    public Material sky;
    Material originalSky;

    public GameObject[] stuffToTurnOnAndOff;
    // Start is called before the first frame update
    void Start()
    {
        originalSky = RenderSettings.skybox;

        for (int i = 0; i < stuffToTurnOnAndOff.Length; i++)
        {
            stuffToTurnOnAndOff[i].SetActive(false);
        }
    }

    // Update is called once per frame
    void Update()
    {

    }


    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            RenderSettings.skybox = sky;

            for (int i = 0; i < stuffToTurnOnAndOff.Length; i++)
            {
                stuffToTurnOnAndOff[i].SetActive(true);
            }
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            RenderSettings.skybox = originalSky;
            for (int i = 0; i < stuffToTurnOnAndOff.Length; i++)
            {
                stuffToTurnOnAndOff[i].SetActive(false);
            }
        }
    }

}
