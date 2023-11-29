---
layout: default
title: gallery
permalink: /gallery/
nav: true
nav_order: 7
---
<!-- Had to be here to work on github pages -->
<style>

.image-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
  grid-gap: 10px;
}

.image-grid img {
  width: 100%;
  height: auto;
}

.gallery hr {
  margin: 20px 0;
  height: 1px;
  background-color: #2591B3;
}

</style>

<div class="gallery">
  {% for item in site.data.image_directories %}
    <h2><a href="{{item.name}}/">{{ item.name }}</a></h2>
    <p>{{ item.description }}</p>
    <div class="image-grid">
      {% for file in site.static_files %}
        {% if file.path contains 'assets/img/' and file.path contains item.name and file.path contains '480' %}
          <a href="{{ file.path | replace: '480', '1400' }}">
            <img src="{{ file.path }}" alt="{{ file.name }}" />
          </a>
        {% endif %}
      {% endfor %}
    </div>
    <hr>
  {% endfor %}
</div>




