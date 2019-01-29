using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpeakGarbled : MonoBehaviour
{
    // Start is called before the first frame update
    public AudioClip[] garbledvoices;
    public AudioSource aS;

    public GameObject[] textObjects;


    public float timer = 0;
    public bool isSpeaking = false;

    public GameObject currTextObject;

    const string glyphs = "xyz@!%$*&#~`"; //add the characters you want




    void Start()
    {
        aS = this.GetComponent<AudioSource>();
    }

    public void pickRandomTextObject()
    {
        currTextObject = textObjects[Random.Range(0, textObjects.Length)];
        int charAmount = Random.Range(4, 9);
        for (int i = 0; i < charAmount; i++)
        {
            currTextObject.GetComponent<TextMesh>().text += glyphs[Random.Range(0, glyphs.Length)];

        }

    }



    public void PickRandomClip()
    {
        int index = Random.Range(0, garbledvoices.Length);
        aS.clip = garbledvoices[index];


    }

    // Update is called once per frame
    void Update()
    {
        if (isSpeaking)
        {
            if (timer > 3f)
            {
                PickRandomClip();
                aS.Play();
                timer = 0f;
                pickRandomTextObject(); 
                currTextObject.SetActive(true);
                currTextObject.GetComponent<TextMesh>().color = new Color(1, 1, 1, 1);

            }

            if (!aS.isPlaying)
            {
                timer += Time.deltaTime;
                if (currTextObject != null)
                {
                    currTextObject.GetComponent<TextMesh>().color = Color.Lerp(currTextObject.GetComponent<TextMesh>().color, Color.clear, Time.deltaTime * 2f);
                    if (currTextObject.GetComponent<TextMesh>().color.a < 0.1f)
                    {
                        currTextObject.SetActive(false);
                    }

                }




            }
        }
        else if (!isSpeaking && currTextObject!=null)
        {
            aS.Stop();
            currTextObject.SetActive(false);
        }





    }



    public void SetSpeaking(bool Speaking)
    {
        isSpeaking = Speaking;
    }
}
