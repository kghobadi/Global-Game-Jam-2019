using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SeaweedGrower : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        int rand = Random.Range(0, 3);
        this.transform.localScale = new Vector3(rand, rand, rand);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
