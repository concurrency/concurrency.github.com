---
layout: post
author: Renaldo Pierre-Louis, Chad Peruggia
title: Python to Ruby Continued
---

We have continued our desire to rewrite past code from python to ruby, and we have the PID fully rewritten, as well as a class written for the controls of the plane.  We did make slight changes to the structure of the code, as well as a plan to fix the elevation change.

###New Elevation Controller
We are planning to change the elevation of the plane by using a proportional control method.  The method itself will take the current altitude from the desired altitude, and we convert it to a number that we can use to adjust the pitch.  We refer to this value as the desired pitch.  We have a max pitch to prevent the plane from going out of control, and this value is used in the pitch PID.  

We feel that this will give the plane a more realistic and faster accent / decent to desired altitudes.

##Complications
We ran into a small error when converting the Python to Ruby due to syntax differences.  We were missing and end statement, and we couldn't figure out why.  This was causing errors with our class functions when we tried to call them , since the methods were being created in an If / Else statement.  Once we found this error, which took forever, it was smooth sailing to get the code to run.

##Whats Next
In order to finish in time, we figured we need to meet more during the semester since we need access to the simulator.  We are discussing these plans, and something will be worked out soon. 

Our next step in our development plan is to finish getting the ruby working, then we plan to try and implement the GPS, but we are unsure due to time constraints.

##Did You Know?
We don't have anything, since we don't know anything either to share!

