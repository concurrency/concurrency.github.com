---
layout: page
title: Blog Archive
---

<ul>
    {% for post in site.posts %}
    <li>
        <a href="{{ post.url }}">{{ post.title }}</a> <span style="font-size: 75%; margin-left: 1em; color: #999;">{{ post.author}} - {{ post.date | date:'%B %d, %Y' }}</span>
    </li>
    {% endfor %}
</ul>
