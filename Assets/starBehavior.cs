using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class starBehavior : MonoBehaviour
{
    public Transform reticle;
    public float strength;
    public Transform mainCam;
    float sizeAffected = 20;
    Vector3 originalPos;
    // Start is called before the first frame update
    void Start()
    {
        mainCam = Camera.main.transform;
        originalPos = transform.localPosition;
    }


    // Update is called once per frame
    void FixedUpdate()
    {
        if (reticle != false)
        {
            float d = Vector3.Distance(transform.position, reticle.position);
            if (d < sizeAffected)
            {
                transform.position += (reticle.position - transform.position).normalized * strength * (sizeAffected - d);
                //Vector3.Lerp(transform.localPosition, originalPos, 0.1f);
            }
            else
            {
                transform.localPosition = Vector3.Lerp(transform.localPosition, originalPos, 0.01f);
            }
        }
        else
        {
            if (mainCam.childCount > 0)
                reticle = mainCam.GetChild(0).transform;
        }

        transform.LookAt(mainCam);
    }

}
