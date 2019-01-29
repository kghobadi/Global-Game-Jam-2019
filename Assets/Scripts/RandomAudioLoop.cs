using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomAudioLoop : MonoBehaviour
{
    AudioSource myAudio;
    public AudioClip[] audioTracks;

    void Start()
    {
        myAudio = GetComponent<AudioSource>();

        int randomTrack = Random.Range(0, audioTracks.Length);

        myAudio.clip = audioTracks[randomTrack];

        myAudio.Play();
    }
    
}
