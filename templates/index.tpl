{**
 * BBike Theme - Homepage Template
 * Child of Classic theme for PrestaShop 8
 *}
{extends file='layouts/layout-full-width.tpl'}

{block name='content'}
<div class="bbike-homepage">

  {* 1. HERO SLIDER *}
  <section class="bbike-hero-slider">
    {hook h='displayHomeSlider'}
  </section>

  {* 2. REASSURANCE BAR *}
  <section class="bbike-reassurance">
    <div class="container">
      <div class="bbike-reassurance__row">
        <div class="bbike-reassurance__item">
          <i class="material-icons bbike-reassurance__icon">local_shipping</i>
          <div class="bbike-reassurance__text">
            <strong>Livraison &lt; 24h</strong>
            <span>Exp&eacute;dition express</span>
          </div>
        </div>
        <div class="bbike-reassurance__item">
          <i class="material-icons bbike-reassurance__icon">lock</i>
          <div class="bbike-reassurance__text">
            <strong>Paiement S&eacute;curis&eacute;</strong>
            <span>CB, PayPal, virement</span>
          </div>
        </div>
        <div class="bbike-reassurance__item">
          <i class="material-icons bbike-reassurance__icon">flag</i>
          <div class="bbike-reassurance__text">
            <strong>100% Qualit&eacute;</strong>
            <span>Marques certifi&eacute;es</span>
          </div>
        </div>
        <div class="bbike-reassurance__item">
          <i class="material-icons bbike-reassurance__icon">inventory</i>
          <div class="bbike-reassurance__text">
            <strong>50 000+ Colis</strong>
            <span>Clients satisfaits</span>
          </div>
        </div>
        <div class="bbike-reassurance__item">
          <i class="material-icons bbike-reassurance__icon">star</i>
          <div class="bbike-reassurance__text">
            <strong>Avis 4.7/5</strong>
            <span>Note clients v&eacute;rifi&eacute;s</span>
          </div>
        </div>
      </div>
    </div>
  </section>

  {* 3. CATEGORY GRID *}
  <section class="bbike-categories">
    <div class="container">
      <h2 class="bbike-section-title">Nos Cat&eacute;gories</h2>
      <div class="bbike-categories__grid">
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="{$urls.img_url}homepage/cat-proteines.jpg" alt="Prot&eacute;ines" loading="lazy">
          <span class="bbike-categories__label">Prot&eacute;ines</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="{$urls.img_url}homepage/cat-gainers.jpg" alt="Gainers" loading="lazy">
          <span class="bbike-categories__label">Gainers</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="{$urls.img_url}homepage/cat-preworkout.jpg" alt="Pr&eacute;-Workout" loading="lazy">
          <span class="bbike-categories__label">Pr&eacute;-Workout</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="{$urls.img_url}homepage/cat-creatines.jpg" alt="Cr&eacute;atines" loading="lazy">
          <span class="bbike-categories__label">Cr&eacute;atines</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="{$urls.img_url}homepage/cat-bruleurs.jpg" alt="Br&ucirc;leurs" loading="lazy">
          <span class="bbike-categories__label">Br&ucirc;leurs</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="{$urls.img_url}homepage/cat-vitamines.jpg" alt="Vitamines" loading="lazy">
          <span class="bbike-categories__label">Vitamines</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="{$urls.img_url}homepage/cat-objectifs.jpg" alt="Objectifs" loading="lazy">
          <span class="bbike-categories__label">Objectifs</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block bbike-categories__block--promo">
          <img class="bbike-categories__thumb" src="{$urls.img_url}homepage/cat-promos.jpg" alt="Promos" loading="lazy">
          <span class="bbike-categories__label">Promos <span class="bbike-categories__badge">HOT</span></span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
      </div>
    </div>
  </section>

  {* 4. TOP VENTES *}
  <section class="bbike-top-sales">
    <div class="container">
      <h2 class="bbike-section-title">Nos Top Ventes</h2>
      <div class="bbike-carousel">
        <button class="bbike-carousel__arrow bbike-carousel__arrow--prev" type="button" aria-label="Pr&eacute;c&eacute;dent">
          <i class="material-icons">chevron_left</i>
        </button>
        <div class="bbike-carousel__track">
          {hook h='displayFeaturedProducts'}
        </div>
        <button class="bbike-carousel__arrow bbike-carousel__arrow--next" type="button" aria-label="Suivant">
          <i class="material-icons">chevron_right</i>
        </button>
      </div>
    </div>
  </section>

  {* 5. BONS PLANS *}
  <section class="bbike-bons-plans">
    <div class="container">
      <h2 class="bbike-section-title">Bons Plans</h2>
      <div class="bbike-bons-plans__row">
        <div class="bbike-bons-plans__banner bbike-bons-plans__banner--left">
          <div class="bbike-bons-plans__overlay">
            <span class="bbike-bons-plans__badge">-20%</span>
            <h3 class="bbike-bons-plans__heading">Pack Prise de Masse</h3>
            <p class="bbike-bons-plans__desc">Whey + Cr&eacute;atine + Shaker offert</p>
            <a href="#" class="bbike-bons-plans__cta">J'en profite</a>
          </div>
        </div>
        <div class="bbike-bons-plans__banner bbike-bons-plans__banner--right">
          <div class="bbike-bons-plans__overlay">
            <span class="bbike-bons-plans__badge">-30%</span>
            <h3 class="bbike-bons-plans__heading">Sp&eacute;cial S&egrave;che</h3>
            <p class="bbike-bons-plans__desc">Br&ucirc;leur + L-Carnitine + Guide offert</p>
            <a href="#" class="bbike-bons-plans__cta">D&eacute;couvrir</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  {* 6. PROMOTIONS *}
  <section class="bbike-promotions">
    <div class="container">
      <h2 class="bbike-section-title">Nos Promotions</h2>
      <div class="bbike-carousel">
        <button class="bbike-carousel__arrow bbike-carousel__arrow--prev" type="button" aria-label="Pr&eacute;c&eacute;dent">
          <i class="material-icons">chevron_left</i>
        </button>
        <div class="bbike-carousel__track">
          {hook h='displayBestSellers'}
        </div>
        <button class="bbike-carousel__arrow bbike-carousel__arrow--next" type="button" aria-label="Suivant">
          <i class="material-icons">chevron_right</i>
        </button>
      </div>
    </div>
  </section>

  {* 7. OBJECTIVES *}
  <section class="bbike-objectives">
    <div class="container">
      <h2 class="bbike-section-title">Atteins ton objectif</h2>
      <div class="bbike-objectives__grid">
        <a href="#" class="bbike-objectives__card">
          <div class="bbike-objectives__gradient bbike-objectives__gradient--masse"></div>
          <span class="bbike-objectives__label">Prise de Masse</span>
        </a>
        <a href="#" class="bbike-objectives__card">
          <div class="bbike-objectives__gradient bbike-objectives__gradient--seche"></div>
          <span class="bbike-objectives__label">S&egrave;che</span>
        </a>
        <a href="#" class="bbike-objectives__card">
          <div class="bbike-objectives__gradient bbike-objectives__gradient--perte"></div>
          <span class="bbike-objectives__label">Perte de Poids</span>
        </a>
        <a href="#" class="bbike-objectives__card">
          <div class="bbike-objectives__gradient bbike-objectives__gradient--fitness"></div>
          <span class="bbike-objectives__label">Fitness</span>
        </a>
        <a href="#" class="bbike-objectives__card">
          <div class="bbike-objectives__gradient bbike-objectives__gradient--endurance"></div>
          <span class="bbike-objectives__label">Endurance</span>
        </a>
        <a href="#" class="bbike-objectives__card">
          <div class="bbike-objectives__gradient bbike-objectives__gradient--force"></div>
          <span class="bbike-objectives__label">Force</span>
        </a>
      </div>
    </div>
  </section>

  {* 8. NOUVEAUTES *}
  <section class="bbike-new-products">
    <div class="container">
      <h2 class="bbike-section-title">Nos Nouveaut&eacute;s</h2>
      <div class="bbike-carousel">
        <button class="bbike-carousel__arrow bbike-carousel__arrow--prev" type="button" aria-label="Pr&eacute;c&eacute;dent">
          <i class="material-icons">chevron_left</i>
        </button>
        <div class="bbike-carousel__track">
          {hook h='displayNewProducts'}
        </div>
        <button class="bbike-carousel__arrow bbike-carousel__arrow--next" type="button" aria-label="Suivant">
          <i class="material-icons">chevron_right</i>
        </button>
      </div>
    </div>
  </section>

  {* 9. BRANDS *}
  <section class="bbike-brands">
    <div class="container">
      <h2 class="bbike-section-title">Nos Marques</h2>
      <div class="bbike-brands__carousel">
        <div class="bbike-brands__item"><div class="bbike-brands__logo">ON</div></div>
        <div class="bbike-brands__item"><div class="bbike-brands__logo">BSN</div></div>
        <div class="bbike-brands__item"><div class="bbike-brands__logo">Scitec</div></div>
        <div class="bbike-brands__item"><div class="bbike-brands__logo">MyProt</div></div>
        <div class="bbike-brands__item"><div class="bbike-brands__logo">BioTech</div></div>
        <div class="bbike-brands__item"><div class="bbike-brands__logo">QNT</div></div>
        <div class="bbike-brands__item"><div class="bbike-brands__logo">Yamamoto</div></div>
        <div class="bbike-brands__item"><div class="bbike-brands__logo">Eric Favre</div></div>
      </div>
    </div>
  </section>

  {* 10. REVIEWS *}
  <section class="bbike-reviews">
    <div class="container">
      <h2 class="bbike-section-title">Avis Clients</h2>
      <div class="bbike-reviews__grid">
        <div class="bbike-reviews__card">
          <div class="bbike-reviews__stars">
            <i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i>
          </div>
          <p class="bbike-reviews__text">"Livraison ultra rapide, produits de qualit&eacute;. Je recommande &agrave; 100% !"</p>
          <span class="bbike-reviews__author">&mdash; Thomas D.</span>
        </div>
        <div class="bbike-reviews__card">
          <div class="bbike-reviews__stars">
            <i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i>
          </div>
          <p class="bbike-reviews__text">"Service client au top ! Un conseiller m'a aid&eacute; &agrave; choisir le bon compl&eacute;ment."</p>
          <span class="bbike-reviews__author">&mdash; Marie L.</span>
        </div>
        <div class="bbike-reviews__card">
          <div class="bbike-reviews__stars">
            <i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star_half</i>
          </div>
          <p class="bbike-reviews__text">"Large choix de prot&eacute;ines et de saveurs. Les prix sont tr&egrave;s comp&eacute;titifs."</p>
          <span class="bbike-reviews__author">&mdash; Julien M.</span>
        </div>
        <div class="bbike-reviews__card">
          <div class="bbike-reviews__stars">
            <i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i>
          </div>
          <p class="bbike-reviews__text">"Ma whey pr&eacute;f&eacute;r&eacute;e depuis 2 ans. Go&ucirc;t chocolat incroyable."</p>
          <span class="bbike-reviews__author">&mdash; Sophie R.</span>
        </div>
        <div class="bbike-reviews__card">
          <div class="bbike-reviews__stars">
            <i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i><i class="material-icons">star</i>
          </div>
          <p class="bbike-reviews__text">"Parfait pour la pr&eacute;pa ! Le pack s&egrave;che m'a bien aid&eacute;."</p>
          <span class="bbike-reviews__author">&mdash; Kevin B.</span>
        </div>
      </div>
    </div>
  </section>

</div>
{/block}
