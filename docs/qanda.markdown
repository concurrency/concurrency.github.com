---
_template: page.mako
title: Questions and Answers
---

### Questions
 * <a href="#talktoeachother">How do you get two Arduinos to talk to each-other?</a>
 * <a href="#supportedhardware">What hardware is supported by the Transterpreter?</a>

<a name="talktoeachother"></a>
### How do you get two Arduinos to talk to each-other?

To communicate between two Arduinos, you could do one of several things (easiest to hardest):

<ol>
	<li><b>Serial using pins 1 and 2</b>. We have not yet moved this into the Plumbing library (or documented it in the text), but this is a natural next step. (Our <a href="http://projects.cs.kent.ac.uk/projects/kroc/trac/browser/kroc/trunk/tvm/arduino/occam/ledmatrix.occ">LED matrix code</a> demonstrates how we did scrolling text across a series of LED matricies. Serial was used to send the data from one Arduino to another.) 
		<p/>
		</li>
		<li>
			<b>SPI, or the "two wire" interface</b>. We have not written this into the Plumbing library, nor have we prototyped it. If you're experienced working with microcontrollers (or want to learn more), this is something we want in Plumbing before too long.
					<p/>
		</li>
		<li>
			<b>Serial-in-occam over arbitrary digital pins</b>. We could just do it all in software. It would be slow, but it would work. Christian poked at this and has some code, somewhere, that he's never committed to the repository...
		<p/>
		</li>
			</ol> 

Any and all of these could easily become part of Plumbing; we simply haven't had time to do the implementation work yet.

<a name="supportedhardware"></a>
### What hardware is supported by the Transterpreter?

(Asked by [folknology](http://twitter.com/folknology/status/8512979331) via Twitter.)

Plumbing is a library written in occam-pi. We compile occam-pi to bytecode, and on small platforms use the [Transterpreter](http://www.transterpreter.org/) (a virtual machine) to execute that bytecode. The Transterpreter VM is written in ANSI C. This means it will run on anything that has an ANSI C compiler. 

If the question was "what hardware can support the Transterpreter?," the answer would be "everything with an ANSI C compiler and 20K of flash." However, that isn't the question.

We have *active* support for:

 * POSIX platforms (Mac, Linux, Windows)
 * The Atmega328, Atmega664, and Atmega1280 (Arduino-class devices with at least 32K of flash)

We are (as of Feb 2, 2010) actively working on our build system to make binary distribution of our IDE on Windows and Linux easy (for us). They're coming momentarily.

We have supported in the recent past:

 * The LEGO Mindstorms RCX (Renesys H8)
 * The Surveyor SRV-1 (Analog Devices B537)

The VM has evolved in the last 6-8 months, and the "wrappers" for these platforms must be updated before they will work. This is not a massive task, but we have no motivation **right now** (Feb 2, 2010) to do it. If someone said "I want to teach a class using my LEGO Mindstorms using your tools," we could bump the priority. 

We plan on supporting in the near future (less than a year):

 * The ARM7 family of microcontrollers

This coming summer we plan on looking at ARM7 support, specifically in the form of the  [IPRE Scribbler/Fluke](http://wiki.roboteducation.org/Myro_Hardware). Note, though: the Scribbler/Fluke is challenging because it only has 64K of RAM, ~55K of which is used by the camera when taking pictures. This leaves ~10K for the VM and user code, which is not a lot if you want to do autonomous robotics with vision. 

The ARM7 also gives us an excellent bridge into the LEGO Mindstorms NXT.

Given the size of our core team, we do not casually support *lots* of hardware. If you are keen to see a parallel language ported to a particular platform, we are **more than willing to support members of the community** if they are interested in porting to new platforms. For any 32-bit processor, this is typically not a big challenge, unless you 1. don't know C, and 2. have never done any programming on embedded devices. Then it will be a learning experience (but not insurmountable.)



