{if $products}
<div class="products">
  {foreach from=$products item="product"}
    {include file="catalog/_partials/miniatures/product.tpl" product=$product}
  {/foreach}
</div>
{/if}
