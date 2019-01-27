using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class starManager : MonoBehaviour
{
    public GameObject star, starReticle;
    Transform mainCam;
    List<Transform> stars = new List<Transform>();

    GameObject reticle;



    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < 750; i++)
        {
            Vector3 randPos = Random.onUnitSphere * 100;
            if (randPos.z > -85)
            {

                GameObject g = Instantiate(star);
                g.transform.parent = transform;
                g.transform.localPosition = randPos;
                g.transform.LookAt(transform.position);
                float starSize = Random.Range(0.2f, 1.5f);
                g.transform.localScale = Vector3.one * starSize;
                g.GetComponent<TrailRenderer>().widthMultiplier = starSize;
                stars.Add(g.transform);
            }
            else
                i--;
        }

        mainCam = Camera.main.transform;

        reticle = Instantiate(starReticle);
        reticle.transform.parent = mainCam;
        reticle.transform.localPosition = new Vector3(0, 0, 100);
        reticle.transform.LookAt(mainCam.position);
    }

    void FixedUpdate()
    {

    }

    private void OnEnable()
    {
        if (reticle != null)
            reticle.SetActive(true);
    }

    private void OnDisable()
    {
        if (reticle != null)
            reticle.SetActive(false);
    }

}
