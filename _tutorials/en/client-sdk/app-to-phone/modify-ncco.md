---
title: Modify NCCO
description: In this step, you modify your NCCO using Glitch.
---

# Modify NCCO

A Nexmo Call Control Object (NCCO) is a JSON array that you use to control the flow of a Voice API call. More information on NCCO can be found [here](https://developer.nexmo.com/voice/voice-api/ncco-reference).

The NCCO must be public and accessible by the internet. To accomplish that, we will be using [Glitch](https://glitch.com). (Glitch is a place to "build fast, full-stack web apps in your browser for free".)

To create your NCCO

1) Clone an editable version of the Glitch template by visiting [https://glitch.com/edit/#!/remix/closed-innate-mint](https://glitch.com/edit/#!/remix/closed-innate-mint)
   
2) Take note of your Glitch Project Name: https://glitch.com/edit/#!/GLITCH-PROJECT-NAME

3) Edit `public/ncco.json` and replace Your-Phone-Number with your phone number (must be in [E.164](https://developer.nexmo.com/concepts/guides/glossary#e-164-format) format i.e. 14155550100)
