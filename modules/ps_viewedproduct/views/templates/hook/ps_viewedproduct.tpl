{*
 * BBike Theme override - ps_viewedproduct
 *}
{if $products}
<section class="bbike-footer-products bbike-viewed-products">
  <h2 class="bbike-section-title">{l s='Viewed products' d='Modules.Viewedproduct.Shop'}</h2>
  <div class="products bbike-product-grid">
    {foreach from=$products item="product"}
      {include file="catalog/_partials/miniatures/product.tpl" product=$product}
    {/foreach}
  </div>
</section>
{/if}
