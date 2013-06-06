---
layout: foundation
title: New Index
---

{% for p in site.posts %}
<hr>
<h3>{{p.title}}</h3>
<hr>
{{p.content}}
{% endfor %}
