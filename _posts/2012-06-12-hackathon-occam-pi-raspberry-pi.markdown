---
layout: post
author: Christian Jacobsen, Omer Kilic and Jon Simpson
title: "CCC Hackathon: occam-pi on the Raspberry Pi"
---

So, after a long time with nothing here goes...

It seemed inevitable to us after reading about the [Raspberry Pi](http://www.raspberrypi.org/) that it and occam-pi had to be brought together, and as fate would have it several of us were able to get together in London and hack for a few days on the project in general, and the Raspberry Pi in particular during the Jubilee 4 day weekend.

## Website

After a long hiatus in posting to or updating the website, we've finally made the move to [Github Pages](http://pages.github.com/).
We're really excited about this, as it means we'll eventually have a single, straightforward way to contribute either code or documentation to the project (more on this below).
This also means that the code is open to all -- see the [project page](https://github.com/concurrency/concurrency.github.com) for the gory details.
Stay tuned for more website and documentation updates - pull requests welcome!

## Git Repository

Another less glamorous activity which received attention at the hackathon is a move of the KRoC repository to Git to facilitate a move of the project sources to Github.
We're keen to reduce any barriers to entry for new contributors, and Github has built up a fantastic set of infrastructure and processes to aid projects. 
Unfortunately, there are some difficulties in conversion particular to the KRoC repositories, which have absorbed a lot of effort so far (gory details follow below).

The KRoC Subversion repository started out containing sub-projects for each of the individual components (such as occ21, ilibr, etc; [as can be seen in early revisions of the repository](http://projects.cs.kent.ac.uk/projects/kroc/trac/browser?rev=248)), and at some point in the history these were (almost) all moved in under one project ([as can be seen in the current trunk](http://projects.cs.kent.ac.uk/projects/kroc/trac/browser)).

A simple svn2git import fails to keep the history before the different sub-projects were consolidated into the *kroc* project. There are some recipes for importing complex repositories available ([Simeon Pilgrim](http://simeonpilgrim.com/blog/2009/11/17/complex-svn-repository-conversion-to-git/) and [Graham Knop](http://blogs.perl.org/users/graham_knop/2010/10/converting-complex-svn-repositories-to-git.html) have both written some lengthy blog posts on the subject) but it looks like it could be a pretty time consuming activity to ensure that the full history of the KRoC repository is available. Once we figure out whether it is worth trying to keep the full history or leave the sub-projects history out (and refer to the original Subversion repository) then the repository will appear on Github as one of the [Concurrency organisation's](https://github.com/concurrency/) repositories and will be available for general cloning.
 

## Raspberry Pi

The Raspberry Pi is a Linux computer (just a very small one) so compiling the tools was a reasonably straightforward task.
We left it compiling for some time while we sampled a few different beers and when we got back we had a full toolchain built and ready for use.
Unlike some platforms (like Arduino), our port to the Raspberry Pi is 'self-hosted', in other words, we can compile and run occam-pi code on the Raspberry Pi directly (in fact, this has been our preferred way of working with it so far, over SSH)

Being an embedded platform, interfacing with hardware peripherals on the board is quite important. There are abstractions we can use, such as the [GPIO](http://en.wikipedia.org/wiki/General_Purpose_Input/Output) modules contained in the kernel (that we use for the current version of the digital.module) but having a unified way of setting up/using these peripherals seems like a better way in the long run so we will look into ways we can remove some of these abstractions and do things directly from within the occam-pi modules. This is very much a work in progress though, so keep an eye out for latest updates.

Here are some obligatory concurrent blinkenlights for your viewing pleasure:

<iframe src="http://player.vimeo.com/video/43507006?color=c40e11" width="500" height="281" frameborder="0" webkitAllowFullScreen="true" mozallowfullscreen="true" allowFullScreen="true"><p><a href="http://vimeo.com/43507006">occam-pi Blinkenlights on the Raspberry Pi</a> from <a href="http://vimeo.com/panicator">clj</a> on <a href="http://vimeo.com">Vimeo</a>.</p>
</iframe>


We don't actually have stuff where they should be with the impending repository move on the horizon so drop an email to our [developers' list](http://concurrency.cc/docs/mailinglists) if you'd like to learn more.

It's something of a tradition to run a simple occam-pi program called `commstime.occ` on any new port, which does nothing particularly useful other than calculate context switch times.
For posterity, we'll report those numbers here:

    Sequential delta? yes
    Last value received = 1000015
    Time = 10686591 microsecs
    Time per loop = 10686 nanosecs
    Context switch = 2671 nanosecs

In conclusion the hackathon has been a great success -- much (awesome) beer drunk, port completed, website ported and blinkenlights err... blinked.
If you're interested in getting involved at the (inevitable) next one, or with the project in general the best place to start is sending a mail to [developers list](http://concurrency.cc/docs/mailinglists) and introducing yourself.
