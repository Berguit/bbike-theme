{if $blocks}
<section class="bbike-reassurance">
  <div class="container">
    <div class="bbike-reassurance__row">
      {foreach from=$blocks item=$block}
      <div class="bbike-reassurance__item">
        <div class="bbike-reassurance__icon">
          {if $block['icon'] != 'undefined'}
            {if $block['custom_icon']}
              <img src="{$block['custom_icon']}" alt="{$block['title']}" width="24" height="24" loading="lazy">
            {elseif $block['icon']}
              <img class="svg" src="{$block['icon']}" alt="{$block['title']}" width="24" height="24" loading="lazy">
            {/if}
          {/if}
        </div>
        <div class="bbike-reassurance__text">
          <strong>{$block['title']}</strong>
          {if $block['description']}<span>{$block['description'] nofilter}</span>{/if}
        </div>
      </div>
      {/foreach}
    </div>
  </div>
</section>
{/if}
