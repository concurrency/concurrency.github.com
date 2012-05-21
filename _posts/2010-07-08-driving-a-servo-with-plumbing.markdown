---
layout: post
author: Matt Jadud
title: Driving a servo with Plumbing
---

We have been tearing things apart in the Plumbing libraries over the past two weeks. Specifically, we've been separating out concerns -- we keep asking "is this code *architecture* specific, or *platform* specific?" This is a hard question, as we're trying to cleanly support multiple platforms (Arduino, Arduino Mega, Seeeduino Mega, and the ArduPilot Mega) while also supporting multiple architectures (The ATmega328 and ATmega1280). 

Drew and Radu recently worked out servo control via PWM. This lets us set up servos, set their position, and then "walk away." While it limits the number of servos we can control on a given platform, it does mean that we get robust control of the servo without a lot of work on our part.

<p align="center"><img src="/images/servo.jpg"><br/><em>A servo, or tiny motor.</em></p>

Here's some example code Drew committed to the repository to demonstrate usage (and test his implementation a bit).

    PROC main()
      CHAN SERVO s:
      SEQ
        digital.mode (9, OUTPUT)
        PAR
          heartbeat ()
          servo (9, s?)
          SEQ
            s ! min ; 650
            s ! max ; 2350
            s ! div ; 4
            s ! pos ; 0
            s ! start
            delay (2000)
            WHILE TRUE
              SEQ
                SEQ i = 0 FOR 4
                  SEQ
                    s ! pos ; i
                    delay (1000)
                SEQ i = 0 FOR 4 STEP -1
                  SEQ
                    s ! pos ; i
                    delay (1000)
    :

In parallel, Drew is executing three processes. First is the **hearbeat()** process. This blinks the Arduino's LED on and off, letting us know nothing has crashed. (All robots should have a heartbeat.) The second process running is the **servo** process, which takes two parameters: a pin and a channel. Drew has declared the channel **s** as being of type **SERVO**, which we defined as a *command channel* to carry messages and data to the servo process.

Then, the third process is written in-line as a sequence of steps (**SEQ**) followed by an infinite loop (**WHILE TRUE**). He starts by sending a sequence of four command messages to the **servo** process:

 1. `s ! min ; 650`  
This sends the **min** command with the additional value of **650** to the **servo** process. This means that the minimum pulse width for driving the servo should be 650 &mu;sec.
 2. `s ! max ; 2350`  
This says to set the max pulse width to 2350.

 3. `s ! div ; 4`  
This says that we want four evenly-spaced divisions in the range (from **min** to **max**) that we just defined.

 4. `s ! pos ; 0`  
This sets the servo position to 0.

 5. `s ! start`  
This actually turns on the servo.

This process then delays for two seconds, and falls into an infinite loop. (There's infinite loops in **heartbeat()** and **servo()**... you just can't see them.) In this loop, Drew goes from position 0 to 4, and then back down. All he does is send the position number to the servo over the channel **s**.

What's nice about this is that we can later **stop** the servo, update the values for the minimum and maximum, change the number of divisions (the **servo** process defaults to 180 divisions -- in fact, all of the values have sensible defaults), and send a **start** message again.

Perhaps this looks complicated. Personally, I think it's a very powerful interface to servo control, and because we encapsulated servo control in a parallel-safe process, we can easily control multiple servos at the same time, doing some cool synchronous (or asynchronous) things with our tiny little motors of goodness.

I'll try and get some video up tomorrow. Note, also, that everything described here might change... but it certainly seems like a really nice way to do servo control.
