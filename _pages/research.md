---
layout: page
title: research
permalink: /research/
#description: A growing collection of your cool projects.
nav: true
nav_order: 2
#display_categories: [work, fun]
horizontal: false
---

<style>

.project-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 20px;
}

.project-card {
  border: 0px dotted #ccc;
  padding: 20px;
}

.project-card img {
  max-width: 100%;
  height: auto;
  margin-bottom: 10px;
}

.project-card h2 {
  font-size: 1.2em;
  margin-bottom: 10px;
}

.project-card p {
  font-size: 1em;
}

.project-grid li {
  list-style: none;
}
</style>

## groups

I work with several research groups that focus on different aspects of education.

* [The Physics Education Research Lab](https://perl.natsci.msu.edu) conducts a variety of research into students' relationships with physics, how tools and environments shape those relationships, and the conditions that can influence or moderate those relationships.
* [The Computational Education Research Lab](https://msu-cerl.github.io) conducts research into student learning and engagement in computational and data science and the environments and conditions that shape that learning and participation.
* [The Center for Computing in Science Education](https://www.mn.uio.no/ccse/english/) conducts research into students' learning of computing in science environments and studies the tools and conditions that lead to different forms of learning. This research is conducted almost exclusively in Norway.

## presentations

I've given a number of presentations about my research. Here's a sample of some of the more recent ones.

<ul>
{% for talk in site.talks %}
  <li>
    <strong>{{ talk.title }}</strong>: <!-- Assuming you set the title in the front matter of the Markdown/HTML files -->
    <a href="../assets{{ talk.url | relative_url }}index.html">View Talk</a> |
    <a href="../assets{{ talk.url | relative_url | replace: 'index.html'}}{{ talk.file}}">Download PDF</a>
  </li>
{% endfor %}
</ul>

## projects

I've worked on a few projects. Here are some recent ones. Here's some [older ones](#older).

### current

<ul class="project-grid">
{% assign sorted_projects = site.projects | sort: "importance" %}
  {% for project in sorted_projects %}
    {% if project.current %}
      <li class="project-card">
        {% if project.img %}
          <img src="{{ site.baseurl }}{{ project.img }}" alt="{{ project.title }}">
        {% endif %}
        <h2>{{ project.title }}</h2>
        <p>{{ project.description }}</p>
        {% if project.link %}
          <a href="{{ project.link }}">View Project</a>
        {% else %}
        Coming soon.
        {% endif %} 
      </li>
    {% endif %}
  {% endfor %}
</ul>

## older

<ul class="project-grid">
  {% assign sorted_projects = site.projects | sort: "importance" %}
  {% for project in sorted_projects %}
    {% if project.archived %}
      <li class="project-card">
        {% if project.img %}
          <img src="{{ site.baseurl }}{{ project.img }}" alt="{{ project.title }}">
        {% endif %}
        <h2>{{ project.title }}</h2>
        <p>{{ project.description }}</p>
        {% if project.link %}
          <a href="{{ project.link }}">View Project</a>
        {% else %}
        Coming soon.
        {% endif %} 
      </li>
    {% endif %}
  {% endfor %}
</ul>