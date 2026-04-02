{*
 * BBike Theme override - ps_crossselling
 *}
{if $products}
<section class="bbike-footer-products bbike-crossselling">
  <h2 class="bbike-section-title">{l s='Customers who bought this product also bought:' d='Modules.Crossselling.Shop'}</h2>
  <div class="products bbike-product-grid">
    {foreach from=$products item="product"}
      {include file="catalog/_partials/miniatures/product.tpl" product=$product}
    {/foreach}
  </div>
</section>
{/if}
