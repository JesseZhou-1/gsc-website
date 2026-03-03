---
layout: single
permalink: /
title:
author_profile: false
comments: false
---

<p class="ssr-intro">The Society for Social Research (SSR) was founded in the early 1920s by the Department of Sociology at the University of Chicago as a collegial research group for advanced graduate students and faculty. Today, SSR serves as the official representative of the department's graduate students, aka, graduate student council. Through SSR, students are active on committees from faculty hiring to the future of the program.</p>

{% assign updates = site.data.minutes_items | concat: site.data.surveys_items | concat: site.data.key_info_items | concat: site.data.funding_items %}
{% assign updates = updates | sort: "date" | reverse %}

<h2 class="ssr-section-heading">Recent Posts</h2>
{% include resource-list.html items=updates empty_message="No updates have been posted yet." show_section=true %}
