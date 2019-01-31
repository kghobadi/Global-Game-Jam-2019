using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Grabber : MonoBehaviour
{

    public Transform target;
    private Vector3 startingPos;
    public Animator animator;

    private bool isWaiting = false;

    private bool reset = false;


    // Start is called before the first frame update
    void Start()
    {
        
    }


    public IEnumerator wait()
    {
        startingPos = target.transform.position;
        isWaiting = true;
        print("Waiting...");
        yield return new WaitForSeconds(3f);
        print("waiting done...");

        animator.Play("Handshake");

        while (animator.GetCurrentAnimatorStateInfo(0).IsName("Handshake"))
        {
            print("yerp");
            target.transform.position = this.transform.position;
            target.GetComponent<FirstPersonController>().isGrabbed = true;

        }
        animator.Play("Pose_Stand3");
        target.transform.position = startingPos;
        print("we hit this shit bitch");
        target.GetComponent<FirstPersonController>().isGrabbed = false;
        isWaiting = false;





    }







    // Update is called once per frame
    void Update()
    {
        if (!isWaiting)
        {
            StartCoroutine(wait());
        }



        //if (animator.GetBool("isGrabbing"))
        //{
        //    if (!grabbed)
        //    {
        //        startingPos = target.transform.position;
        //        target.SetParent(this.transform);
        //        target.transform.position = Vector3.zero;
        //        grabbed = true;

        //    }

        //}
        //else
        //{
        //    target.SetParent(null);
        //}
        //StartCoroutine(Grab());

    }
}
