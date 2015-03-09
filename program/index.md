---
layout: page
section: blog
description: Výchozí stránka táborské pirátské buňky s nejnovějšími články a základním rozcestníkem.
keywords: piráti, tábor, organizace, transparence, politika
---


## html_pages
{% for item in site.html_pages %}
{{ item.title }}
{% endfor %}

## all events
{% for item in site.categories.akce %}
  {{ item.title }}
{% endfor %}

## taborske posty
{% for item in site.categories.tabor %}
  {{ item.title }}
{% endfor %}

## RV

{% for page in site.pages %}
{% for tag in page.tags %}
{% if tag == "RV" %}
{{ page.title }}
{% endif %}
{% endfor %}
{% endfor %}
