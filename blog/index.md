---
layout: page
permalink: /blog/
title: Blog
weight: 4
---

<ol>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      <span class="post-date">{{ post.date | date: '%b %d, %Y' }}</span>
    </li>
  {% endfor %}
</ol>