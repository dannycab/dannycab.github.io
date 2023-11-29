---
layout: default
title: gallery
permalink: /gallery/
nav: true
nav_order: 7
---
<!-- Had to be here to work on github pages -->
<!-- Had to be here to work on github pages -->
<style>

.images hr {
  margin: 20px 0;
  height: 1px;
  background-color: #2591B3;
}

</style>

<div class="images">
  {% for item in site.data.image_directories %}
      <h2>gallery/{{ item.name }}/</h2>
      <p>{{ item.description }}</p>
      {% for file in site.static_files %}
        {% if file.path contains 'assets/img/' and file.path contains item.name and file.path contains '800' and file.path contains '01' %}
          <a href="{{ item.name }}/">
            <img src="{{ file.path }}" alt="{{ file.name }}" />
          </a>
        {% endif %}
      {% endfor %}
    <hr>
  {% endfor %}
</div>





