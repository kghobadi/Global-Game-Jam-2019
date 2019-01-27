using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//THIS IS MARIE KONDO

public class HouseManager : MonoBehaviour
{
    public List<GameObject> rooms = new List<GameObject>();//NOT PREFABS!



    public Vector3 pos1, pos2;

    public int roomIndex;

    void Awake()
    {
        Shuffle();
        roomIndex = -1;
    }

    public void Shuffle()
    {
        for (int i = 0; i < rooms.Count; i++)
        {
            int rnd = Random.Range(0, rooms.Count);
            GameObject temp = rooms[rnd];
            rooms[rnd] = rooms[i];
            rooms[i] = temp;
            rooms[i].transform.GetChild(0).GetComponent<MeshRenderer>().material.color = Random.ColorHSV();
        }

        for (int i = 0; i < rooms.Count; i++)
        {
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
        //rooms[1].SetActive(true);
    }



    public void loadNewRoom()
    {
        roomIndex++;
        rooms[roomIndex + 1].SetActive(true);
        if (roomIndex != 0)
        {
            rooms[roomIndex - 1].SetActive(false);
        }
        Debug.Log("loaded new");
    }
    public void loadOldRoom()
    {
        //if (roomIndex > 1)
        //{
        if (roomIndex != 0)
            rooms[roomIndex - 1].SetActive(true);
        rooms[roomIndex + 1].SetActive(false);
        roomIndex--;
        Debug.Log("loaded old");
        //}

    }



}
