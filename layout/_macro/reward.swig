{% if theme.reward.alipay or theme.reward.wechatpay %}
  <div style="padding: 10px 0; margin: 20px auto; width: 90%; text-align: center;">
    <div>{{ theme.reward.comment }}</div>
    <button id="rewardButton" disable="enable" onclick="var qr = document.getElementById('QR'); if (qr.style.display === 'none') {qr.style.display='block';} else {qr.style.display='none'}" style="cursor: pointer; border: 0; outline: 0; border-radius: 100%; padding: 0; margin: 0; letter-spacing: normal; text-transform: none; text-indent: 0px; text-shadow: none">
      <span onmouseover="this.style.color='rgb(236,96,0)';this.style.background='rgb(204,204,204)'" onMouseOut="this.style.color='#fff';this.style.background='rgb(236,96,0)'" style="display: inline-block; width: 70px; height: 70px; border-radius: 100%; line-height: 81px; color: #fff; font: 400 35px/75px 'microsofty'; background: rgb(236,96,0)">赞</span>
    </button>
    <div id="QR" style="display: none;">
      {% if theme.reward.wechatpay %}
        <div id="wechat" style="display: inline-block">
          <img id="wechat_qr" src="{{ theme.reward.wechatpay }}" alt="{{ theme.reward.author }} WeChat Pay" style="width: 200px; max-width: 100%; display: inline-block"/>
          <p>微信赞赏</p>
        </div>
      {% endif %}
      {% if theme.reward.alipay %}
        <div id="alipay" style="display: inline-block">
          <img id="alipay_qr" src="{{ theme.reward.alipay }}" alt="{{ theme.reward.author }} Alipay" style="width: 200px; max-width: 100%; display: inline-block"/>
          <p>支付宝赞赏</p>
        </div>
      {% endif %}
    </div>
  </div>
{% endif %}
