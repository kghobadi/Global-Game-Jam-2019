using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Trigger : MonoBehaviour
{

    HouseManager houseManager;
    public bool newRoom = true;

    int colliderBool = 0;

    public float playerEnterPosition, playerExitPosition;


    void Start()
    {
        newRoom = true;
        houseManager = GameObject.Find("houseMan").GetComponent<HouseManager>();
    }

    // Update is called once per frame


    private void Update()
    {

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerEnterPosition = transform.InverseTransformPoint(other.transform.position).y - transform.localPosition.x;// transform.InverseTransformPoint(other.transform.position).x;

            if (playerEnterPosition < transform.localPosition.x)
                newRoom = true;
            else
                newRoom = false;
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerExitPosition = transform.InverseTransformPoint(other.transform.position).y - transform.localPosition.x;
            if (newRoom)
            {
                if (playerEnterPosition < playerExitPosition)//(transform.InverseTransformPoint(other.transform.position).x > playerEnterPosition)
                {
                    houseManager.loadNewRoom();
                }
            }
            else
            {
                if (playerEnterPosition > playerExitPosition)//(transform.InverseTransformPoint(other.transform.position).x < playerEnterPosition)
                {
                    houseManager.loadOldRoom();
                }
            }


        }
    }

    //private void OnEnable()
    //{
    //    
    //}

}
