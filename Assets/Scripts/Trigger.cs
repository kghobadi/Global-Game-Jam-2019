using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Trigger : MonoBehaviour {

    HouseManager houseManager;
    public bool newRoom = true;

    void Start()
    {
        newRoom = true;
        houseManager = GameObject.Find("houseMan").GetComponent<HouseManager>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            if (newRoom)
                houseManager.loadNewRoom();
            else
                houseManager.loadOldRoom();
            //unload previous room
            //load next room 

            newRoom = !newRoom;
        }
    }

    //private void OnTriggerExit(Collider other)
    //{
    //    if (other.gameObject.tag == "Player")
    //    {
    //        other.
    //    }
    //}
}
