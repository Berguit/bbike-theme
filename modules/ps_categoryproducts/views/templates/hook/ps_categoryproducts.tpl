{*
 * BBike Theme override - ps_categoryproducts
 * Uniform grid for "other products in same category"
 *}
<section class="bbike-footer-products bbike-category-products">
  <h2 class="bbike-section-title">
    {if $products|@count == 1}
      {l s='%s other product in the same category:' sprintf=[$products|@count] d='Modules.Categoryproducts.Shop'}
    {else}
      {l s='%s other products in the same category:' sprintf=[$products|@count] d='Modules.Categoryproducts.Shop'}
    {/if}
  </h2>
  <div class="products bbike-product-grid">
    {foreach from=$products item="product"}
      {include file="catalog/_partials/miniatures/product.tpl" product=$product}
    {/foreach}
  </div>
</section>
