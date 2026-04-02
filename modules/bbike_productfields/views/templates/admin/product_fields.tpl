<div class="form-group">
  <h3>Contenus BBike</h3>
  <p class="text-muted">Ces champs sont accessibles via l'API WebService.</p>
  
  {foreach from=$bbike_fields key=field_name item=field}
    <div class="form-group" style="margin-top: 20px;">
      <label class="form-control-label" style="font-weight: 700; font-size: 16px; color: #071D49;">{$field.label}</label>
      
      {foreach from=$languages item=language}
        <div class="translation-field js-translation-field" data-locale="{$language.iso_code}" 
             {if $language.id_lang != $default_language}style="display: none;"{/if}>
          <textarea 
            name="bbike_{$field_name}_{$language.id_lang}" 
            class="autoload_rte"
            id="bbike_{$field_name}_{$language.id_lang}"
            rows="8"
            style="width: 100%; min-height: 200px;"
          >{if isset($field.values[$language.id_lang])}{$field.values[$language.id_lang]}{/if}</textarea>
        </div>
      {/foreach}
    </div>
  {/foreach}
</div>
