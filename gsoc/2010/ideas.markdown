---
layout: page
title: Google Summer of Code Ideas Page
---

This page contains some suggestions for projects that we think might be fun to
do as part of the Google Summer of Code. Consider the project ideas more as an
inspiration for things that are possible, not an exhaustive list of what we
want. You should probably browse around our sites and see what we get up. Then
you can come up with an idea that really excites *you*. Being excited about what
you're doing is probably a good way to make sure that the project becomes a
success.

You may want to browse around the some of the following sites to get a sense for
what might catch your imagination:

- <http://concurrency.cc/>
- <http://transterpreter.org/>
- <http://baseplate.org/ideas/>
- <http://projects.cs.kent.ac.uk/projects/kroc/trac/>
- <http://pop-users.org/wiki/>

You can also post suggestions or ask questions on our mailing list:
<developers@concurrency.cc>.

# Project Ideas

---

### Your Great Idea

- **Possible Mentors:**
  - Talk to us
- **Description:** Use imagination here
- **Skills:**
  - Lots
- **Difficulty:** Whatever you like

---

### Go to TVM/occam compilation/translation

- **Possible Mentors:**
  - Matt
  - Christian
- **Description:** Google has recently released the [Go
  language](http://golang.org/), a concurrent language with CSP like
  primitives. The language is in many ways like a modern implementation of
  occam. We are interested in using Go in the kinds of embedded settings that
  our virtual machine, the Transterpreter, already supports. This would require
  either compiling Go code to Transputer instructions or translating Go to
  occam.
- **Skills:**
  - Go
  - Occam
  - Familiarity with assembly and virtual machines
- **Difficulty:** Hard

---

### Better GUI for the Transterpreter

- **Possible Mentors:**
  - Christian
  - Jon
- **Description:** The Transterpreter application that you can download from
  <http://www.transterpreter.org/> is currently based around
  [jEdit](http://www.jedit.org/). While jEdit is a fine cross platform editor,
  we would prefer something simpler to make the tools more accessible
  to a wide audience. Look at the [Arduino](http://arduino.cc/) or
  [Processing](http://processing.org/) programming environments, which provide a
  much cleaner environment that is easy to get to grips with. While we would
  like to move in a direction which makes our development environment more
  accessible, we do not currently have a clear idea of how best to do this. As
  part of this project you would also have to do some research into how to best
  provide an easy to use, cross platform development environment.
- **Skills:**
  - Cross platform GUI programming
- **Difficulty:** Medium

---

### RCX Port and Infrastructure

- **Possible Mentors:**
  - Jon
  - Christian
  - Matt
- **Description:** The Transterpreter has had a difficult relationship with the
  Lego RCX programmable brick. It was initially love at first sight, but there
  have since been many breakups and subsequent make ups. Currently some love is
  needed if the two are to be reconciled again. Doing this project would involve
  reviving the RCX port of the Transterpreter, including support for it in the
  Transterpreter Development Environment, and creating support material,
  possibly based on [plumbing](/book/), and promoting its use amongst the many many people
  who already have an RCX.
- **Skills:**
 - Access to an RCX
 - Embedded programming in C
 - Patience
 - Love
- **Difficulty:** Easy to medium

---

### Translating the plinker into Python

- **Possible Mentors:**
  - Christian
- **Description:** Part of the toolchain for compiling occam programs to
  bytecode that can be executed by the Transterpreter Virtual Machine consists
  of a Perl program which sanitises and links the output from the occam
  compiler. This program is called the `plinker`, where the `p` stands for Perl.
  We would like to rename the tool to be called the `plinker` where the `p`
  stands for, say, Python instead. The reason for the conversion is that we are
  trying to rely mostly on Python in our toolchain, and because the majority of
  the project members do not wish to support a Perl implementation of the linker
  functionality.
- **Skills:**
  - Perl
  - Python
  - Maybe some familiarity with translators would be useful
- **Difficulty:** Easy to medium
