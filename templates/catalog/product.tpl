{extends file=$layout}

{block name='head' append}
  <meta property="og:type" content="product">
  {if $product.cover}
    <meta property="og:image" content="{$product.cover.large.url}">
  {/if}
  {if $product.show_price}
    <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
    <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
    <meta property="product:price:amount" content="{$product.price_amount}">
    <meta property="product:price:currency" content="{$currency.iso_code}">
  {/if}
{/block}

{block name='head_microdata_special'}
  {include file='_partials/microdata/product-jsonld.tpl'}
{/block}

{block name='content'}

<section id="main">
  <meta content="{$product.url}">

  <div class="bbike-product-page js-product-container">
    <div class="bbike-product-top">

      {* === COLUMN 1: IMAGES === *}
      <div class="bbike-product-images">
        {block name='page_content'}
          {include file='catalog/_partials/product-flags.tpl'}
          {block name='product_cover_thumbnails'}
            {include file='catalog/_partials/product-cover-thumbnails.tpl'}
          {/block}
        {/block}
      </div>

      {* === COLUMN 2: PRODUCT INFO (no description here) === *}
      <div class="bbike-product-info">
        {if $product.manufacturer_name}
          <span class="bbike-pi-brand">
            <a href="{url entity='manufacturer' id=$product.id_manufacturer}">{$product.manufacturer_name}</a>
          </span>
        {/if}
        <h1 class="bbike-pi-name">{$product.name}</h1>

        {hook h='displayProductListReviews' product=$product}
        <a href="#bbike-tabs-section" class="bbike-pi-write-review">&Eacute;crire votre avis</a>

        {if $product.description_short}
          <div class="bbike-pi-short-desc">{$product.description_short nofilter}</div>
        {/if}

        <a href="#bbike-tabs-section" class="bbike-pi-see-more">Voir plus de d&eacute;tails</a>

        {* Offre du moment *}
        <div class="bbike-offre-moment">
          <span class="bbike-offre-badge">OFFRE DU MOMENT</span>
          <div class="bbike-offre-text">
            <strong>1 PRODUIT {if $product.manufacturer_name}{$product.manufacturer_name|upper}{else}BBIKE{/if} ACHET&Eacute; = 1 SHAKER OFFERT !</strong>
            <a href="#" class="bbike-offre-link">Voir les conditions</a>
          </div>
        </div>
      </div>

      {* === COLUMN 3: BUY BOX === *}
      <div class="bbike-product-buy">
        <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
          <input type="hidden" name="token" value="{$static_token}">
          <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
          <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id" class="js-product-customization-id">

          {* Variants *}
          <div class="bbike-pb-variants js-product-variants">
            {block name='product_variants'}
              {include file='catalog/_partials/product-variants.tpl'}
            {/block}
          </div>

          {* Stock *}
          <div class="bbike-pb-stock" id="product-availability">
            {if $product.show_availability && $product.availability_message}
              {if $product.availability == 'available'}
                {if $product.quantity > 0 && $product.quantity < 10}
                  <span class="stock-low"><i class="material-icons">warning</i> Plus que {$product.quantity} en stock</span>
                {else}
                  <span class="stock-ok"><i class="material-icons">check_circle</i> En Stock</span>
                {/if}
              {elseif $product.availability == 'last_remaining_items'}
                <span class="stock-low"><i class="material-icons">warning</i> {$product.availability_message}</span>
              {else}
                <span class="stock-out"><i class="material-icons">cancel</i> {$product.availability_message}</span>
              {/if}
            {/if}
          </div>

          {* Price + Quantity row *}
          <div class="bbike-pb-price-qty-row">
            <div class="bbike-pb-price">
              {if $product.has_discount}
                <div class="bbike-pb-price-old-line">
                  <span class="old-price">{$product.regular_price}</span>
                  {if $product.discount_type === 'percentage'}
                    <span class="discount-badge">{$product.discount_percentage}</span>
                  {elseif $product.discount_type === 'amount'}
                    <span class="discount-badge">{$product.discount_amount_to_display}</span>
                  {/if}
                </div>
              {/if}
              <span class="current-price{if $product.has_discount} has-discount{/if}">{$product.price}</span>
              <span class="tax-label">TTC</span>
            </div>
            <div class="bbike-pb-qty">
              <div class="qty">
                <input type="number" name="qty" id="quantity_wanted" value="1" min="1" max="{$product.quantity}" class="input-group" data-bts-vertical-buttons="false" data-bts-button-down-txt="-" data-bts-button-up-txt="+" aria-label="Quantit&eacute;">
              </div>
            </div>
          </div>

          {* Add to cart *}
          <button class="bbike-pb-cart-btn btn btn-primary add-to-cart" data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url}disabled{/if}>
            <i class="material-icons">shopping_cart</i> Ajouter au panier
          </button>

          {block name='product_refresh'}{/block}
        </form>

        {* Reassurance Fitadium-style *}
        <div class="bbike-pb-reassurance-fitadium">
          {* Countdown timer *}
          <div class="bbike-reas-item bbike-reas-countdown">
            <div class="bbike-reas-icon">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#555" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg>
            </div>
            <div class="bbike-reas-text">
              <span>Plus que <strong id="bbike-countdown" class="bbike-countdown-time">00h 00min 00s</strong> pour commander et &ecirc;tre livr&eacute; &agrave; partir de <strong id="bbike-delivery-day" class="bbike-delivery-day">demain</strong>.</span>
            </div>
          </div>

          {* Livraison offerte *}
          <div class="bbike-reas-item">
            <div class="bbike-reas-icon">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#555" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg>
            </div>
            <div class="bbike-reas-text">
              <strong>Livraison Offerte</strong><br>
              <span class="bbike-reas-sub">d&egrave;s 60&euro; d'achat (<a href="#" class="bbike-reas-link">D&eacute;tails</a>)</span>
            </div>
          </div>

          {* Colis *}
          <div class="bbike-reas-item">
            <div class="bbike-reas-icon">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#555" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"/><polyline points="3.27 6.96 12 12.01 20.73 6.96"/><line x1="12" y1="22.08" x2="12" y2="12"/></svg>
            </div>
            <div class="bbike-reas-text">
              <strong>+3 Millions de colis</strong><br>
              <span class="bbike-reas-sub">Pr&eacute;par&eacute;s par nos soins</span>
            </div>
          </div>

          {* Avis *}
          <div class="bbike-reas-item">
            <div class="bbike-reas-icon">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="#f5a623" stroke="#f5a623" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"/></svg>
            </div>
            <div class="bbike-reas-text">
              <strong>Avis client 4,7/5</strong><br>
              <span class="bbike-reas-sub">+38 000 avis v&eacute;rifi&eacute;s</span>
            </div>
          </div>
        </div>

        {* Countdown JavaScript *}
        <script>
        (function() {
          var countdownEl = document.getElementById('bbike-countdown');
          var deliveryEl = document.getElementById('bbike-delivery-day');
          if (!countdownEl) return;

          function updateCountdown() {
            var now = new Date();
            var cutoff = new Date(now);
            cutoff.setHours(16, 0, 0, 0);

            var diff = cutoff - now;

            if (diff <= 0) {
              cutoff.setDate(cutoff.getDate() + 1);
              diff = cutoff - now;
              var delivery = new Date(cutoff);
              delivery.setDate(delivery.getDate() + 1);
              var days = ['dimanche','lundi','mardi','mercredi','jeudi','vendredi','samedi'];
              deliveryEl.textContent = days[delivery.getDay()];
            } else {
              deliveryEl.textContent = 'demain';
            }

            var hours = Math.floor(diff / 3600000);
            var mins = Math.floor((diff % 3600000) / 60000);
            var secs = Math.floor((diff % 60000) / 1000);
            countdownEl.textContent = (hours < 10 ? '0' : '') + hours + 'h ' + (mins < 10 ? '0' : '') + mins + 'min ' + (secs < 10 ? '0' : '') + secs + 's';
          }

          updateCountdown();
          setInterval(updateCountdown, 1000);
        })();
        </script>
      </div>

    </div>

    {* === TABS SECTION (bottom of page) === *}
    <div class="bbike-tabs-section" id="bbike-tabs-section">
      <div class="bbike-tabs-nav">
        <button class="bbike-tab-btn active" data-tab="description">Description</button>
        <button class="bbike-tab-btn" data-tab="utilisation">Utilisation</button>
        <button class="bbike-tab-btn" data-tab="composition">Composition</button>
        <button class="bbike-tab-btn" data-tab="precaution">Pr&eacute;caution</button>
      </div>
      <div class="bbike-tabs-content">
        <div class="bbike-tab-pane active" id="bbike-tab-description">
          {if $product.description}
            <div class="bbike-tab-desc-text">
              {$product.description nofilter}
            </div>
          {else}
            <p>Aucune description disponible pour le moment.</p>
          {/if}
        </div>
        <div class="bbike-tab-pane" id="bbike-tab-utilisation">
          {if isset($product.utilisation) && $product.utilisation}
            <div class="bbike-tab-rich-content">{$product.utilisation nofilter}</div>
          {else}
            <p class="bbike-tab-empty">Informations d'utilisation &agrave; venir.</p>
          {/if}
        </div>
        <div class="bbike-tab-pane" id="bbike-tab-composition">
          {if isset($product.composition) && $product.composition}
            <div class="bbike-tab-rich-content">{$product.composition nofilter}</div>
          {elseif $product.features}
            <table class="bbike-composition-table">
              {foreach from=$product.features item=feature}
                <tr>
                  <td><strong>{$feature.name}</strong></td>
                  <td>{$feature.value}</td>
                </tr>
              {/foreach}
            </table>
          {else}
            <p class="bbike-tab-empty">Composition &agrave; venir.</p>
          {/if}
        </div>
        <div class="bbike-tab-pane" id="bbike-tab-precaution">
          {if isset($product.precaution) && $product.precaution}
            <div class="bbike-tab-rich-content">{$product.precaution nofilter}</div>
          {else}
            <p class="bbike-tab-empty">Informations de pr&eacute;caution &agrave; venir.</p>
          {/if}
        </div>
      </div>
    </div>

    <script>
    (function() {
      var btns = document.querySelectorAll('.bbike-tab-btn');
      btns.forEach(function(btn) {
        btn.addEventListener('click', function() {
          btns.forEach(function(b) { b.classList.remove('active'); });
          btn.classList.add('active');
          document.querySelectorAll('.bbike-tab-pane').forEach(function(p) { p.classList.remove('active'); });
          var target = document.getElementById('bbike-tab-' + btn.getAttribute('data-tab'));
          if (target) target.classList.add('active');
        });
      });
    })();
    </script>

    {* Accessories *}
    {block name='product_accessories'}
      {if $accessories}
        <section class="product-accessories clearfix" style="margin-top:30px;">
          <h2 class="bbike-section-title">Vous aimerez aussi</h2>
          <div class="products" style="display:flex;gap:16px;overflow-x:auto;">
            {foreach from=$accessories item="product_accessory" key="position"}
              {include file='catalog/_partials/miniatures/product.tpl' product=$product_accessory position=$position}
            {/foreach}
          </div>
        </section>
      {/if}
    {/block}

    {block name='product_footer'}
      {hook h='displayFooterProduct' product=$product category=$category}
    {/block}

    {block name='product_images_modal'}
      {include file='catalog/_partials/product-images-modal.tpl'}
    {/block}
  </div>
</section>
{/block}