---
layout: default
title: photos
permalink: /photos/
nav: false
---

<h2>dc photos</h2>
<div class="image-grid">
  {% for image in site.static_files %}
    {% if image.path contains "assets/img/dc/" %}
        {% if image.path contains "1400" %}
            <a href="{{image.path}}" data-lightbox="gallery" data-title="{{image.name}}">
            <img src="{{image.path}}" alt="{{image.name}}" /></a>
        {% endif %}
    {% endif %}
  {% endfor %}
</div>