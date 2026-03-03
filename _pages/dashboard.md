---
layout: single
title: Dashboard
permalink: /dashboard/
comments: true
---

<style>
.dashboard-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
  gap: 1rem;
}
.idea-card {
  border: 1px solid #e5e5e5;
  border-radius: 8px;
  padding: 1rem;
  background: #fff;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.04);
}
.idea-card h3 {
  margin-top: 0.4rem;
  margin-bottom: 0.5rem;
  font-size: 1.1rem;
}
.idea-meta {
  margin: 0.35rem 0;
  font-size: 0.9rem;
}
.idea-label {
  font-weight: 600;
}
.idea-status {
  display: inline-block;
  padding: 0.15rem 0.5rem;
  border-radius: 999px;
  background: #f2f2f2;
  font-size: 0.8rem;
}
</style>

{% assign proposals_source = site.data.proposals %}
{% if proposals_source.proposals %}
  {% assign proposals = proposals_source.proposals %}
{% else %}
  {% assign proposals = proposals_source %}
{% endif %}

<div class="dashboard-grid">
{% for item in proposals %}
  {% assign has_specific = item["Do you have a specific date in mind?"] %}
  {% assign specific_date = item["If yes: what's the date?"] %}
  {% assign timeframe = item["If no: about what time are you thinking? (e.g., Around Week 6 Winter Quarter)"] %}
  {% if has_specific == "Yes" and specific_date != "" %}
    {% assign proposed_date = specific_date %}
  {% elsif timeframe != "" %}
    {% assign proposed_date = timeframe %}
  {% else %}
    {% assign proposed_date = "TBD" %}
  {% endif %}
  <div class="idea-card">
    {% if item.status and item.status != "" %}
    <div class="idea-status">{{ item.status }}</div>
    {% endif %}
    <h3>{{ item["Event title"] }}</h3>
    <p class="idea-meta"><span class="idea-label">Overview:</span> {{ item["Event description"] }}</p>
    <p class="idea-meta"><span class="idea-label">Proposed date:</span> {{ proposed_date }}</p>
    <p class="idea-meta"><span class="idea-label">Person proposing:</span> {{ item.Name }}</p>
    <p class="idea-meta"><span class="idea-label">Interest count:</span> {{ item.interest_count }}</p>
  </div>
{% endfor %}
</div>
