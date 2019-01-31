using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//THIS IS MARIE KONDO

public class HouseManager : MonoBehaviour
{
    public List<GameObject> rooms = new List<GameObject>();//NOT PREFABS!
    public Vector3 pos1, pos2;

    void Awake()
    {
        Shuffle();
        //roomIndex = -1;
    }

    public void Shuffle()
    {
        for (int i = 0; i < rooms.Count; i++)
        {
            int rnd = Random.Range(0, rooms.Count);
            GameObject temp = rooms[rnd];
            rooms[rnd] = rooms[i];
            rooms[i] = temp;
            //rooms[i].transform.GetChild(0).GetComponent<MeshRenderer>().material.color = Random.ColorHSV();
        }

        for (int i = 0; i < rooms.Count; i++)
        {
            rooms[i].GetComponentInChildren<Trigger>().roomIndex = i;
            if (i % 2 == 0)
            {
                rooms[i].transform.position = pos1;

            }
            else
            {
                rooms[i].transform.position = pos2;
                rooms[i].transform.eulerAngles += new Vector3(0, 180, 0);
            }
        }
        rooms[0].SetActive(true);
        rooms[1].SetActive(true);
    }

    public void loadNewRoom(int roomIndex)
    {
        //low end loop
        if(roomIndex == 0)
        {
            rooms[rooms.Count - 1].SetActive(false);
            rooms[1].SetActive(true);
        }
        //constant increment upward
        else if(roomIndex < rooms.Count - 1 && roomIndex != 0)
        {
            rooms[roomIndex - 1].SetActive(false);
            rooms[roomIndex + 1].SetActive(true);
        }
        //top end loop
        else if(roomIndex == (rooms.Count - 1))
        {
            rooms[roomIndex - 1].SetActive(false);
            rooms[0].SetActive(true);
        }
        

        Debug.Log("loaded new");
    }
    //public void loadOldRoom()
    //{
    //    //if (roomIndex != 0)
    //    rooms[(roomIndex - 1) % rooms.Count].SetActive(true);
    //    rooms[(roomIndex + 1) % rooms.Count].SetActive(false);
    //    roomIndex--;
    //    Debug.Log("loaded old");
    //}
}
