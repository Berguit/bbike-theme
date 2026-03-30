{**
 * BBike Belleville - Footer Template (Fitadium style)
 *}

<div class="footer-container">
  <div class="container">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}

    <div class="row">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>

    <div class="row">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div>

    <div class="footer-after">
      <div class="row align-items-center">
        <div class="col-md-6 text-center text-md-left">
          <p>&copy; {$smarty.now|date_format:'%Y'} {$shop.name} - Tous droits réservés</p>
        </div>
        <div class="col-md-6 text-center text-md-right">
          <div class="footer-payments">
            <span>Paiement sécurisé</span>
            <i class="material-icons">&#xE8E8;</i>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
