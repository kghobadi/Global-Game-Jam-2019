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

    //this is mainly for my porch madness but it could be used by others to get placement correct
    public bool needsToBeRotated;
    public GameObject hostRoom;

    //int colliderBool = 0;

    //public float playerEnterPosition, playerExitPosition;

    //switchTimer gets reset and counts down, timeToSwitch is total
    public float switchTimer, timeToSwitch = 1f;


    void Start()
    {
        newRoom = false;
        switchTimer = timeToSwitch;
        
        houseManager = GameObject.Find("houseMan").GetComponent<HouseManager>();
        doorWallObj = GameObject.FindGameObjectWithTag("DoorWall");

        //rotates and sets position after houseMan
        if (needsToBeRotated )
        {
            hostRoom.transform.localEulerAngles = new Vector3(0, 180, 0);
            hostRoom.transform.localPosition = new Vector3(hostRoom.transform.localPosition.x, 2, -20);
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            switchTimer -= Time.deltaTime;
            if (switchTimer < 0 && !newRoom && !doorWallObj.GetComponent<MeshRenderer>().isVisible)
            {
                houseManager.loadNewRoom(roomIndex);
                newRoom = true;
            }
        }
    }

    void OnEnable()
    {
        newRoom = false;
        switchTimer = timeToSwitch;
    }

    void OnDisable()
    {
        newRoom = false;
        switchTimer = timeToSwitch;
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
