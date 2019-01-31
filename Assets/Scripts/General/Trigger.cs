using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

//CHANGES -- 
//made it so that the roomTriggers are big cubes and you just need to OnTriggerStay for a bit, then we load the other room to be something else
public class Trigger : MonoBehaviour
{
    GameObject player;
    FirstPersonController fpc;

    public GameObject doorWallObj;
    HouseManager houseManager;
    public bool newRoom = false;
    public int roomIndex;

    //this is mainly for my porch madness but it could be used by others to get placement correct
    public bool needsToBeRotated;
    public GameObject hostRoom;

    //switchTimer gets reset and counts down, timeToSwitch is total
    public float switchTimer, timeToSwitch = 1f;

    //for audio mixin 
    public bool hasAudioMix;
    public AudioMixer generalMixer;
    public AudioMixerSnapshot mySceneSnap;
    public AudioMixerSnapshot originalSnap;
    public AudioMixerGroup mySceneGroup;

    //for random ambience
    public bool randomAmbience;
    public AmbienceType ambienceType;
    int ambienceNum;
    
    //randomizes footsteps through fpc function
    public bool randomFootsteps;
    //if you have new footstep sounds to be set publicly
    public bool newFootsteps;
    public AudioClip[] myFootsteps;

    public enum AmbienceType
    {
        ALL, PIANO, DRONES,
    }

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        fpc = player.GetComponent<FirstPersonController>();

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

        //only if randomAmbience checked
        if (randomAmbience)
        {
            //selects ambience
            if (ambienceType == AmbienceType.ALL)
            {
                ambienceNum = 0;
            }
            else if (ambienceType == AmbienceType.PIANO)
            {
                ambienceNum = 1;
            }
            else if (ambienceType == AmbienceType.DRONES)
            {
                ambienceNum = 2;
            }
        }
       
        //originalSnap = generalMixer.FindSnapshot("General");
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            fpc.PlayLevelTransitionSound();
            if (randomAmbience)
                fpc.RandomizeAmbience(ambienceNum);
            if (newFootsteps)
            {
                fpc.currentFootsteps = myFootsteps;
            }
            if (randomFootsteps)
                fpc.RandomizeFoosteps();

            if (hasAudioMix)
            {
                mySceneSnap.TransitionTo(1f);
            }
           
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

    private void OnTriggerExit(Collider other)
    {
        if (hasAudioMix)
        {
            originalSnap.TransitionTo(1f);
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
