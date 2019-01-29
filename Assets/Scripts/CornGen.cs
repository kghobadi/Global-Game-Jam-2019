using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CornGen : MonoBehaviour
{
    public Transform cornParent;
    public GameObject cornPrefab;
    public float dist;
    public int desiredAmount;
    public List<GameObject> corn = new List<GameObject>();

    public Vector3 finalPos;

    void Start()
    {
        GenerateCorn1();
        GenerateCorn2();
        GenerateCorn3();
        GenerateCorn4();

        cornParent.transform.position = finalPos;
    }

    void GenCorn()
    {
        //check if player or house is in this gridSpot
        bool canGenerate = true;

        Collider[] hitColliders = Physics.OverlapSphere(transform.position, 5);

        for (int h = 0; h < hitColliders.Length; h++)
        {
            if (hitColliders[h].gameObject.tag == "House" || hitColliders[h].gameObject.tag == "Player" || hitColliders[h].gameObject.tag == "Corn")
            {
                canGenerate = false;
            }
        }

        //if no player/house, generate tree
        if (canGenerate)
        {
            //generate random tree type
            GameObject cornClone = Instantiate(cornPrefab, transform.position, Quaternion.identity, cornParent);
            corn.Add(cornClone);
        }
    }

    void GenerateCorn1()
    {

        for (int i = 0, y = 0; y <= desiredAmount - 2; y++)
        {
            for (int x = 0; x <= desiredAmount - 7; x++, i++)
            {
                transform.position = new Vector3(-x * dist, transform.position.y, -y * dist);

                GenCorn();
            }
        }
    }
    void GenerateCorn2()
    {

        for (int i = 0, y = 0; y <= desiredAmount - 18; y++)
        {
            for (int x = 0; x <= desiredAmount - 7; x++, i++)
            {
                transform.position = new Vector3(x * dist, transform.position.y, y * dist);

                GenCorn();
            }
        }
    }
    void GenerateCorn3()
    {

        for (int i = 0, y = 0; y <= desiredAmount - 18; y++)
        {
            for (int x = 0; x <= desiredAmount - 7; x++, i++)
            {
                transform.position = new Vector3(-x * dist, transform.position.y, y * dist);

                GenCorn();
            }
        }
    }
    void GenerateCorn4()
    {

        for (int i = 0, y = 0; y <= desiredAmount - 2; y++)
        {
            for (int x = 0; x <= desiredAmount - 7; x++, i++)
            {
                transform.position = new Vector3(x * dist, transform.position.y, -y * dist);

                GenCorn();
            }
        }
    }
}
