---
layout: post
author: Matt Jadud
title: Ubuntu packages ready for testing
---
<p align="center">
<img src="/images/ubuntu-clear.jpg"/>
</p>

I can't say that they're perfect, nor can I say that they would make it into the Ubuntu repository. I made these packages, and by "made" I mean "hammered them out of a block of granite until they were so many tiny little shards of granite all over the place." They are not art, they are not to be admired.

But, they do seem to work on the one virtual machine that I have tested them on over and over. And, so far, I haven't removed anything from my system or left it in an inoperable state. *Yet*.

### To use this thing of beauty

Under Ubuntu, you should be able to install our package and have all requirements automatically installed. Java, some tools for Arduino programming, and a number of other packages end up being installed. To get started, you need to add our dev repository to your apt sources:


> sudo vim /etc/apt/sources.list

(Feel free to use your editor of choice.) Next, you need to add our repository. This depends on your version  of Ubuntu; you can find out what to use by running the following:

> uname -a

<ul>
	<li> <strike>Lucid Lynx (10.04), amd64</strike> <br/>
		<strike>This is a 64-bit version of the most recent Ubuntu. Add this line:</strike><p/>
		<code>
			<strike>deb http://download.transterpreter.org/files/dev/ubuntu/lucid/amd64 binary/</strike>
		</code> 
		<p/>
		<em>64-bit packages will be updated after OSCON.</em>
	</li>	

	<li> <strong>Lucid Lynx (10.04), i386/686</strong> <br/>
		This is a 32-bit version of the most recent Ubuntu. Add this line:<p/>
		<code>
			deb http://download.transterpreter.org/files/dev/ubuntu/lucid/i386 binary/
		</code> 
	</li>
	<li> <strong>Jaunty Jackalope (9.04), i386/686</strong><br/>
		This is a 32-bit version of the last version of Ubuntu. Add this line:<p/>
		<code>
			deb http://download.transterpreter.org/files/dev/ubuntu/jaunty/i386 binary/
		</code> 
	</li>
</ul>

After you add that to your sources.list, you should be able to run:


> sudo apt-get update

You can install our meta-package, which will pull in several more:


> sudo apt-get install occam-pi

This pulls in packages for a native version of occam-pi, a version running on our virtual machine (called the Transterpreter), a version for the Arduino, and a plug-in for jEdit that we call occPlug. they are all prefixed with the name *occam-pi*, so they are easy to find if you want to get rid of them.

**Note**: We will, someday, be updating these packages, or even (hopefully) getting source packages into the Ubuntu repositories. When that happens, the repository you just added will need to be removed. But, we don't expect that to happen before the new year, so rest easy.

### Using occam-pi
On the command-line, type:

> jedit

Now, go to the **Plugins** menu, find *occPlug*, and say **Start occPlug**. After it opens up, close jEdit.

After you have started the occPlug, and closed jEdit, go ahead and open it again and continue. (The first time you run the occPlug, it does some configuration that we shouldn't do in the package.)

At this point, you can start exploring the [book](http://concurrency.cc/book)... but, note, it needs some updating. That's next on the list as we finish getting ready for OSCON. In the meantime, you can look at the examples in our [OSCON examples directory](http://projects.cs.kent.ac.uk/projects/kroc/trac/browser/kroc/trunk/tvm/arduino/occam/examples/oscon), which all work against the newest versions of Plumbing.

Let us know how you get on on the [users mailing list](http://www.concurrency.cc/docs/mailinglists); your feedback is very welcome. 
