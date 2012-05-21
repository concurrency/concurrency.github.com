---
layout: post
author: Christian Jacobsen
title: Arduino Uno Support!!!
---

After having had an [Arduino Uno][uno] sitting on my desk happily accepting
programs from my development build of the Transterpreter, I thought it was
finally time to get the binaries with Arduino Uno released into the wild.

<div align='center'
style='background-color:#cfcfcf;padding-top:10px;padding-bottom:1px;margin-bottom:20px;border: 1px #afafaf solid;'>
<iframe src="http://player.vimeo.com/video/16502929" width="601" height="338"
frameborder="0">
</iframe>
</div>

[Knight Rider on the Arduino Uno - concurrency.cc][video] from [clj](http://vimeo.com/user2164314) on [Vimeo](http://vimeo.com).

[video]: http://vimeo.com/16502929

Quick demo showing a concurrent program running on the Arduino Uno doin' Knight Rider like awesomeness...

The reason that getting the binaries out took so long is that various other bits
have gotten in the way. Changes were required to be able to build 32 bit
versions of the tools on Snow Leopard; the website has moved to a new host; the
Sparkle feed infrastructure (for the Mac) has been updated to include a
changelog; and building software on Windows is just never fun.

But now the Arduino Uno support is finally here. Mac OS X and Windows versions
should update themselves, otherwise you can download the packages from the
[download page](/download). The Ubuntu packages have not yet been updated, but
this should happen at some point in the future (pester Matt about this). Any
problems with the packages should be reported on one of the [mailing
lists](/docs/mailinglists).

Arduino Uno support is available starting with these versions of the
Transterpreter:

* Mac OS X 20101103.1423 (dev)
* Windows 20101104.0001 (dev)
[uno]: http://arduino.cc/en/Main/ArduinoBoardUno
