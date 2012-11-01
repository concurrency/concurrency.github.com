---
layout: post
author: Renaldo Pierre-Louis, Chad Peruggia
title: Ruby Rewrite PID
---

##Rewriting is FUN!

We have continued our progress into rewriting the old python scripts into ruby following our object model.  We have started to try and decipher the PID controller and how it is interacting with the data from the simulator, some of it makes sense, parts of it don't, mostly what a set_point is.  We can't seem to figure out what this is, or what its purpose is, or why it is always 0 to start.

Due to this, we decided to give ourselves homework, yes you read that correct.  We are going to do some more research into PID's and how they work, then we will attempt to plan out our PID regarding the plane's heading.  This should give us a head start into our class time on Wednesday.

##Challenges

As previously stated, we can't figure out what the set_point is or its purpose.  This is a small challenge, but it is important that we understand all aspects of these controls before we move forward with our plans.  Once we grasp PID's and how they work, we should make steady progress.  We plan to overcome these challenges via homework and personal research.

##Did You Know?

That _self_ is needed in python and not ruby! This might not seem like much, but saving all that time from that four letter word can add up to minutes!

For example:

Ruby: 

{% highlight ruby %}
class myClass 
    def myFunc(name)
        @name = name
    end
end
{% endhighlight %}

Python: 

{% highlight python %}
class myClass
    def myFunc(self, name):
        self.name = name
{% endhighlight %}

For more information read [here](http://stackoverflow.com/questions/2709821/python-self-explained)
