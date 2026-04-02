{* BBike - Quick View Fitadium style v3 *}
<div id="quickview-modal-{$product.id}-{$product.id_product_attribute}" class="modal fade quickview" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content bbike-quickview">
      <button type="button" class="bbike-qv-close" data-dismiss="modal" aria-label="Close">
        <i class="material-icons">close</i>
      </button>
      <div class="bbike-qv-layout">
        <div class="bbike-qv-left">
          {if $product.cover}
            <picture>
              {if !empty($product.cover.bySize.medium_default.sources.webp)}<source srcset="{$product.cover.bySize.medium_default.sources.webp}" type="image/webp">{/if}
              <img src="{$product.cover.bySize.medium_default.url}" alt="{$product.name}" />
            </picture>
          {/if}
        </div>
        <div class="bbike-qv-right">
          {if $product.manufacturer_name}
            <span class="bbike-qv-brand">{$product.manufacturer_name}</span>
          {/if}
          <h1 class="bbike-qv-name">{$product.name}</h1>

          <div class="product-actions js-product-actions">
            <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh">
              <input type="hidden" name="token" value="{$static_token}">
              <input type="hidden" name="id_product" value="{$product.id}" id="product_page_product_id">
              <input type="hidden" name="id_customization" value="{$product.id_customization}" id="product_customization_id" class="js-product-customization-id">

              {block name='product_variants'}
                {include file='catalog/_partials/product-variants.tpl'}
              {/block}

              <div class="bbike-qv-stock" id="product-availability">
                {if $product.show_availability && $product.availability_message}
                  {if $product.availability == 'available'}
                    {if $product.quantity > 0 && $product.quantity < 10}
                      <span class="stock-low"><i class="material-icons">warning</i> Plus que {$product.quantity} en stock</span>
                    {else}
                      <span class="stock-ok"><i class="material-icons">check_circle</i> En stock</span>
                    {/if}
                  {elseif $product.availability == 'last_remaining_items'}
                    <span class="stock-low"><i class="material-icons">warning</i> {$product.availability_message}</span>
                  {else}
                    <span class="stock-out"><i class="material-icons">cancel</i> {$product.availability_message}</span>
                  {/if}
                {/if}
              </div>

              <div class="bbike-qv-price-qty">
                <div class="bbike-qv-price">
                  {if $product.has_discount}
                    <div class="bbike-qv-price-old-line">
                      <span class="old-price">{$product.regular_price}</span>
                      {if $product.discount_type === 'percentage'}
                        <span class="discount-badge">{$product.discount_percentage}</span>
                      {elseif $product.discount_type === 'amount'}
                        <span class="discount-badge">{$product.discount_amount_to_display}</span>
                      {/if}
                    </div>
                  {/if}
                  <span class="current-price{if $product.has_discount} has-discount{/if}">{$product.price}</span>
                </div>
                <div class="bbike-qv-qty">
                  <div class="qty">
                    <input type="number" name="qty" id="quantity_wanted" value="1" min="1" class="input-group" data-bts-vertical-buttons="false" data-bts-button-down-txt="-" data-bts-button-up-txt="+" aria-label="Quantit&eacute;">
                  </div>
                </div>
              </div>

              <button class="bbike-qv-cart-btn btn btn-primary add-to-cart" data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url}disabled{/if}>
                Ajouter au panier
              </button>

              {block name='product_refresh'}{/block}
            </form>
          </div>

          <a href="{$product.url}" class="bbike-qv-link">Voir le produit</a>
        </div>
      </div>
    </div>
  </div>
</div>
