<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.authoricon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>


  {# Display ICP number #}
  {% if config.icp %}
    <span class="copyrightHolder">
      &nbsp; | &nbsp; {{ config.icp }} &nbsp;
    </span>
  {% endif%}

  {# Display site word count #}
  {% if theme.post_wordcount.totalword %}
    <span class="post-count">
      &nbsp; | &nbsp; 总字数 &nbsp; {{ totalcount(site) }}
    </span>
  {% endif%}

  {# Language switch #}
  {% if theme.language_switch.enable %}
    <span class="post-comments-count">
      &nbsp; |  &nbsp;
      <a id="translateLink" href="javascript:translatePage();">繁體中文</a>
    </span>
   {% endif %}
</div>


<!--
<script type="text/javascript" src="http://www.arao.me/js/tw_cn.js"></script>
-->
<script type="text/javascript" src="{{ url_for(theme.js) }}/src/tw_cn.js"></script>
<script type="text/javascript">
var defaultEncoding = 2; //网站编写字体是否繁体，1-繁体中文，2-简体中文
var translateDelay = 0; //延迟时间,若不在前, 要设定延迟翻译时间, 如100表示100ms,默认为0
var cookieDomain = "http://www.jasongj.com/"; //Cookie地址, 一定要设定, 通常为你的网址
var msgToTraditionalChinese = "繁體中文"; //此处可以更改为你想要显示的文字
var msgToSimplifiedChinese = "简体中文"; //同上，但两处均不建议更改
var translateButtonId = "translateLink"; //默认互换id
translateInitilization();
</script>

{% block footer %}{% endblock %}
