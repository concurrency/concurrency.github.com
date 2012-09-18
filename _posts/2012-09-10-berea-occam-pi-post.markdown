---
layout: post
author: Chad Peruggia , Renaldo Pierre-Louis
title: "Occam Pi Basics"
---

So, today we started with the basics of Occam-pi - the parallel processing language that we will be using to automate our "Flying Mountaineer." We first downloaded the [IDE](http://download.transterpreter.org/files/dev/win/zip/Transterpreter-win-dev-20110201.1855.zip) and uploaded the "Transterpreter" to enables us to run Occam-pi on the Arduino.
The Transterpreter actually just provides an illusion of parallel processing, since the Arduino only has a single processor. This illusion is called "concurrency" (hint: the name of the blog :D).

## Trying Occam-pi

We decided to try by making three LEDs blink in parallel (concurrently to be more accurate). This is a trivial task that does not really test our programming skills, but more our abilities in circuitry. It was a nice refresher of how to build parallel and series circuits.

See this cool video below.

<p align="center"><object width="480" height="360"><param name="movie" value="http://www.youtube.com/v/b7pGnOaTddc?version=3&amp;hl=en_US"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/b7pGnOaTddc?version=3&amp;hl=en_US" type="application/x-shockwave-flash" width="480" height="360" allowscriptaccess="always" allowfullscreen="true"></embed></object></p>

## Did You Know

The onboard LED is actually the same as pin 13. We found this out when we were blinking our LED on pin 13, and realized the onboard LED was also blinking, and we were not sure why, since we did not intend for it to. So, if you are wondering why you onboard LED blinks when you did not want it to, this is probably the reason.
