---
layout: sidebar-image
title: Resources
sidebar: /images/ide.png
---

## About occam-pi

occam-pi is not the newest language on the block, but it is part of a small family of languages that are inherently parallel. Erlang, Google's Go, and XC by XMOS are three of the few languages that were designed from the ground up for expressing code that is intended to run in parallel. (And yes, there are others. But they're not common. Well, there's CUDA... but that's not a simple tool to dive into, and it doesn't work on your $20 Arduino.) 

We're using occam-pi because the language is:

* **Small**. It has very little syntax, and a small grammar.
* **Parallel**. It has the keyword PAR, which makes things run in "at the same time."
* **Free and open**. The tools are all freely available, and open.
* **Portable**. It runs on everything clusters and servers to embedded systems like your Arduino.

## Join the Community

You may find (some) resources at concurrency.cc of use. I say "may" and "some" because there's only so much we can do to help with static text.

REALLY, you should join the [user's mailing list](mailinglists.html). Why? Because when you have questions about occam-pi, we would like you ask those questions there. As developers exploring the use of occam-pi on the Arduino, you're going to be asking questions that may benefit other members of the community. Or, there may be many members of the community who are  able to answer your questions. Therefore, it is up to you to ask those questions in a forum where your answers will not only benefit you, but others as well.

## Resources: Books

In some ways, there are a wealth of resources for you to use. In other ways, you're going to wish you had better documentation. Because you're working with a free and open project, we want to encourage you to either (1) document and report things that you wish were better, or (2) contribute fixes/documentation/solutions back to the project. That's how real open source software works, folks.

There are a number of books. These are out of print, and scans of them are made available to you here:

* [A Tutorial Introduction to Concurrent Programming in Occam](http://rockalypse.org/courses/cs220f11/resources/occam-books/pountain.pdf) by [Dick Pountain](http://www.dickpountain.co.uk/) and [David May](http://en.wikipedia.org/wiki/David_May_(computer_scientist)).
* [Programming in occam2](http://rockalypse.org/courses/cs220f11/resources/occam-books/burns.pdf) by Alan Burns.
* [Introduction to the Programming Language Occam](http://rockalypse.org/courses/cs220f11/resources/occam-books/hyde.pdf) by Daniel Hyde.
* [An Introduction to occam2 Programming](http://rockalypse.org/courses/cs220f11/resources/occam-books/bowler.pdf) by Bowler, Kenway, Pawley, and Roweth.
* [Introduction to occam2 on the Transputer](http://rockalypse.org/courses/cs220f11/resources/occam-books/brookes.pdf) by Brookes and Stewart.
* [Plumbing for the Arduino](http://concurrency.cc/book/) may be of use, and is need of expansion.

Only the last of these books is Arduino specific. However, it is important to note two things. First, occam-pi is a *superset* of occam2. Therefore, most anything you read about occam2 will be true for occam-pi. Also, if you are working with an Arduino, then you are (for all intents and purposes) working with the occam2 subset of the language. In other words, the above books can be viewed as guides to the language we use on embedded platforms like the Arduino.

One of Matt's favorites in this set is the "Tutorial Introduction" by [Pountain](http://www.dickpountain.co.uk/). Dick is still writing and thinking about these issues (see his thoughts on "PriPar machines"). And, if you're keen, David May is still working on these issues in hardware; [the company XMOS is producing parallel processors](http://www.xmos.com/) today that are clearly inspired by the Transputer and the occam programming language. Someday, we hope to provide a compiler that targets these processors.

## Resources: On the WWW

There are fewer resources on the WWW than I would like, but you may find them useful just the same.

* The [occamdoc for the Arduino modules](http://www.rockalypse.org/courses/cs220f11/resources/occamdoc/) may be very useful. (See note, below...)
* On [occam-pi.org](http://pop-users.org/wiki/occam-pi/LearningResources) we have some links to a variety of learning resources.
* The [occam-pi reference guide](https://www.cs.kent.ac.uk/research/groups/sys/wiki/OccamPiReference) is a good quick reference.
* The [occam 2.1 reference](http://www.wotug.org/occam/documentation/oc21refman.pdf) is a longer document, but covers details of the language that you may be curious about.
* [Dr. Fred Barnes](http://frmb.org/) is a driving force in the development of occam-pi, and [his website has many useful resources](http://frmb.org/occtutor.html).

This last link (Plumbing for the Arduino) will help introduce you to programming in occam on the Arduino, but it won't take you very far.

<!-- 
I've started a "cookbook"-style resource, which I've brilliantly titled *A Plumbing Cookbook for the Arduino*. We will try to update it as you ask questions, so check back here for the most recent version.

PCftA 2011 10 26
Note that this book is an open project; you can contribute to it, too.

NOTE TO ME: To build the occamdocs, first run:

avr-occamdoc -d docs/ include/*.module

then 

scp -r docs/* rockalypse@rockalypse.org:~/rockalypse.org/courses/cs220f11/resources/occamdoc/

from the arduino directory.
-->

Also, we can modify/improve the Plumbing module as a result of your use. That is, I have commit rights on the repository, and I write a lot of the documentation... so, if you think we can improve the Plumbing module, by all means... make suggestions on the users list, and we can discuss them and (most likely) put your suggestions into practice.

### Giving Back, Making Contributions

If you'd like to help improve anything we've produced &mdash; our software, our hardware, our book, or our website &mdash; please join the [developers mailing list][lists] and talk to us there.

If you're familiar with Subversion, we do make [repository space available for members of the community][repos]. This means your code is backed up, others can see what you're working on (and help!), and your efforts benefit many, even if you're just getting started. (It also makes it easier for others to help you out.) Note, though: your code must be released under a GPL- or LGPL-compatible license if we're going to host it.

[repos]: http://projects.cs.kent.ac.uk/projects/kroc/trac/browser/kroc/trunk/tvm/arduino/community

