---
layout: sidebar-image
title: Hardware supported by occam-&pi;
sidebar: /images/ccc-generation-one.jpg
---

As it turns out, occam-&pi; (and the Plumbing library) work on many different platforms: desktop-class systems running Windows, Mac, and Linux, as well as small platforms like the Arduino and (soon) the LEGO Mindstorms RCX/NXT. In addition to software, our group develops open hardware to better support our explorations of concurrent and parallel programming on small devices.  

We have two new hardware designs: the [c.cc board](ccc.html) and the [Cardboarduino](cardboarduino.html). A summary of each is provided below.

### The c.cc board
We have, under the leadership of Omer Kilic, developed a new Freeduino variant ([details](ccc.html)). This design was developed for several reasons:

 * **Cost Control**  
It is a surface-mount design, and with our own design we can order in bulk and, ultimately, evolve and extend the design to support future research projects.
 * **Parallelism**  
The c.cc board supports up to four LEDs (which can be enabled or disabled with solder jumpers) allowing us to immediately parallel programming in educational contexts without any additional circuitry. 
 * **LiPoly for Power**  
We replaced the barrel-jack connector common on most Arduinos with an adapter compatible with many LiPoly battery packs.
 * **Step-up Power Supply**  
The c.cc board can be **run on a single AA battery**. This cuts costs and shrinks designs.
 * **Mini-USB**  
 The board uses a mini-USB connector for talking to the computer you are programming it from, as opposed to a full-size USB B connector.

### The Cardboarduino
This is Matt's first-ever hardware design ([details](cardboarduino.html)). It is a low-fidelity AVR design developed originally for use with first-year undergraduates at Allegheny College as part of the linked course [FS102: Technology and Activism](http://www.rockalypse.org/courses/fs102sp10/) and FS102: Art and Activism. 

