{extends file='page.tpl'}

{block name='page_title'}{/block}

{block name='page_content'}
  <div class="bbike-password-reset">
    <h2 class="bbike-password-reset__title">MOT DE PASSE OUBLI&Eacute; ?</h2>

    <ul class="ps-alert-error">
      {foreach $errors as $error}
        <li class="item">
          <i><svg viewBox="0 0 24 24"><path fill="#fff" d="M11,15H13V17H11V15M11,7H13V13H11V7M12,2C6.47,2 2,6.5 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2M12,20A8,8 0 0,1 4,12A8,8 0 0,1 12,4A8,8 0 0,1 20,12A8,8 0 0,1 12,20Z"></path></svg></i>
          <p>{$error}</p>
        </li>
      {/foreach}
    </ul>

    <div class="bbike-password-reset__info">
      <p>Merci de renseigner l'adresse e-mail que tu as utilis&eacute;e &agrave; la cr&eacute;ation de ton compte. Tu recevras un lien temporaire pour r&eacute;initialiser ton mot de passe.</p>
    </div>

    <form action="{$urls.pages.password}" method="post">
      <div class="bbike-password-reset__field">
        <label for="email">Adresse e-mail</label>
        <input type="email" name="email" id="email" value="{if isset($smarty.post.email)}{$smarty.post.email|stripslashes}{/if}" class="form-control" required>
      </div>

      <button class="bbike-password-reset__btn" name="submit" type="submit">
        ENVOYER UN LIEN DE R&Eacute;INITIALISATION
      </button>
    </form>

    <a href="{$urls.pages.authentication}" class="bbike-password-reset__back">
      &lsaquo; Retour &agrave; la connexion
    </a>
  </div>
{/block}

{block name='page_footer'}{/block}
