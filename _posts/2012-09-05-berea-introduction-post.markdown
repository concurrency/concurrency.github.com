---
layout: post
author: Chad Peruggia , Renaldo Pierre-Louis
title: "Contemplating Flying"
---

So, after being presented with the idea of taking an Advanced Robotics, we decided to accept the challenge and see what innovations we could make to Dr. Jadud's and his previous students "Flying Gator" project.  We are going to be branching off this project and now code naming it the "Flying Mountaineer", how original. 

We have read the paper on the past work, and we have a good understanding of what was done with the project, and where we plan to take it by semesters end.

## Past Work

Dr.Jadud and his students managed to get a plane in the air, controlling linear flight by reading sensors.  The plane was able to maintain flight, which is a huge step in the progress, but what they didn't have time to do was enable GPS waypoint navigation and ground radio communication.  These are the two features that we plan to concentrate on throughout the semester. 

Reading into the way that they made the plane fly, we learned the about the type of hardware they were using, an ATmega1280, and software written in occam-pi.  They used a series of loops rather than the single loop in the open source program ArduPilot control system, which enabled them to have many process running at the same time.

This method of control allowed them to keep the plane leveled by reading in sensor data at the same controlling motor speed during turns.  Sensor data that was important to the flight of the plane was from the Gyroscope as well as the Accelerometer.  They combined the data from the two sensors to maintain a level flight.  [Past Work](http://rockalypse.org/blogs/flyinggator)

## First Steps

We plan on learning how to interact with the arduino micro-controller before moving forward with the project.  We need to have an understanding of the hardware and its limitations so we can devise a well planned design and approach to planned innovations.

## Did You Know

In our first session of Adruino Learning, we managed to alter the "Fade" demo, to inclue a blink to the LED.  Once the light would fade on, we would blink off, blink on, then fade out.  Although this is simple, we had trouble figuring out where to place the code as we aren't used to programming in a loop type structure that the Arduino uses.

Here is a code snippet of how we got it to work.

<pre>
/*
Fade

 This example shows how to fade an LED on pin 9
using the analogWrite() function.

 This example code is in the public domain.
*/

int led = 9;           // the pin that the LED is attached to
int brightness = 0;    // how bright the LED is
int fadeAmount = 5;    // how many points to fade the LED by

// the setup routine runs once when you press reset:
void setup()  { 
  // declare pin 9 to be an output:
  pinMode(led, OUTPUT);
} 

// the loop routine runs over and over again forever:
void loop()  { 
  // set the brightness of pin 9:
  analogWrite(led, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;
  
  if (brightness == 255){
    analogWrite(led, LOW);
    delay(500);
    analogWrite(led, HIGH);
  }
  
  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }     
  // wait for 30 milliseconds to see the dimming effect    
  delay(30);  
}
</pre>