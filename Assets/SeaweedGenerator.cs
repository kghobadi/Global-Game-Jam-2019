using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SeaweedGenerator : MonoBehaviour
{
    // Start is called before the first frame update
    public GameObject[] SeaweedPrefab;


    void Start()
    {
        StartCoroutine(PopulateSeaweed());
    }


    public IEnumerator PopulateSeaweed()
    {
        for (int i = 0; i < 50; i++)
        {
            GameObject go = Instantiate(SeaweedPrefab[Random.Range(0, SeaweedPrefab.Length)], this.transform);

            go.transform.localPosition = new Vector3(Random.Range(-9f, 9f), 0f, Random.Range(-9f, 9f));


        }
        yield return null;



    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
