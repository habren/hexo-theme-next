{% if page.comments %}
  <div class="comments" id="comments">
    {% if (theme.duoshuo and theme.duoshuo.shortname) or theme.duoshuo_shortname %}
      <div class="ds-thread" data-thread-key="{{ page.path }}"
           data-title="{{ page.title }}" data-url="{{ page.permalink }}" data-author-key="{{ theme.duoshuo_info.data_author_key }}">
      </div>
    {% elseif theme.facebook_sdk.enable and theme.facebook_comments_plugin.enable %}
      <div class="fb-comments"
           data-href="{{ page.permalink }}"
           data-numposts="{{ theme.facebook_comments_plugin.num_of_posts }}"
           data-width="{{ theme.facebook_comments_plugin.width }}"
           data-colorscheme="{{ theme.facebook_comments_plugin.scheme }}">
      </div>
    {% elseif theme.vkontakte_api.enable and theme.vkontakte_api.comments %}
      <div id="vk_comments"></div>
    {% elseif theme.disqus.enable %}
      
      <link rel="stylesheet" href="/css/iDisqus.min.css" />
      <script src="/js/src/iDisqus.min.js"></script>

      <input type="checkbox" hidden="true" id="comment-toggle" disabled />
      <div id="comment"></div>
        
        <!--
        <p>本页共有 <span data-disqus-url="/{{ page.path }}"></span> 条评论</p>
        -->

        <!--
        <ul id="popular-posts"></ul>
        -->
        <script>
            var disq = new iDisqus('comment', {
                forum: '{{theme.disqus.shortname}}',
                api: 'http://comments.jasongj.com/disqus',
                site: 'http://www.jasongj.com',
                url: decodeURI('/{{ page.path }}'),
                identifier: decodeURI('/{{ page.path }}'),
                title: '{{ page.title }}',
                slug: '{{ page.path }}',
                mode: 3,
                trust: 'www.jasongj.com',
                timeout: 3000,
                popular: document.getElementById('popular-posts'),
                init: true,
            });
            disq.popular();
            disq.count();
        </script>
    {% elseif theme.hypercomments_id %}
      <div id="hypercomments_widget"></div>
    {% elseif theme.gentie_productKey %}
      <div id="cloud-tie-wrapper" class="cloud-tie-wrapper"></div>
    {% elseif theme.youyan_uid %}
      <div id="uyan_frame"></div>
    {% elseif theme.livere_uid %}
      <div id="lv-container" data-id="city" data-uid="{{ theme.livere_uid }}"></div>
    {% elseif theme.changyan.appid and theme.changyan.appkey %}
      <div id="SOHUCS" sid="{{ page.path }}"></div>
    {% endif %}
  </div>
{% endif %}
