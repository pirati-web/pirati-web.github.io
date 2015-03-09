---
layout: default
section: blog
description: Výchozí stránka táborské pirátské buňky s nejnovějšími články a základním rozcestníkem.
keywords: piráti, tábor, organizace, transparence, politika
---

<section class="hero">
  <div class="row alert-box secondary">

    <div class="small-4 columns">
      <div data-alert class="">
        <p>Strucny popis, primarni kampane</p>

        <a href="/lide/" class="primary button test">Klikni pro více info →</a>
      </div>
    </div>
    <div class="small-8 columns">
      <img src="http://www.pirati.cz/_media/mo/web_ttipmensi.png.jpg">
    </div>

  </div>
</section>

<section role="main">
  <div class="row">

    <div class="small-12 large-6 columns">

      <h2>{{page.title}}</h2>

      <h3><a href="/program">Program</a></h3>
      Ohnisko
      Demokratické minimum
      Pirátské dvanáctero

      <h3><a href="/tiskove-zpravy">Tiskové zprávy</a></h3>

      {% for item in site.categories.tz limit:4 %}
        {% include articlesumary.html %}
      {% endfor %}

      <h3><a href="http://www.youtube.com/CeskaPiratskaStrana">Videa</a></h3>

    </div>


    <div class="small-12 large-6 columns">

      <h3><a href="/akce">Akce</a></h3>  
      {% for item in site.categories.akce limit:5 %}
        {% include eventsumary.html %}
      {% endfor %}

      <h3><a href="/fo/seznam_uctu">Otevřené účetnictví</a></h3>
      TODO: feed z uctu

    </div>

  </div>
</section>
