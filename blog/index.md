---
layout: page
permalink: /blog/
title: Blog
weight: 4
---

{% capture number_of_posts %}{{ site.posts | size }}{% endcapture %}

{% if number_of_posts == "0" %}
   There are currently no posts. Come back soon!
{% else %}
  <ol>
    {% for post in site.posts %}
      <li>
	<a href="{{ post.url }}">{{ post.title }}</a>
	<span class="post-date">{{ post.date | date: '%b %d, %Y' }}</span>
      </li>
    {% endfor %}
  </ol>
{% endif %}