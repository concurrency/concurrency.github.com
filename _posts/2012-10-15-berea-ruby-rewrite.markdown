---
layout: post
author: Chad Peruggia , Renaldo Pierre-Louis
title: "Ruby Re-Write"
---

We have decided to re-write the old code regarding auto-pilot in Ruby.  Today was our first day actually coding in regards to this project, so it felt nice to see that we are moving forward with our goals.  We decided to re-write the old code so we can have a better understanding of how it worked, and then address the issue of the dolphin tailing when changing altitude.

##Current Progress

We have written the code so far in OOD, where prior it was done functionally.   We feel that this will give us, as well as future extensions of the project a more maintainable code base, which is ideal for research projects.

We have the Ruby code working with a UDP socket class, then creating a class of ControlPanel, which allows us to separate the data coming out of the simulator into useable member variables which we plan to use later on in development.  Even though this is a small step, it is a step in the right direction.

##Complications
We have yet to begin our research into PID's as well as the previous algorithm in the autopilot.py.  We feel that we will be able to overcome these challenges within a reasonable time frame and hope to fix the dolphin tail issue well before Thanksgiving break.

##Did You Know?

That the UDP set up is very similar in Ruby as well as Python.  Also, Ruby did a lot of the work for us when we needed to split the string of data, as well as the accessor functions can be written with little code compared to other, more complex languages.  This was a relief.

