---
layout: archive
permalink: /numericalcomputation/
title: "Numerical Computation"
author_profile: true
header:
  image: "/images/591905.jpg"
---

I believe an idea that humans are visual creatures and process visual data better than any other kind of data. So I will try to start my posts with the picture that I think explains the topic in a best way possible.

{% for post in site.posts %}
  {% if post.categories contains 'nla' %}
   {% include archive-single.html %}
  {% endif %}
{% endfor %}
