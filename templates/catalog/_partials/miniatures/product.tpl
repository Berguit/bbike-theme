{**
 * BBike Theme - Product Miniature (Fitadium style v2)
 *}
{block name='product_miniature_item'}
<div class="js-product product{if !empty($productClasses)} {$productClasses}{/if}">
  <article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}">
    <a href="{$product.url}" class="product-container-link">
      <div class="product-container">
        <div class="thumbnail-container">
          <div class="thumbnail-inner">
            <div class="ribbons_block">
              {if isset($product.flags) && $product.flags}
                {foreach from=$product.flags item=flag}
                  <span class="ribbon ribbon-{$flag.type}">{$flag.label}</span>
                {/foreach}
              {/if}
            </div>
            {block name='product_thumbnail'}
              {if $product.cover}
                <span class="thumbnail product-thumbnail">
                  <picture>
                    {if !empty($product.cover.bySize.home_default.sources.avif)}<source srcset="{$product.cover.bySize.home_default.sources.avif}" type="image/avif">{/if}
                    {if !empty($product.cover.bySize.home_default.sources.webp)}<source srcset="{$product.cover.bySize.home_default.sources.webp}" type="image/webp">{/if}
                    <img
                      src="{$product.cover.bySize.home_default.url}"
                      alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:50:'...'}{/if}"
                      loading="lazy"
                      data-full-size-image-url="{$product.cover.large.url}"
                      width="{$product.cover.bySize.home_default.width}"
                      height="{$product.cover.bySize.home_default.height}"
                      class="img-fluid"
                    />
                  </picture>
                </span>
              {else}
                <span class="thumbnail product-thumbnail">
                  <picture>
                    {if !empty($urls.no_picture_image.bySize.home_default.sources.webp)}<source srcset="{$urls.no_picture_image.bySize.home_default.sources.webp}" type="image/webp">{/if}
                    <img src="{$urls.no_picture_image.bySize.home_default.url}" loading="lazy" class="img-fluid" />
                  </picture>
                </span>
              {/if}
            {/block}
          </div>
        </div>
        <div class="product-description">
          {if isset($product.manufacturer_name) && $product.manufacturer_name}
            <span class="product-manufacturer">{$product.manufacturer_name}</span>
          {/if}
          <h3 class="product-title">{$product.name|truncate:50:'...'}</h3>
          {hook h='displayProductListReviews' product=$product}
          {if $product.description_short}
            <div class="product-description-short">{$product.description_short nofilter}</div>
          {/if}
          <div class="product-price-and-shipping">
            <div class="price-block">
              {if $product.has_discount}
                <div class="price-line-old">
                  <span class="regular-price">{$product.regular_price}</span>
                  {if $product.discount_type === 'percentage'}
                    <span class="discount-badge">{$product.discount_percentage}</span>
                  {elseif $product.discount_type === 'amount'}
                    <span class="discount-badge">{$product.discount_amount_to_display}</span>
                  {/if}
                </div>
              {/if}
              <span class="price{if $product.has_discount} has-discount{/if}">{$product.price}</span>
            </div>
                    <div class="mini-cart-btn">
                <span class="quick-view js-quick-view btn-quick-cart" data-link-action="quickview" title="Apercu rapide">
                  <i class="material-icons">shopping_cart</i>
                </span>
              </div>
            </div>
        </div>
      </div>
    </a>
  </article>
</div>
{/block}
