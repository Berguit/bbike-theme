{**
 * BBike Belleville - Footer (Fitadium style)
 *}

<div class="bbike-footer">

  {* MAIN FOOTER *}
  <div class="bbike-footer__main">
    <div class="bbike-footer__inner">

      {* Logo *}
      <div class="bbike-footer__logo">
        <a href="{$urls.base_url}">
          <img src="{$shop.logo}" alt="{$shop.name}" loading="lazy">
        </a>
      </div>

      {* Top Categories *}
      <div class="bbike-footer__col">
        <h3 class="bbike-footer__title">TOP CAT&Eacute;GORIES<span class="bbike-footer__title-bar"></span></h3>
        <ul class="bbike-footer__list">
          <li><a href="#">&rsaquo; Prot&eacute;ines</a></li>
          <li><a href="#">&rsaquo; Br&ucirc;leurs de graisse</a></li>
          <li><a href="#">&rsaquo; Gainers</a></li>
          <li><a href="#">&rsaquo; Meilleures ventes</a></li>
          <li><a href="#">&rsaquo; Promotions</a></li>
          <li><a href="#">&rsaquo; Cr&eacute;atines</a></li>
        </ul>
      </div>

      {* Infos Pratiques *}
      <div class="bbike-footer__col">
        <h3 class="bbike-footer__title">INFOS PRATIQUES<span class="bbike-footer__title-bar"></span></h3>
        <ul class="bbike-footer__list">
          <li><a href="#">&rsaquo; Conditions de vente</a></li>
          <li><a href="#">&rsaquo; Mentions l&eacute;gales</a></li>
          <li><a href="#">&rsaquo; A propos de nous</a></li>
          <li><a href="#">&rsaquo; Livraison et retours</a></li>
          <li><a href="{$urls.pages.contact}">&rsaquo; Contactez-nous</a></li>
        </ul>
      </div>

      {* Mon Compte *}
      <div class="bbike-footer__col">
        <h3 class="bbike-footer__title">MON COMPTE<span class="bbike-footer__title-bar"></span></h3>
        <ul class="bbike-footer__list">
          <li><a href="{$urls.pages.my_account}">&rsaquo; Informations personnelles</a></li>
          <li><a href="{$urls.pages.order_history}">&rsaquo; Commandes</a></li>
          <li><a href="{$urls.pages.addresses}">&rsaquo; Adresses</a></li>
          <li><a href="#">&rsaquo; Bons de r&eacute;duction</a></li>
        </ul>
      </div>

    </div>
  </div>

  {* SOCIAL + PAYMENTS BAR *}
  <div class="bbike-footer__bottom">
    <div class="bbike-footer__inner">

      <div class="bbike-footer__social">
        <span class="bbike-footer__social-title">REJOINS NOUS SUR NOS R&Eacute;SEAUX !</span>
        <div class="bbike-footer__social-icons">
          <a href="#" class="bbike-footer__social-icon" aria-label="Facebook">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FDAF4E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"/></svg>
          </a>
          <a href="#" class="bbike-footer__social-icon" aria-label="Instagram">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FDAF4E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"/><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"/><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"/></svg>
          </a>
          <a href="#" class="bbike-footer__social-icon" aria-label="TikTok">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FDAF4E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 12a4 4 0 1 0 4 4V4a5 5 0 0 0 5 5"/></svg>
          </a>
          <a href="#" class="bbike-footer__social-icon" aria-label="YouTube">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#FDAF4E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22.54 6.42a2.78 2.78 0 0 0-1.94-2C18.88 4 12 4 12 4s-6.88 0-8.6.46a2.78 2.78 0 0 0-1.94 2A29 29 0 0 0 1 11.75a29 29 0 0 0 .46 5.33A2.78 2.78 0 0 0 3.4 19.08c1.72.46 8.6.46 8.6.46s6.88 0 8.6-.46a2.78 2.78 0 0 0 1.94-2 29 29 0 0 0 .46-5.25 29 29 0 0 0-.46-5.41z"/><polygon points="9.75 15.02 15.5 11.75 9.75 8.48 9.75 15.02"/></svg>
          </a>
        </div>
      </div>

      <div class="bbike-footer__payments">
        <span class="bbike-footer__payments-label">VISA</span>
        <span class="bbike-footer__payments-label">PayPal</span>
        <span class="bbike-footer__payments-label">Virement</span>
        <span class="bbike-footer__payments-label">Apple Pay</span>
      </div>

    </div>
  </div>

  {* COPYRIGHT *}
  <div class="bbike-footer__copy">
    <p>&copy; {$smarty.now|date_format:'%Y'} {$shop.name} - Tous droits r&eacute;serv&eacute;s</p>
  </div>

</div>
