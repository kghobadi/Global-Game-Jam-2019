using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class doorSize : MonoBehaviour
{
    public List<GameObject> pieces;
    public Transform player;
    // Start is called before the first frame update
    void Start()
    {   for (int i = 0; i < transform.childCount; i++)
        {
            pieces.Add(transform.GetChild(i).gameObject);
        }
        player = GameObject.Find("Player").transform;
    }

    // Update is called once per frame
    void Update()
    {

        transform.LookAt(player.position);
    }

    private void OnMouseOver()
    {
        for (int i = 0; i < pieces.Count; i++)
        {
            pieces[i].GetComponent<Renderer>().material.SetFloat("_OffsetVar", Random.Range(-5f, 5f));
        }
    }

    private void OnMouseExit()
    {
            for (int i = 0; i < pieces.Count; i++)
            {
                pieces[i].GetComponent<Renderer>().material.SetFloat("_OffsetVar", 0);
            }
    }
}
