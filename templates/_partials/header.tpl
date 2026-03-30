{**
 * BBike Belleville - Header Template (Fitadium style)
 *}

{block name='header_banner'}
  <div class="bbike-promo-bar">
    <span>Livraison OFFERTE dès 49€ d'achat | Paiement sécurisé | Expédition 24h</span>
  </div>
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <nav class="header-nav">
    <div class="container">
      <div class="row align-items-center">
        <div class="hidden-sm-down col-md-5 col-xs-12">
          <div class="d-flex align-items-center">
            {hook h='displayNav1'}
          </div>
        </div>
        <div class="col-md-7 right-nav d-flex justify-content-end align-items-center">
            {hook h='displayNav2'}
        </div>
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
    </div>
  </nav>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-2 hidden-sm-down" id="_desktop_logo">
          {if $page.page_name == 'index'}
            <h1>
              <a href="{$urls.base_url}">
                <img class="logo img-fluid" src="{$shop.logo}" alt="{$shop.name}" loading="lazy" width="200" height="50">
              </a>
            </h1>
          {else}
            <a href="{$urls.base_url}">
              <img class="logo img-fluid" src="{$shop.logo}" alt="{$shop.name}" loading="lazy" width="200" height="50">
            </a>
          {/if}
        </div>
        <div class="header-top-right col-md-10 d-flex justify-content-between align-items-center position-static">
          <div class="col-md-7 col-xs-12" id="_desktop_search">
            {hook h='displaySearch'}
          </div>
          <div class="col-md-5 d-flex justify-content-end align-items-center">
            {hook h='displayTop'}
          </div>
        </div>
      </div>
    </div>
    <div class="menu-container">
      <div class="container">
        {hook h='displayNavFullWidth'}
        <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
          <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
          <div class="js-top-menu-bottom">
            <div id="_mobile_currency_selector"></div>
            <div id="_mobile_language_selector"></div>
            <div id="_mobile_contact_link"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
{/block}
