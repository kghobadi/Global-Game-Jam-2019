using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookAtGirl : MonoBehaviour
{
    // Start is called before the first frame update
    public Transform target;

    void Start()
    {
        if (target == null)
        {
            target = GameObject.Find("Player").transform;

        }
    }

    // Update is called once per frame
    void LateUpdate()
    {
        transform.rotation = Quaternion.LookRotation(target.transform.position - transform.position, Vector3.left) * Quaternion.AngleAxis(90, Vector3.right) * Quaternion.AngleAxis(90, Vector3.down);

    }
}
