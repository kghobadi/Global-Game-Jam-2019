﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class billBoard : MonoBehaviour
{
    public Transform player;
    // Start is called before the first frame update
    void Start()
    {player = GameObject.Find("Player").transform;
        
    }

    // Update is called once per frame
    void Update()
    {
        transform.LookAt(player.position);
    }
}
