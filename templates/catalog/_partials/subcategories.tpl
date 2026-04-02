{if !empty($subcategories)}
  {if (isset($display_subcategories) && $display_subcategories eq 1) || !isset($display_subcategories)}
    <div class="bbike-subcategories">
      {foreach from=$subcategories item=subcategory}
        <a href="{$subcategory.url}" class="bbike-subcategory-pill">
          {$subcategory.name|escape:'html':'UTF-8'}
          <i class="material-icons">arrow_forward</i>
        </a>
      {/foreach}
    </div>
  {/if}
{/if}
