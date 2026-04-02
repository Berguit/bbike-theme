{* BBike - Active filters Fitadium style *}
<section id="js-active-search-filters" class="{if $activeFilters|count}active_filters{else}hide{/if}">
  {if $activeFilters|count}
    <div class="bbike-active-filters">
      <span class="bbike-active-filters__title">Filtres actifs</span>
      {foreach from=$activeFilters item="filter"}
        <a class="bbike-active-filters__tag js-search-link" href="{$filter.nextEncodedFacetsURL}">
          <i class="material-icons">close</i>
          <span>{$filter.facetLabel}: {$filter.label}</span>
        </a>
      {/foreach}
      <a class="bbike-active-filters__clear" href="{$clear_all_link}">Tout supprimer</a>
    </div>
  {/if}
</section>
