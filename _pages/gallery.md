---
layout: default
title: gallery
permalink: /gallery/
nav: true
nav_order: 7
---
<!-- Had to be here to work on github pages -->
<style>
.gallery {
  margin: 20px;
}

.image-grid-item {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(500px, 1fr));
  grid-gap: 10px;
  margin-bottom: 20px;
  border: 0px solid #ddd;
  padding: 10px;
}

.image-grid-item hr {
  margin: 20px 0;
  height: 1px;
  background-color: #2591B3;
}

.image-grid-item img {
  width: 80%;
  height: auto;
  grid-column: span 2; /* Makes the image span two columns */
}

.image-grid-item h2, .image-grid-item p {
  grid-column: span 2; /* Makes the text span two columns */
}

.gallery hr {
  margin: 20px 0;
  height: 1px;
  background-color: #2591B3;
}
</style>


<div class="gallery">
  {% for item in site.data.image_directories %}
    <div class="image-grid-item">
      <h2>gallery/{{ item.name }}/</h2>
      <p>{{ item.description }}</p>
      {% for file in site.static_files %}
        {% if file.path contains 'assets/img/' and file.path contains item.name and file.path contains '800' and file.path contains '01' %}
          <a href="{{ item.name }}/">
            <img src="{{ file.path }}" alt="{{ file.name }}" />
          </a>
        {% endif %}
      {% endfor %}
    </div>
    <hr>
  {% endfor %}
</div>





