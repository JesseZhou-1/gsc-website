---
layout: single
title: Board Member
permalink: /board-member/
---

{% assign board_roles = "Co-Chair|Finance & Operation Chair|Activity Chair" | split: "|" %}

{% for role_name in board_roles %}
## {{ role_name }}

{% assign members = site.data.board_members | where: "role", role_name %}
<div class="ssr-people-grid">
  {% for member in members %}
  <article class="ssr-person-card">
    {% if member.image and member.image != "" %}
    <div class="ssr-person-card__media">
      <img
        class="ssr-person-card__image"
        src="{{ member.image | relative_url }}"
        alt="{{ member.name }} portrait"
        loading="lazy"
        referrerpolicy="no-referrer"
        onerror="this.style.display='none'; this.nextElementSibling.style.display='flex';"
      >
      <div class="ssr-person-card__placeholder ssr-person-card__placeholder--fallback" role="img" aria-label="Photo placeholder for {{ member.name }}">Photo unavailable</div>
    </div>
    {% else %}
    <div class="ssr-person-card__placeholder" role="img" aria-label="Photo placeholder for {{ member.name }}">Photo coming soon</div>
    {% endif %}
    <div class="ssr-person-card__body">
      <h3 class="ssr-person-card__name">{{ member.name }}</h3>
      <p class="ssr-person-card__title">{{ member.title }}</p>
      <p class="ssr-person-card__role">{{ member.role }}</p>
      <p class="ssr-person-card__email"><a href="mailto:{{ member.email }}">{{ member.email }}</a></p>
    </div>
  </article>
  {% endfor %}
</div>
{% endfor %}
