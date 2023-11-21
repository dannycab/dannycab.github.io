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
  border: 1px solid #ccc;
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
</style>

I work with several research groups that focus on different aspects of education.

* [The Physics Education Research Lab](https://perl.natsci.msu.edu) conducts a variety of research into students' relationships with physics, how tools and environments shape those relationships, and the conditions that can influence or moderate those relationships.
* [The Learning Machines Labs](https://learningmachineslab.github.io) conducts education research using the tools of data science and machine learning to develop quantitative evidence for educational claims. It focuses its efforts on STEM education research.
* [The Center for Computing in Science Education](https://www.mn.uio.no/ccse/english/) conducts research into students' learning of computing in science environments and studies the tools and conditions that lead to different forms of learning. This research is conducted almost exclusively in Norway.
* [The Computational Education Research Lab](https://msu-cerl.github.io) conducts research into student learning and engagement in computational and data science and the environments and conditions that shape that learning and participation.

## projects

<ul class="project-grid">
  {% for project in site.projects %}
    <li class="project-card">
      <img src="{{ site.baseurl }}{{ project.img }}" alt="{{ project.title }}">
      <h2>{{ project.title }}</h2>
      <p>{{ project.description }}</p>
      <a href="{{ site.baseurl }}{{ project.url }}">View Project</a> 
    </li>
  {% endfor %}
</ul>



## colloquium talks

I have given a number of presentations about my research. Here's a sample of some of the more recent ones.

<ul>
{% for talk in site.talks %}
  <li>
    <strong>{{ talk.title }}</strong>: <!-- Assuming you set the title in the front matter of the Markdown/HTML files -->
    <a href="../assets{{ talk.url | relative_url }}index.html">View Talk</a> |
    <a href="../assets{{ talk.url | relative_url | replace: 'index.html'}}{{ talk.file}}">Download PDF</a>
  </li>
{% endfor %}
</ul>
