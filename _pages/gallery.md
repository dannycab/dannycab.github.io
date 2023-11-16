---
layout: default
title: gallery
permalink: /gallery/
nav: true
nav_order: 7
---
{% for directory in site.data.image_directories %}
<h2>{{ directory.name }}</h2>
{% for subdirectory in directory.subdirectories %}
<h3>{{ subdirectory }}</h3>
<div class="image-grid">
{% for file in site.static_files %}
{% if file.path contains 'assets/img/gallery/' and file.path contains '800' and file.path contains subdirectory %}
<a href="{{ file.path | replace: '800', '1400' }}">
<img src="{{ file.path }}" alt="{{ file.name }}" />
</a>
{% endif %}
{% endfor %}
</div>
{% endfor %}
{% endfor %}
