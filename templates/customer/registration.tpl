{extends file='page.tpl'}

{block name='page_title'}{/block}

{block name='page_content'}
  <div class="bbike-register">
    <h2 class="bbike-register__title">CR&Eacute;E TON COMPTE</h2>
    <p class="bbike-register__back">Tu as d&eacute;j&agrave; un compte ? <a href="{$urls.pages.authentication}">Connecte-toi !</a></p>

    <div class="bbike-register__form">
      {render file='customer/_partials/customer-form.tpl' ui=$register_form}
    </div>
  </div>
{/block}
