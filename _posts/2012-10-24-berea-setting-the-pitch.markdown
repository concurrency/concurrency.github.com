---
layout: post
author: Chad Peruggia , Renaldo Pierre-Louis
title: "Setting the Pitch"
---

## Discoveries

###Previous PID Issues
So, we previously explained that the current autopilot code would "fish-tail" its way up to the desired altitude. Today, we believed that we found out why it was behaving in such ways.
Initially, we researched and brainstormed to gain a better understanding how this PID thing really worked. After reading a couple of papers and discussing them, we arrived to the understanding that what we needed to control was the Constant multipliers in the PID controllers.

Consquently we altered values being passed to the PID class to see the effect it would have on the flight. Miraculously, decreasing the P constant from 0.38 to 0.15 resulted in the plane making a smoother change in altitude (no fish-tailing). Yay!!!

However, upon further discussion, we came to the conclusion that this was not enough and could be done more efficiently. The plane was taking an eternity to climb the desired altitude since the pitch was only being adjusted by really small values. 

The behavior that we would like is to have a steep ascent or descent that would decrease as we approach the desired value. So, we investigated more.

###Pitch and Altitude
Since pitch and altitude are directly related, we believe it to be a great idea if the code reflects this. At the moment, it does not.

## Plans
We plan to try and use the pitch to figure out the angle of which the plane is ascending / descending, and compute the change in vertical distance based on the velocity of the plane.  We will then be able to adjust the pitch accordingly as time changes to obtain the desired altitude.  We feel that if we eliminate the PID in regards to Pitch and altitude, and use simple math, we will have more control over how the plane is reacting to the changes.  The black box method here does not seem to be ideal.

##Did You Know? 
That in a PID controller, the D, or the derivative respondes poorly to noise in the data and can effect the controller greatly.  That is why many PID's don't use the D, they are simply refered to as PI's.

Renaldo likes pizza.