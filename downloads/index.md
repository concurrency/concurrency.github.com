---
layout: default
title: Grab and Go!
---

## Plumb for the Arduino

First, grab Plumb, which will let you run write occam programs and run them on your Arduino. 

* [Plumb for Mac (ver. 130620)][mac-plumb]
* [Plumb for Windows (ver. 130620)][windows-plumb]

[mac-plumb]: http://jadud.com/downloads/Plumb-20130620.dmg
[windows-plumb]: http://jadud.com/downloads/Plumb-20130620.zip

Drag-and-drop the app (Mac) or folder (Windows) somewhere, pin it to your dock/start menu. Plug in your Arduino, launch the app, and you're almost ready to go.

<p align="center">
  <img src="/images/plumb-editor.png">
</p>

## Quickstart

1. Open Plumb.
1. From the "Examples" menu, under "Testing," select the program that blinks pin 13 on and off.
1. Save this somewhere as a .occ file.
1. Send it to your Arduino!

The first upload will take a while, because we're doing a lot of work; each time you send your code after that, it will go much faster.

There's no issues in flipping back-and-forth between Plumb and the Arduino environment; we're just uploading (somewhat special) sketches.

As of June 2013, **we support the following members of the Arduino family**:

<table>
<tr><td width='80px'>  <b>V</b> </td> <td width='80px'>  <b>MHz</b> </td> <td width='80px'>  <b>CPU</b> </td> <td>  <b>Boards</b> </td></tr>
<tr><td colspan='4'><hr/></td></tr>
<tr><td>  5 </td> <td>  16  </td> <td>  328 </td> <td>  Duemilanove, Freeduino, Nano 3.0, Pro Mini </td></tr>
</table>

<p> &nbsp; </p>

Ordered and coming soon:


<table>
<tr><td width='80px'>  <b>V</b> </td> <td width='80px'>  <b>MHz</b> </td> <td width='80px'>  <b>CPU</b> </td> <td>  <b>Boards</b> </td></tr>
<tr><td colspan='4'><hr/></td></tr>
<tr><td>  3.3 </td> <td>  8 </td> <td>  328 </td> <td>  Mini </td> </tr>
<tr><td>  5 </td> <td>  16 </td> <td>  2560 </td> <td>  Mega </td></tr>
<tr><td>  5 </td> <td>  16 </td> <td>  328 </td> <td>  Uno </td> </tr>
<tr><td>  5 </td> <td>  16 </td> <td>  32u8 </td> <td>  Leonardo </td> </tr>
</table>


{% comment %}
## Tutorials

We're developing a series of video and text tutorials to help you explore parallel programming with your Arduino.
{% endcomment %}

## Explore!

Once you open plumb, you can use the "Help" menu to pop open some examples as well as browse documentation that will get you started.

We also have a [number of docs and books that you might find useful][docs]. Please feel encouraged to [join our mailing list and ask questions][userlist], or ping us [@concurrencycc][ccc] for help. (Extended queries are best asked on-list, but we're listening and keen to help!)

[ccc]: http://twitter.com/concurrencycc
[docs]: /docs
[userlist]: http://lists.concurrency.cc/mailman/listinfo/users

## The Source

Plumb is open source software. Check us out on [Github](http://github.com/concurrencycc).

If you want to contribute, [join our developers list][developers] and we'll do our best to help you pitch in!

[developers]: http://lists.concurrency.cc/mailman/listinfo/developers

{% comment %}
### A Text Editor

Before you can do anything, you're going to need a text editor. Word or Open Office won't cut it; this is code, not prose.

We have a version of GEdit you can download for Mac and Windows. These versions include syntax highlighting for occam, which is very handy.


* [GEdit for Mac][mac-gedit]
* [GEdit for Windows][windows-gedit]

[mac-gedit]: http://jadud.com/downloads/gedit.app.zip
[windows-gedit]: http://jadud.com/downloads/gedit-win.zip

## Getting Started 

Using Plumb is easy-peasy. We have a 30 second video that shows you everything you need to know.

**ADD VIDEO HERE**

### Configuring GEdit

GEdit has some really nice features when it comes to writing code. This 30 second video walks you through choosing options that will make your programming experience all that much better!

**ADD VIDEO HERE** 
{% endcomment %}
