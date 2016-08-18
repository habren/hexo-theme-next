{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}
  {{ config.title }} - {{ theme.keywords }}
{% endblock %}

{% block page_class %}
  {% if is_home() %} page-home {% endif %}
{% endblock %}

{% block content %}
  <section id="posts" class="posts-expand">
    {% set posts_normal = page.posts %}
    {% if theme.sticky %}
      {% if page.current === 1 %}
        {% set posts_sticky = site.posts.find({sticky: { '$gt': 0 }}) %}
        {% set posts_sticky = posts_sticky.sort('-sticky') %}
        {% for post in posts_sticky %}
          {{ post_template.render(post, true) }}
        {% endfor %}
      {% endif %}

      {% set posts_normal = page.posts.find({'$not': {sticky: { '$gt': 0 }}}) %}
    {% endif %}

    {% for post in posts_normal %}
      {{ post_template.render(post, true) }}
    {% endfor %}
  </section>

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
