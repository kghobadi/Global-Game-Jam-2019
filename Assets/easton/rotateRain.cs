using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class rotateRain : MonoBehaviour
{
    public float direction;
    public float x, z;
    // Start is called before the first frame update
    void Start()
    {
        x = transform.localEulerAngles.x;
        z = transform.localEulerAngles.z;
        direction = Random.Range(-10f, 10f);
    }

    // Update is called once per frame
    void Update()
    {
        transform.Rotate(direction * Vector3.up * Time.deltaTime);
        transform.localEulerAngles = new Vector3(x, transform.localEulerAngles.y, z);
    }
}
