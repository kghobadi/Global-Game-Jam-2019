using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class triggerActivateStuff : MonoBehaviour
{
    public GameObject fakeSkyBox;
    public starManager sm;

    // Start is called before the first frame update
    void Start()
    {
        fakeSkyBox.SetActive(false);
        sm.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {

    }

    void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            fakeSkyBox.SetActive(true);
            sm.enabled = true;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            fakeSkyBox.SetActive(false);
            sm.enabled = false;
        }
    }
}
