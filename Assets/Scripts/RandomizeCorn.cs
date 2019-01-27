using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomizeCorn : MonoBehaviour
{
    GameObject player;

    Vector3 originalSize, largeSize;

    bool lerpingUp, lerpingDown;

    public float lerpSpeed;

    AudioSource cornSource;

    public AudioClip[] breathIn, breathOut;

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");

        float randomScale = Random.Range(0.75f, 1.5f);

        transform.localScale *= randomScale;

        originalSize = transform.localScale;

        largeSize = originalSize * 2;

        float randomRotate = Random.Range(0, 360);

        transform.Rotate(0, randomRotate, 0);

        lerpSpeed = Random.Range(0.5f, 2f);

        cornSource = GetComponent<AudioSource>();

        StartCoroutine(BreatheIn());
    }
    
    void Update()
    {
        if(Vector3.Distance(transform.position, player.transform.position) < 50)
        {
            if (lerpingUp)
            {
                if (!cornSource.isPlaying)
                {
                    PlaySound(breathIn);
                }

                transform.localScale = Vector3.Lerp(transform.localScale, largeSize, lerpSpeed * Time.deltaTime);

                if (Vector3.Distance(transform.localScale, largeSize) < 1f)
                {
                    StartCoroutine(BreatheOut());
                }
                
            }

            if (lerpingDown)
            {
                if (!cornSource.isPlaying)
                {
                    PlaySound(breathOut);
                }

                transform.localScale = Vector3.Lerp(transform.localScale, originalSize, lerpSpeed * Time.deltaTime);

                if (Vector3.Distance(transform.localScale, originalSize) < 1f)
                {
                    StartCoroutine(BreatheIn());
                }
                
            }
        }
        
    }

    IEnumerator BreatheIn()
    {
        lerpingDown = false;

        float randomWait = Random.Range(0.1f, 1);
        yield return new WaitForSeconds(randomWait);

        lerpingUp = true;
    }

    IEnumerator BreatheOut()
    {
        lerpingUp = false;

        float randomWait = Random.Range(0.1f, 1);
        yield return new WaitForSeconds(randomWait);

        lerpingDown = true;
    }

    public void PlaySound(AudioClip[] sounds)
    {
        int randomSound = Random.Range(0, sounds.Length);
        cornSource.PlayOneShot(sounds[randomSound]);
    }
    
}
