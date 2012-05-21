---
_template: page.mako
title: Parts Check
---
Before you start assembly, you should check to see if your kit is complete. Detailed here is the January 2010 version of the kit from [NKC Electronics](http://www.nkcelectronics.com/).

### The Computer

#### Motherboard x 1
![The Freeduino motherboard](/images/freeduino/20100103_1433-0001-freeduino.jpg) 

"Motherboard" is common language for a PCB, or [printed circuit board](http://en.wikipedia.org/wiki/Printed_circuit_board).

#### Socket x 1
![A 28-pin socket](/images/freeduino/20100103_1434-0002-freeduino.jpg)

The socket will hold the processor, so we can attach a cheap part (the socket) to the motherboard, and later replace the expensive part (the processor) if we're so inclined.

#### Processor x 1
![The ATmega328p](/images/freeduino/20100103_1435-0003-freeduino.jpg)

The processor is, essentially, what you would call _the computer_. We are using [Atmel](http://www.atmel.com/)'s [Atmega328P](http://www.atmel.com/dyn/products/product_card.asp?PN=ATmega328P). This processor runs at up to 20MHz (we're running it at 16MHz), it has 32KB of space for our programs, and 32KB of RAM for those programs to execute in.


### Electronic Components
Technically, everything on this page can probably be called "electronic components."

#### 16MHz Crystal x 1
![A 16MHz crystal](/images/freeduino/20100103_1439-0013-freeduino.jpg)

A [tiny crystal actually vibrates](http://en.wikipedia.org/wiki/Crystal_oscillator) when electric current is applied, thus giving us electronic pulses that allow us to drive our processor. 

#### Resistors x 7
![A resistor](/images/freeduino/20100103_1436-0004-freeduino.jpg)

When you squeeze a garden hose, you create resistance in the flow of water. Not that current flows exactly like water, but the analogy is good enough for the moment---a [resistor](http://en.wikipedia.org/wiki/Resistor) is kinda like that squeeze. Poke around the net and figure out what color codes on your resistors mean.

#### LED x 4
![An LED](/images/freeduino/20100103_1436-0005-freeduino.jpg)

The LED, or [light-emitting diode](http://en.wikipedia.org/wiki/Light-emitting_diode), is a blinkenlight. 

#### Capacitors x 13
![An electrolytic capacitor](/images/freeduino/20100103_1436-0006-freeduino.jpg)

An [electrolytic capacitor](http://en.wikipedia.org/wiki/Electrolytic_capacitor) is polarized, and must be integrated into its circuit the correct way. My kit had two of these, with different measures of capacitance.


Ceramic capacitors have no particular polarization, and can be inserted into the circuit in any direction (like resistors). Ours look like little orange pills, but don't eat them. My kit had 10 of these.

![A ceramic capacitor](/images/freeduino/20100103_1436-0007-freeduino.jpg)


#### Diode x 1
![A diode](/images/freeduino/20100103_1436-0008-freeduino.jpg)

A [diode](http://en.wikipedia.org/wiki/Diode) is like a sluice gate: it only allows water to flow through in one direction. They are used (for example) in circuits to keep current from flowing backwards and damaging components.

#### Voltage Regulator x 1
![A 7805 voltage regulator](/images/freeduino/20100103_1439-0012-freeduino.jpg)

A [voltage regulator](http://en.wikipedia.org/wiki/Voltage_regulator) takes an input voltage that may vary, and outputs a constant voltage at a lower level; the difference in the input and output voltages is lost as heat. Our regulator converts 6-18V input into a steady 5V. It doesn't last very long at 18V, so we'll be using a 9V battery for most of our projects.

### Hardware

#### Button x 1
![A momentary switch, or push button](/images/freeduino/20100103_1439-0011-freeduino.jpg)

The button in our kit is a kind of switch; specifically, a [momentary switch](http://en.wikipedia.org/wiki/Switch). This means that when we push it, it closes the contact, but pops open automatically.

#### Jack x 1
![A DC jack](/images/freeduino/20100103_1438-0009-freeduino.jpg)

For plugging in a power supply.

#### Sockets and Headers x 6
![Female sockets](/images/freeduino/20100103_1439-0010-freeduino.jpg)
![Male headers](/images/freeduino/20100103_1440-0014-freeduino.jpg)

Female sockets provide a place to plug in wires and things; male sockets provide a place to plug in female connectors and whatnot. I had four female sockets and two male headers. I also had a jumper, which I didn't list separately: it is a little bit of plastic and metal that can bridge (or jump) two header contacts.
