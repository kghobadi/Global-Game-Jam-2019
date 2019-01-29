using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//CHANGES -- 
//made it so that the roomTriggers are big cubes and you just need to OnTriggerStay for a bit, then we load the other room to be something else
// FORGET ABOUT ALL THIS PLAYER POS BULSHIT
public class Trigger : MonoBehaviour
{
    public GameObject doorWallObj;
    HouseManager houseManager;
    public bool newRoom = false;
    public int roomIndex;

    //int colliderBool = 0;

    //public float playerEnterPosition, playerExitPosition;

    public float timeToSwitch = 3f;


    void Start()
    {
        newRoom = false;
        timeToSwitch = 3f;

        if(roomIndex == 0)
        {
            timeToSwitch = 10;
        }
        houseManager = GameObject.Find("houseMan").GetComponent<HouseManager>();
        doorWallObj = GameObject.FindGameObjectWithTag("DoorWall");
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            timeToSwitch -= Time.deltaTime;
            if (timeToSwitch < 0 && !newRoom && !doorWallObj.GetComponent<MeshRenderer>().isVisible)
            {
                houseManager.loadNewRoom(roomIndex);
                newRoom = true;
            }
        }
    }


    //private void OnTriggerEnter(Collider other)
    //{
    //    if (other.CompareTag("Player"))
    //    {
    //        playerEnterPosition = transform.InverseTransformPoint(other.transform.position).y - transform.localPosition.x;// transform.InverseTransformPoint(other.transform.position).x;
    //        Debug.Log(playerEnterPosition);


    //        if (playerEnterPosition < transform.localPosition.x)
    //            newRoom = true;
    //        else
    //            newRoom = false;

    //        Debug.Log(newRoom);
    //    }
    //}

    //void OnTriggerExit(Collider other)
    //{
    //    if (other.CompareTag("Player"))
    //    {
    //        playerExitPosition = transform.InverseTransformPoint(other.transform.position).y - transform.localPosition.x;
    //        Debug.Log(playerExitPosition);
    //        if (newRoom)
    //        {
    //            if (playerEnterPosition < playerExitPosition)//(transform.InverseTransformPoint(other.transform.position).x > playerEnterPosition)
    //            {
    //                houseManager.loadNewRoom();
    //            }
    //        }
    //        else
    //        {
    //            if (playerEnterPosition > playerExitPosition)//(transform.InverseTransformPoint(other.transform.position).x < playerEnterPosition)
    //            {
    //                houseManager.loadOldRoom();
    //            }
    //        }


    //    }
    //}
    

}
