{**
 * BBike Belleville - Header (Classic structure, Fitadium layout)
 * Hooks preserved, layout reorganized via CSS
 *}

{block name='header_banner'}
  <div class="bbike-promo-bar">
    <span><strong>-20&euro; DE REMISE IMM&Eacute;DIATE</strong> d&egrave;s 150&euro; d'achat sur tout le site ! | CODE : <strong>BBIKE20</strong></span>
  </div>
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <nav class="header-nav bbike-header-nav">
    <div class="container">
      <div class="bbike-topbar">
        <div class="bbike-topbar__left">
          <span class="bbike-topbar__flag">&#127467;&#127479;</span>
        </div>
        <div class="bbike-topbar__center">
          <span>Made with <span class="bbike-topbar__heart">&hearts;</span> in Val Thorens</span>
        </div>
        <div class="bbike-topbar__right">
          {hook h='displayNav2'}
          <a href="{$urls.pages.contact}" class="bbike-topbar__link">Aide &amp; Contact</a>
        </div>
      </div>
      {* Mobile header *}
      <div class="hidden-md-up text-sm-center mobile">
        <div class="float-xs-left" id="menu-icon">
          <i class="material-icons d-inline">&#xE5D2;</i>
        </div>
        <div class="float-xs-right" id="_mobile_cart"></div>
        <div class="float-xs-right" id="_mobile_user_info"></div>
        <div class="top-logo" id="_mobile_logo"></div>
        <div class="clearfix"></div>
      </div>
    </div>
  </nav>
{/block}

{block name='header_top'}
  <div class="header-top bbike-header-top">
    <div class="container">
      <div class="row bbike-header-main">
        {* Logo *}
        <div class="col-md-2 hidden-sm-down" id="_desktop_logo">
          <a href="{$urls.base_url}">
            <img class="logo img-fluid" src="{$shop.logo}" alt="{$shop.name}" loading="lazy" width="200" height="50">
          </a>
        </div>
        {* Search - extracted from displayTop *}
        <div class="col-md-7 bbike-search-col" id="_desktop_search">
          {hook h='displaySearch'}
        </div>
        {* Account + Cart - from displayNav2 area, re-rendered *}
        <div class="col-md-3 bbike-actions-col">
          <div id="bbike-header-account">
            {hook h='displayNav2'}
          </div>
        </div>
      </div>
    </div>
  </div>

  {* Menu bar - separate row *}
  <div class="bbike-menu-bar">
    <div class="container">
      {hook h='displayTop'}
    </div>
  </div>

  {hook h='displayNavFullWidth'}

  <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
    <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
    <div class="js-top-menu-bottom">
      <div id="_mobile_currency_selector"></div>
      <div id="_mobile_language_selector"></div>
      <div id="_mobile_contact_link"></div>
    </div>
  </div>
{/block}
