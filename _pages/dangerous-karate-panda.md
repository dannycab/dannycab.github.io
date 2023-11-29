---
layout: default
title: Dangerous Karate Panda
permalink: /gallery/dangerous-karate-panda/
directory_name: dangerous-karate-panda
---

<!-- Had to be here to work on github pages -->
<style>

.images hr {
  margin: 20px 0;
  height: 1px;
  background-color: #2591B3;
}

</style>

<div class="images">
<h2>{{ page.directory_name }}</h2>
{% for item in site.data.image_directories %}
  {% if item.name == page.directory_name %}
    <p>{{ item.description }}</p>
  {% endif %}
{% endfor %}
<hr>

<div class="image-grid">
  {% for file in site.static_files %}
    {% if file.path contains 'assets/img/' and file.path contains page.directory_name and file.path contains '800' %}
      <a href="{{ file.path | replace: '800', '1400' }}">
        <img src="{{ file.path }}" alt="{{ file.name }}" />
      </a>
      <hr>
    {% endif %}
  {% endfor %}
</div>
</div>
