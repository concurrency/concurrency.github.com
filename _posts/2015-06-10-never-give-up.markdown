---
layout: post
author: "Matt Jadud"
title: "NEVER GIVE UP"
---

The life of faculty is a busy one; keeping up with hacking code is hard when you're busy teaching others how to hack code, and constantly working on projects that provide them with authentic learning opportunities. C'est la vie.

That said, a few people have contacted me recently about the occam-pi tools for the Arduino. Well, to be honest, "a few" means "a couple," which really means two. One is someone I do not know personally (from Spain), and the second is someone I know because they discovered the tools some time ago, and wanted those tools to work again.

Unfortunately, the KRoC build is tricky... there's no one command that "just builds" everything for the Arduino. (That's a Joel Test failure: can you build and deploy in one step? *Nope...*) So, two years ago, I had experimented with hosting the compiler. I wrote a really complex server, and it worked poorly. There was a port leak, I think.

This past weekend, I rewrote the server, giving it just one endpoint (instead of 6), and simplified the whole process. I wrote a new command-line driver that used this protocol. At this point, I had a 6-hour hack that "worked." I then scriped a few thousand runs, and watched RAM and resource useage: everything stayed stable. Win.

The next day, I decided we still needed a GUI. I had written one two years ago, but I was afraid of the bitrot. As it happens, I had written in (during my overzealous over-complication of the code) enough abstraction layers that my configuration and 'net access was all abstracted away. So, a few changes to accommodate the differences in the new backend, and the IDE worked. As we say at Berea: **HUZZAH**.

At that point, I assumed the build process would "just work," because it just invoked some compilers and bundling tools. And... it did. I even had the VM laying around that was used for the Windows build. (Hooray for large hard drives.) I did a "git pull," and ran the build scripts. A few small tweaks were called for, but within the hour, I had both a Mac and Windows distributable build. (Perhaps it was three hours... there were path issues on Windows.)

That's the long way to say that we have new, working versions of the Plumb IDE for occam. It only targets FTDI-based m328p devices (old-school Arduinos) and the Uno-family of devices (Uno, Motino, etc.). I will be testing 3.3V devices later today. I will work on 32u4-based devices later.

For now, though, we have an occam environment for the Arduino again. If you pick it up and have questions, drop a note to the users@concurrency.cc mailing list, or to me personally if you get bounced from there... we have some aggressive filtering because of SPAM.

For your pleasure, you can visit the [Downloads](/downloads/) section and grab the most recent version of the Windows or Mac build. Linux (in the form of a Dockerized goodness) will be coming soon.

The image below hung for years in my father's machine shop, clearly a photocopy even then. It remains true: never give up.

<center>
	<img src="images/never-give-up.jpg">
</center>
