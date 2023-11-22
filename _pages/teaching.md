---
layout: page
permalink: /teaching/
title: teaching
#description: Materials for courses you taught. Replace this text with your description.
nav: true
nav_order: 3
---

<style>
    .research hr {
  margin: 20px 0;
  height: 1px;
  background-color: #2591B3;
}

</style>

### present and future courses
<ul>
{% for course in site.data.courses %}
{% if course.active %}
<li>{{ course.semester }} - 
{% if course.url %}
<a href="{{ course.url }}">{{ course.name }}</a>
{% else %}
{{ course.name }}
{% endif %}
</li>
{% endif %}
{% endfor %}
</ul>

<div class="research"><hr></div>

### past courses
<ul>
{% for course in site.data.courses %}
{% if course.active == false %}
<li>{{ course.semester }} - 
{% if course.url %}
<a href="{{ course.url }}">{{ course.name }}</a>
{% else %}
{{ course.name }}
{% endif %}
</li>
{% endif %}
{% endfor %}
</ul>

<div class="research"><hr></div>

### other teaching things

* **I love helping people learn.** I was fortunate to be selected by MSU for [a video highlighting my commitment to teaching](https://inv.tux.pizza/watch?v=xkZooG2Nk8Q). The video stars students from the Spring 2019 PHY 482 class.
* **Do you need a recommendation letter?** Please go to [this page](/recletter/) for more information. The more information you can provide, the better letter I can write.
