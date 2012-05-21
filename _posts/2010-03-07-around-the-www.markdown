---
layout: post
author: Matt Jadud
title: Around the WWW
---

This is the first of a series of posts where we point to things we've found on the WWW, and do our best to address some questions/share some thoughts about our tools.

To answer the question that we've received several times and seen in a number of places, Windows is coming.

### The St. Louis Area Robotics Group
A few weeks back, a thread was started on the [St. Louis Area Robotics Group forums](http://robomo.com/Forum/viewtopic.php?f=3&p=10389) regarding our libraries and the Arduino/robotics.

The original poster (**gifted**) pointed out that while the native Arduino programming environment provides threading via protothreads, it doesn't necessarily make it easier to handle multiple events taking place simultaneously. This past week, I had students working on a challenge involving three LEDs fading in and out on three PWM channels; as each finished its fade cycle, it would "ask" for a new reading from an ADC channel. I encourage students working with dataflow languages like occam to first draw a picture of their program:


<p align="center">
<img src="/images/lavalamp-process-network.png"/>
</p>

We call this a "dataflow" language because the entire basis for programming in occam is one where we are communicating data from one parallel process to another. Hence, it is useful to think of values "flowing" from one process to the next. I'll break things down fully here:


<p align="center">
<img src="/images/lavalamp-dataflow.png"/>
</p>

#### Step 1
The fader process gets done bringing it's specific LED (in this case, the LED on pin 11) to full brightness and back. At this point, it wants a new reading from the ADC to determine how fast or slow it should fade. So, `fader` signals the `switch` process that a new reading is desired. (So you know, the `fader` process does not know who is listening&mdash;it just knows that it wants a new reading, so it sends out a `SIGNAL`.) 

#### Step 2
The `switch` process grabs the `SIGNAL` and then signals the `adc` process that a new reading is desired. From the point of view of `adc`, it has been sitting quietly doing nothing, simply waiting for someone to ask for some data.

#### Step 3
The `adc` takes a reading from pin 0. 

#### Step 4
The `adc` process communicates its reading down the `adcResp` channel, and proceeds to begin waiting again.

#### Step 5
The `switch` process takes the value it received from `adc` (it was waiting), and sends that on to the `fader` process (who is also waiting). 

There is a 1:1 correspondence between this diagram and the code we write. If you want to see an implementation of this tri-LED fader, you can [see it in our repository](http://projects.cs.kent.ac.uk/projects/kroc/trac/browser/kroc/trunk/tvm/arduino/occam/lavalamp3.occ). I'll eventually write this up as a sequence of short chapters in the [book](http://concurrency.cc/book), but I simply haven't had time yet. (And, actually, that code needs some comments. I use replicated syntaxes to keep it short, but those should probably be explained.)

### Plumbing is for concurrency

So, yes... we think this is good for robotics, because a lot of robotic control is about reading from and reacting to sensors. We `<3` the Arduino because it is a low-cost microcontroller that lots of people use for exactly these kinds of applications&mdash;but we think it's too difficult to manage this kind of complexity in C, especially for programmers just starting point.

And, for **tmaiden** on the St. Louis robotics forums: we use the word *parallelism* to denote when things happen "at the same time," and use the word "concurrency" to mean "the appearance of simultaneity." I don't know if others make this distinction, but we do... because when we use our tools on multicore devices, we get *parallelism*. When the Arduino goes multicore, our domain will be technically incorrect, and we'll have to go get `parallelism.cc`. 

And those `.cc` domains are expensive. 
