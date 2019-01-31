using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockingChair : Interactable
{
    public bool jackAlive;
    public bool playerSitting = false;
    public float sittingTimer, sittingTimeMin = 1f;

    public GameObject jack;

    void Start()
    {
        jackAlive = true;
    }
    
    void Update()
    {
        //we never REALLY know if jack is a l i v e OR d e a d
        if (jack.activeSelf)
        {
            jackAlive = true;
        }
        else
        {
            jackAlive = false;
        }

        if (playerSitting)
        {
            fpc.canMove = false;
            Vector3 chairPos = new Vector3(transform.position.x, transform.position.y + 3, transform.position.z);
            
            fpc.transform.position = Vector3.Lerp(fpc.transform.position, chairPos, 15 * Time.deltaTime);
            

            sittingTimer -= Time.deltaTime;

            if (Input.GetMouseButtonDown(0) && sittingTimer < 0)
            {
                fpc.canMove = true;
                playerSitting = false;
            }
        }
    }

    public override void Interact()
    {
        base.Interact();

        //if jack is dead
        if (!jackAlive && !playerSitting)
        {
            //set minimum timer
            sittingTimer = sittingTimeMin;
            //rock in his fucking chair
            playerSitting = true;
        }
        
    }
}
