---
layout: default
title: ❤️ lansing
permalink: /lansing/
nav: true
nav_order: 7
---

<h2>❤️❤️❤️</h2>
<h3>lansing is a lovely place.</h3>
<div class="image-gallery">
  {% for image in site.static_files %}
    {% if image.path contains "assets/img/lansing/" %}
        {% if image.path contains "480" %}
            <a href="{{image.path}}" data-lightbox="gallery" data-title="{{image.name}}">
            <img src="{{image.path}}" alt="{{image.name}}" /></a>
        {% endif %}
    {% endif %}
  {% endfor %}
</div>