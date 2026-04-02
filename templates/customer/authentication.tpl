{extends file='page.tpl'}

{block name='page_title'}{/block}

{block name='page_content'}
  <div class="bbike-auth">

    {* LEFT: LOGIN *}
    <div class="bbike-auth__login">
      <h2 class="bbike-auth__title">D&Eacute;J&Agrave; CLIENT ?</h2>
      <p class="bbike-auth__subtitle">Connectez-vous &agrave; votre compte</p>

      {block name='login_form_container'}
        <section class="login-form">
          {render file='customer/_partials/login-form.tpl' ui=$login_form}
        </section>
      {/block}

      {block name='display_after_login_form'}
        {hook h='displayCustomerLoginFormAfter'}
      {/block}
    </div>

    {* SEPARATOR *}
    <div class="bbike-auth__sep"></div>

    {* RIGHT: REGISTER *}
    <div class="bbike-auth__register">
      <h2 class="bbike-auth__title">NOUVEAU CLIENT ?</h2>
      <p class="bbike-auth__subtitle">Cr&eacute;ez votre compte et profitez de nombreux avantages :</p>

      <ul class="bbike-auth__benefits">
        <li>
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FDAF4E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
          <span>Suivi de vos commandes en temps r&eacute;el</span>
        </li>
        <li>
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FDAF4E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
          <span>Acc&egrave;s &agrave; vos offres sp&eacute;ciales et codes promo</span>
        </li>
        <li>
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FDAF4E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
          <span>Passage de commande acc&eacute;l&eacute;r&eacute;</span>
        </li>
        <li>
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FDAF4E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
          <span>Gestion de vos adresses et moyens de paiement</span>
        </li>
        <li>
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FDAF4E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
          <span>Newsletter et conseils exclusifs</span>
        </li>
      </ul>

      <a href="{$urls.pages.register}" class="bbike-auth__create-btn" data-link-action="display-register-form">
        CR&Eacute;ER MON COMPTE
      </a>
    </div>

  </div>
{/block}
