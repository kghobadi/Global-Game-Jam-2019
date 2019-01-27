using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FootstepTrigger : MonoBehaviour
{
    public bool playerInside = true;

    void OnTriggerExit(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            if (playerInside)
            {
                other.gameObject.GetComponent<FirstPersonController>().currentFootsteps = other.gameObject.GetComponent<FirstPersonController>().outsideFootsteps;
               
            }
            else
            {
                other.gameObject.GetComponent<FirstPersonController>().currentFootsteps = other.gameObject.GetComponent<FirstPersonController>().indoorFootsteps;
            }
            playerInside = !playerInside;
        }
    }
}
