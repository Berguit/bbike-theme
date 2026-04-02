{**
 * BBike - Cart Modal (Fitadium style)
 *}
<div id="blockcart-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      {* Header: centered title, X top-right *}
      <div class="modal-header bbike-modal-header">
        <div class="bbike-modal-header__title">
          <i class="material-icons" style="color:#4cbb6c;font-size:24px;vertical-align:middle;">&#xE876;</i>
          <strong>AJOUT&Eacute; AU PANIER</strong>
        </div>
        <button type="button" class="close bbike-modal-close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      {* Shipping bar - rounded box *}
      <div class="bbike-modal-shipping">
        <div class="bbike-modal-shipping__box">
          <p>&#127881; Bravo tu b&eacute;n&eacute;ficies de la livraison <strong>OFFERTE</strong> en France M&eacute;tropolitaine</p>
          <div class="bbike-modal-shipping__bar">
            <span class="bbike-modal-shipping__start">0&euro;</span>
            <div class="bbike-modal-shipping__progress"><div class="bbike-modal-shipping__fill"></div></div>
            <span class="bbike-modal-shipping__end">60&euro;</span>
          </div>
        </div>
      </div>

      {* Body: product *}
      <div class="modal-body bbike-modal-body">
        <div class="bbike-modal-product">
          <div class="bbike-modal-product__img">
            {if $product.default_image}
              <img src="{$product.default_image.medium.url}" alt="{$product.default_image.legend}" loading="lazy">
            {else}
              <img src="{$urls.no_picture_image.bySize.medium_default.url}" loading="lazy">
            {/if}
          </div>
          <div class="bbike-modal-product__info">
            <h6 class="bbike-modal-product__name">{$product.name|upper}</h6>
            <p class="bbike-modal-product__qty">
              Quantit&eacute; : <strong>{$product.cart_quantity}</strong> x {$product.price}
            </p>
            {foreach from=$product.attributes item="property_value" key="property"}
              <p class="bbike-modal-product__attr"><strong>{$property}:</strong> {$property_value}</p>
            {/foreach}
          </div>
          <div class="bbike-modal-product__total">
            {$cart.subtotals.products.value}
          </div>
        </div>
      </div>

      {* Buttons *}
      <div class="bbike-modal-buttons">
        <button type="button" class="bbike-modal-btn bbike-modal-btn--continue" data-dismiss="modal">
          CONTINUER LE SHOPPING
        </button>
        <a href="{$cart_url}" class="bbike-modal-btn bbike-modal-btn--cart">
          VOIR MON PANIER
        </a>
      </div>

      {hook h='displayCartModalContent' product=$product}
      {hook h='displayCartModalFooter' product=$product}
    </div>
  </div>
</div>
