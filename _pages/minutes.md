---
layout: single
title: Minutes
permalink: /minutes/
---

{% assign items = site.data.minutes_items | sort: "date" | reverse %}
{% include resource-list.html items=items empty_message="No minutes have been posted yet." %}
