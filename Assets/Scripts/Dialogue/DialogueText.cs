﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System;
using System.Collections.Generic;

public class DialogueText : MonoBehaviour
{
    //player refs
    GameObject player;
    FirstPersonController fpc;
    public GameObject hostObj;

    //text component and string array of its lines
    Text theText;
    public string[] textLines;

    //current and last lines
    public int currentLine;
    public int endAtLine;
    public bool hasFinished;

    //typing vars
    private bool isTyping = false;
    private bool cancelTyping = false;
    public float typeSpeed;
    public float resetDistance = 25f;

    //check this to have wait time from trigger to enable dialogue
    public bool waitToStart;
    public float timeUntilStart;
    //wait between lines
    public float waitTime;
    //check this to allow an array of wait Times (one for every line of dialogue on this text obj)
    public bool conversational;
    public float[] waitTimes;

    //check this to start at start
    public bool enableAtStart, lockPlayer;

    //audio stuff
    public bool hasVoiceAudio, usesAllLetters, countsUp;
    public int speakFreq = 4;
    public AudioSource[] myVoices;
    public int currentVoice =0 , currentSound = 0;
    public AudioClip[] myGibberishSounds;

    //for spoken alphabet
    public List<char> letters = new List<char>();
    public List<char> capitalLetters = new List<char>();
    public List<AudioClip> spokenSounds = new List<AudioClip>();

    //animator
    Animator speechAnimator;

    public bool genCorn;
    public CornGen cornGen;
    public List<RandomizeCorn> cornList = new List<RandomizeCorn>();

    void Start()
    {
        //grab refs
        player = GameObject.FindGameObjectWithTag("Player");
        fpc = player.GetComponent<FirstPersonController>();
        theText = GetComponent<Text>();
        speechAnimator = hostObj.GetComponent<Animator>();

        ResetStringText();
       

        if (!enableAtStart)
        {
            theText.enabled = false;
        }
        else
        {
            EnableDialogue();
        }
    }

    //reset trigger if you swim away during dialogue
    void Update()
    {
        if (isTyping )
        {
            //reeset if too far from dialogue
            if (Vector3.Distance(transform.position, player.transform.position) > resetDistance)
            {
                StopAllCoroutines();
                DisableDialogue();
                GetComponent<DialogueTrigger>().hasActivated = false;
                currentLine = 0;
            }

            speechAnimator.SetBool("talking", true);
        }
        else
        {
            speechAnimator.SetBool("talking", false);
        }
    }

    void ProgressLine()
    {
        currentLine += 1;

        if (currentLine >= endAtLine)
        {
            hasFinished = true;
            DisableDialogue();
        }
        else
        {
            //this debug helps find the wait times for the current line of dialogue
            //Debug.Log(hostObj.name + " is on line " + currentLine + " which reads: " + textLines[currentLine] + " -- " + hostObj.name + " will wait " + waitTimes[currentLine].ToString() + "sec before speaking again!");
            StartCoroutine(TextScroll(textLines[currentLine]));
        }
    }

    //Coroutine that types out each letter individually
    private IEnumerator TextScroll(string lineOfText) 
    {
        int letter = 0;
        theText.text = "";
        isTyping = true;
        cancelTyping = false;
        while (isTyping && !cancelTyping && (letter < lineOfText.Length - 1))
        {
            theText.text += lineOfText[letter];
            if (hasVoiceAudio)
            {
                if (!countsUp)
                {
                    if (letter % speakFreq == 0)
                        Speak(lineOfText[letter]);
                }
                else
                {
                    if (!myVoices[currentVoice].isPlaying)
                    {
                        PlaySoundUp();
                    }
                }
            }
            
            letter += 1;
            yield return new WaitForSeconds(typeSpeed);
        }
        theText.text = lineOfText;
        isTyping = false;
        cancelTyping = false;

        //if conversational, use the array of wait Timers set publicly
        if (conversational)
        {
            yield return new WaitForSeconds(waitTimes[currentLine]);
        }
        else
        {
            yield return new WaitForSeconds(waitTime);
        }

        ProgressLine();

    }

    public void ResetStringText()
    {
        textLines = (theText.text.Split('\n'));

        endAtLine = textLines.Length;
    }

    public void EnableDialogue()
    {
        if (waitToStart)
        {
            StartCoroutine(WaitToStart());
        }

        else
        {
            theText.enabled = true;

            StartCoroutine(TextScroll(textLines[currentLine]));
        }
    }

    IEnumerator WaitToStart()
    {
        yield return new WaitForSeconds(timeUntilStart);

        theText.enabled = true;

        StartCoroutine(TextScroll(textLines[currentLine]));
        
    }


    public void DisableDialogue()
    {
        theText.enabled = false;

        if (hasFinished)
        {
            //if we gen
            if (genCorn)
            {
                //bring the corn to life...
                for (int i = 0; i < cornGen.corn.Count; i++)
                {
                    cornGen.corn[i].GetComponent<RandomizeCorn>().breatheDistance = 50;
                }
            }
            //if placed in editor
            else
            {
                //bring the corn to life...
                for (int i = 0; i < cornList.Count; i++)
                {
                    cornList[i].breatheDistance = 50;
                }
            }

            hostObj.SetActive(false);
        }
    }

    //check through our alphabet of sounds and play corresponding character
    public void Speak(char letter)
    {
        //cycle through audioSources for voice
        if(currentVoice < myVoices.Length - 1)
        {
            currentVoice++;
        }
        else
        {
            currentVoice = 0;
        }
        if (usesAllLetters)
        {
            //check in letters
            if (letters.Contains(letter))
            {
                int index = letters.IndexOf(letter);
                myVoices[currentVoice].clip = spokenSounds[index];
                myVoices[currentVoice].PlayOneShot(spokenSounds[index]);
                //Debug.Log("spoke");
            }
            //check in capital letters
            else if (capitalLetters.Contains(letter))
            {
                int index = capitalLetters.IndexOf(letter);
                myVoices[currentVoice].clip = spokenSounds[index];
                myVoices[currentVoice].PlayOneShot(spokenSounds[index]);
                //Debug.Log("spoke capital");
            }
            //punctuation or other stuff?
            else
            {
                PlayRandomSound();
                //Debug.Log("gibberish");
            }
        }
        //for characters who only use gibberish sounds
        else 
        {
            PlayRandomSound();
            //Debug.Log("gibberish");
        }

    }

    //counts up through gibberish sound array
    public void PlaySoundUp()
    {
        if(currentSound < myGibberishSounds.Length - 1)
        {
            currentSound++;
        }
        else
        {
            currentSound = 0;
        }

        myVoices[currentVoice].PlayOneShot(myGibberishSounds[currentSound]);
    }

    //to play a sound
    public void PlayRandomSound()
    {
        int randomSound = UnityEngine.Random.Range(0, myGibberishSounds.Length);
        myVoices[currentVoice].clip = myGibberishSounds[randomSound];
        myVoices[currentVoice].PlayOneShot(myGibberishSounds[randomSound]);
    }
}

