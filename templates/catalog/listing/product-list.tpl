{extends file=$layout}

{block name='head_microdata_special'}
  {include file='_partials/microdata/product-list-jsonld.tpl' listing=$listing}
{/block}

{block name='content_header_fullwidth'}
  <div class="bbike-category-header">
    <h1 id="js-product-list-header">{if isset($category)}{$category.name}{else}{$listing.label}{/if}</h1>
    {if isset($category) && $category.description}
      <div class="bbike-category-desc">{$category.description nofilter}</div>
    {/if}
  </div>

  {if isset($subcategories) && $subcategories|@count > 0}
    <div class="bbike-subcategories">
      {foreach from=$subcategories item=subcategory}
        <a href="{$subcategory.url}" class="bbike-subcategory-pill">
          {$subcategory.name|escape:'html':'UTF-8'}
          <i class="material-icons">arrow_forward</i>
        </a>
      {/foreach}
    </div>
  {/if}
{/block}

{block name='content'}
  <section id="main">

    {hook h="displayHeaderCategory"}

    <section id="products">
      {if $listing.products|count}

        {block name='product_list_top'}
          {include file='catalog/_partials/products-top.tpl' listing=$listing}
        {/block}

        {block name='product_list_active_filters'}
          <div class="hidden-sm-down">
            {$listing.rendered_active_filters nofilter}
          </div>
        {/block}

        {block name='product_list'}
          {include file='catalog/_partials/products.tpl' listing=$listing productClass=""}
        {/block}

        {block name='product_list_bottom'}
          {include file='catalog/_partials/products-bottom.tpl' listing=$listing}
        {/block}

      {else}
        <div id="js-product-list-top"></div>
        <div id="js-product-list">
          {capture assign="errorContent"}
            <h4>{l s='No products available yet' d='Shop.Theme.Catalog'}</h4>
            <p>{l s='Stay tuned! More products will be shown here as they are added.' d='Shop.Theme.Catalog'}</p>
          {/capture}
          {include file='errors/not-found.tpl' errorContent=$errorContent}
        </div>
        <div id="js-product-list-bottom"></div>
      {/if}
    </section>

    {block name='product_list_footer'}{/block}
    {hook h="displayFooterCategory"}

  </section>
{/block}

{block name='content_footer_fullwidth'}
  {if isset($category) && $category.additional_description}
    <div class="bbike-seo-content">
      {$category.additional_description nofilter}
    </div>
  {/if}
{/block}
