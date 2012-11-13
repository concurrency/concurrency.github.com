---
layout: post
author: Renaldo Pierre- Louis , Chad Peruggia
title: Analyzing the ArduPilot
---

##Update
We have decided to go through our code and compare it to one that is known to work, the ArduPilot.  Since we have known issues with our pitch controller, we decided to look there.  At first we were confused, as this is a rather large program with many files, and we had to figure out where variables were coming from and where they were being set.  We had to understand the parameters of the functions before we can figure out how the functions work.

About an hour later, we feel like we have a good understanding of how they work and where we went wrong.

###Our Errors

Currently our Pitch PID is not using the constraints to properly set which is what is causing our plane to stall when changing altitudes.  We have come to the realization that our PID is returning the value that is similar to the contrain value mentioned in the psudocode above.  If we send the values that we are currenlty obtaining to a PID, we might be able to achive our desired outcome.

The biggest difference between our approach and the approach of the Ardui Piolot is the use of a timing method.  We need to figure out how to implement this into our Ruby scripts.

Once we cal the Pitch PID and the throttle PID, we can send these commands to the plane and it should fly as desired.... hopefully.

## Did You Know
That we didn't physically meet for class today? But we used teamViewer to have a video meeting and shared our desktop!! HOW AWESOME!

