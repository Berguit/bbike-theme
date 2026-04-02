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

  {* MAIN TITLE *}
  <div class="bbike-main-title">
    <h1>BOUTIQUE DE PRODUITS MUSCULATION ET FITNESS</h1>
  </div>

  {* 2. REASSURANCE BAR - Fitadium style *}
  <section class="bbike-reas">
    <div class="bbike-reas__inner">

      <div class="bbike-reas__item">
        <div class="bbike-reas__icon">
          <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#1b2a4a" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg>
        </div>
        <div class="bbike-reas__text">
          <strong>Livraison express</strong>
          <span>En 24/48h chez vous</span>
        </div>
      </div>

      <div class="bbike-reas__sep"></div>

      <div class="bbike-reas__item">
        <div class="bbike-reas__icon">
          <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#1b2a4a" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/></svg>
        </div>
        <div class="bbike-reas__text">
          <strong>Paiement s&eacute;curis&eacute;</strong>
          <span>CB, PayPal, virement</span>
        </div>
      </div>

      <div class="bbike-reas__sep"></div>

      <div class="bbike-reas__item">
        <div class="bbike-reas__icon">
          <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#1b2a4a" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><polyline points="22 4 12 14.01 9 11.01"/></svg>
        </div>
        <div class="bbike-reas__text">
          <strong>Qualit&eacute; garantie</strong>
          <span>Marques certifi&eacute;es</span>
        </div>
      </div>

      <div class="bbike-reas__sep"></div>

      <div class="bbike-reas__item">
        <div class="bbike-reas__icon">
          <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#1b2a4a" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"/><polyline points="3.27 6.96 12 12.01 20.73 6.96"/><line x1="12" y1="22.08" x2="12" y2="12"/></svg>
        </div>
        <div class="bbike-reas__text">
          <strong>+50 000 colis</strong>
          <span>Pr&eacute;par&eacute;s avec soin</span>
        </div>
      </div>

      <div class="bbike-reas__sep"></div>

      <div class="bbike-reas__item">
        <div class="bbike-reas__icon">
          <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2" fill="#f5a623" stroke="#f5a623"/></svg>
        </div>
        <div class="bbike-reas__text">
          <strong>Avis clients 4.7/5</strong>
          <span class="bbike-reas__stars">&starf;&starf;&starf;&starf;&starf; <em>+38 000 avis</em></span>
        </div>
      </div>

    </div>
  </section>

  {* 3. CATEGORY GRID *}
  <section class="bbike-categories">
    <div class="container">
      <div class="bbike-categories__grid">
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="/themes/bbike/assets/img/homepage/cat-proteines.jpg" alt="Prot&eacute;ines" loading="lazy">
          <span class="bbike-categories__label">Prot&eacute;ines</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="/themes/bbike/assets/img/homepage/cat-gainers.jpg" alt="Gainers" loading="lazy">
          <span class="bbike-categories__label">Gainers</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="/themes/bbike/assets/img/homepage/cat-preworkout.jpg" alt="Pr&eacute;-Workout" loading="lazy">
          <span class="bbike-categories__label">Pr&eacute;-Workout</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="/themes/bbike/assets/img/homepage/cat-creatines.jpg" alt="Cr&eacute;atines" loading="lazy">
          <span class="bbike-categories__label">Cr&eacute;atines</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="/themes/bbike/assets/img/homepage/cat-bruleurs.jpg" alt="Br&ucirc;leurs" loading="lazy">
          <span class="bbike-categories__label">Br&ucirc;leurs</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="/themes/bbike/assets/img/homepage/cat-vitamines.jpg" alt="Vitamines" loading="lazy">
          <span class="bbike-categories__label">Vitamines</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block">
          <img class="bbike-categories__thumb" src="/themes/bbike/assets/img/homepage/cat-objectifs.jpg" alt="Objectifs" loading="lazy">
          <span class="bbike-categories__label">Objectifs</span>
          <i class="material-icons bbike-categories__chevron">chevron_right</i>
        </a>
        <a href="#" class="bbike-categories__block bbike-categories__block--promo">
          <img class="bbike-categories__thumb" src="/themes/bbike/assets/img/homepage/cat-promos.jpg" alt="Promos" loading="lazy">
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
          {hook h='displayBestSellers'}
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
          {hook h='displayFeaturedProducts'}
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
      <div class="bbike-brands__row">
        <a href="#" class="bbike-brands__item"><img src="/themes/bbike/assets/img/brands/on.jpg" alt="Optimum Nutrition" loading="lazy"></a>
        <a href="#" class="bbike-brands__item"><img src="/themes/bbike/assets/img/brands/scitec.jpg" alt="Scitec Nutrition" loading="lazy"></a>
        <a href="#" class="bbike-brands__item"><img src="/themes/bbike/assets/img/brands/biotech.jpg" alt="BioTech USA" loading="lazy"></a>
        <a href="#" class="bbike-brands__item"><img src="/themes/bbike/assets/img/brands/olimp.jpg" alt="Olimp Sport Nutrition" loading="lazy"></a>
        <a href="#" class="bbike-brands__item"><img src="/themes/bbike/assets/img/brands/nutrimuscle.jpg" alt="Nutrimuscle" loading="lazy"></a>
        <a href="#" class="bbike-brands__item"><img src="/themes/bbike/assets/img/brands/ssn.jpg" alt="SSN" loading="lazy"></a>
        <a href="#" class="bbike-brands__item"><img src="/themes/bbike/assets/img/brands/nocco.jpg" alt="Nocco" loading="lazy"></a>
      </div>
    </div>
  </section>

  {* 10. REVIEWS - Trustpilot style carousel *}
  <section class="bbike-reviews">
    <div class="container">
      <h2 class="bbike-section-title">Avis Clients</h2>
      <div class="bbike-reviews-carousel">
        <button class="bbike-reviews-carousel__arrow bbike-reviews-carousel__arrow--prev" type="button" aria-label="Pr&eacute;c&eacute;dent">
          <i class="material-icons">chevron_left</i>
        </button>
        <div class="bbike-reviews-carousel__track">

          <div class="bbike-review-card">
            <div class="bbike-review-card__header">
              <div class="bbike-review-card__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
              <span class="bbike-review-card__score">5/5</span>
            </div>
            <p class="bbike-review-card__text">Super &#128077;</p>
            <div class="bbike-review-card__meta">Avis du 01/04/2026, suite &agrave; une exp&eacute;rience du 20/03/2026 par <strong>Alexandre C.</strong></div>
          </div>

          <div class="bbike-review-card">
            <div class="bbike-review-card__header">
              <div class="bbike-review-card__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
              <span class="bbike-review-card__score">5/5</span>
            </div>
            <p class="bbike-review-card__text">Commande recu merci</p>
            <div class="bbike-review-card__meta">Avis du 01/04/2026, suite &agrave; une exp&eacute;rience du 18/03/2026 par <strong>Medhi B.</strong></div>
          </div>

          <div class="bbike-review-card">
            <div class="bbike-review-card__header">
              <div class="bbike-review-card__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
              <span class="bbike-review-card__score">5/5</span>
            </div>
            <p class="bbike-review-card__text">Produit re&ccedil;u tr&egrave;s rapidement et de tr&egrave;s bonne qualit&eacute; merci</p>
            <div class="bbike-review-card__meta">Avis du 01/04/2026, suite &agrave; une exp&eacute;rience du 13/03/2026 par <strong>Selim A.</strong></div>
          </div>

          <div class="bbike-review-card">
            <div class="bbike-review-card__header">
              <div class="bbike-review-card__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
              <span class="bbike-review-card__score">5/5</span>
            </div>
            <p class="bbike-review-card__text">Produit re&ccedil;u, tout s'est bien pass&eacute;</p>
            <div class="bbike-review-card__meta">Avis du 01/04/2026, suite &agrave; une exp&eacute;rience du 19/03/2026 par <strong>Youness D.</strong></div>
          </div>

          <div class="bbike-review-card">
            <div class="bbike-review-card__header">
              <div class="bbike-review-card__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
              <span class="bbike-review-card__score">5/5</span>
            </div>
            <p class="bbike-review-card__text">Livraison ultra rapide, produits de qualit&eacute;. Je recommande !</p>
            <div class="bbike-review-card__meta">Avis du 30/03/2026, suite &agrave; une exp&eacute;rience du 22/03/2026 par <strong>Thomas D.</strong></div>
          </div>

          <div class="bbike-review-card">
            <div class="bbike-review-card__header">
              <div class="bbike-review-card__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
              <span class="bbike-review-card__score">5/5</span>
            </div>
            <p class="bbike-review-card__text">Ma whey pr&eacute;f&eacute;r&eacute;e depuis 2 ans. Go&ucirc;t chocolat incroyable.</p>
            <div class="bbike-review-card__meta">Avis du 28/03/2026, suite &agrave; une exp&eacute;rience du 15/03/2026 par <strong>Sophie R.</strong></div>
          </div>

          <div class="bbike-review-card">
            <div class="bbike-review-card__header">
              <div class="bbike-review-card__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
              <span class="bbike-review-card__score">5/5</span>
            </div>
            <p class="bbike-review-card__text">Parfait pour la pr&eacute;pa ! Le pack s&egrave;che m'a bien aid&eacute;.</p>
            <div class="bbike-review-card__meta">Avis du 25/03/2026, suite &agrave; une exp&eacute;rience du 10/03/2026 par <strong>Kevin B.</strong></div>
          </div>

          <div class="bbike-review-card">
            <div class="bbike-review-card__header">
              <div class="bbike-review-card__stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
              <span class="bbike-review-card__score">5/5</span>
            </div>
            <p class="bbike-review-card__text">Service client au top, r&eacute;ponse en moins de 2h. Bravo !</p>
            <div class="bbike-review-card__meta">Avis du 27/03/2026, suite &agrave; une exp&eacute;rience du 20/03/2026 par <strong>Marie L.</strong></div>
          </div>

        </div>
        <button class="bbike-reviews-carousel__arrow bbike-reviews-carousel__arrow--next" type="button" aria-label="Suivant">
          <i class="material-icons">chevron_right</i>
        </button>
      </div>
      <div class="bbike-reviews-carousel__dots" id="bbike-reviews-dots"></div>
    </div>
  </section>

  {* 11. SEO TEXT *}
  <section class="bbike-seo-text">
    <div class="container">
      <h2 class="bbike-seo-text__title">BBike Belleville &mdash; Votre boutique de nutrition sportive</h2>
      <div class="bbike-seo-text__content">
        <p>Bienvenue chez <strong>BBike Belleville</strong>, votre sp&eacute;cialiste en <strong>nutrition sportive</strong> et <strong>compl&eacute;ments alimentaires</strong> pour la musculation, le fitness et le sport. Que vous soyez d&eacute;butant ou athl&egrave;te confirm&eacute;, nous s&eacute;lectionnons pour vous les meilleures marques du march&eacute; : <strong>Optimum Nutrition</strong>, <strong>Scitec Nutrition</strong>, <strong>BioTech USA</strong>, <strong>Olimp Sport Nutrition</strong> et bien d'autres.</p>
        <p>D&eacute;couvrez notre large gamme de <strong>prot&eacute;ines</strong> (whey, cas&eacute;ine, isolat, v&eacute;g&eacute;tale), <strong>cr&eacute;atines</strong>, <strong>BCAA</strong>, <strong>pr&eacute;-workouts</strong>, <strong>br&ucirc;leurs de graisses</strong>, <strong>vitamines</strong> et <strong>gainers</strong>. Tous nos produits sont s&eacute;lectionn&eacute;s pour leur qualit&eacute;, leur efficacit&eacute; et leur go&ucirc;t.</p>
        <p>Chez BBike Belleville, nous vous accompagnons dans l'atteinte de vos <strong>objectifs sportifs</strong> : prise de masse, s&egrave;che, perte de poids, endurance ou performance. Profitez de la <strong>livraison express en 24/48h</strong>, du <strong>paiement s&eacute;curis&eacute;</strong> et de nos <strong>promotions exclusives</strong> toute l'ann&eacute;e.</p>
        <p>Besoin de conseils ? Notre &eacute;quipe est disponible pour vous guider dans le choix de vos compl&eacute;ments alimentaires et vous proposer des programmes adapt&eacute;s &agrave; vos besoins. <strong>Commandez d&egrave;s aujourd'hui</strong> et rejoignez les milliers de sportifs qui nous font confiance !</p>
      </div>
    </div>
  </section>

  {* 12. BOTTOM REASSURANCE *}
  <section class="bbike-bottom-reas">
    <div class="container">
      <div class="bbike-bottom-reas__row">

        <div class="bbike-bottom-reas__item">
          <div class="bbike-bottom-reas__icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 24 24" fill="none" stroke="#1b2a4a" stroke-width="1.3" stroke-linecap="round" stroke-linejoin="round"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"/><polyline points="3.27 6.96 12 12.01 20.73 6.96"/><line x1="12" y1="22.08" x2="12" y2="12"/><circle cx="12" cy="6" r="1" fill="#FDAF4E" stroke="#FDAF4E"/></svg>
          </div>
          <strong>LIVRAISON OFFERTE</strong>
          <span>en point relais d&egrave;s 60&euro; d'achat</span>
        </div>

        <div class="bbike-bottom-reas__item">
          <div class="bbike-bottom-reas__icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 24 24" fill="none" stroke="#1b2a4a" stroke-width="1.3" stroke-linecap="round" stroke-linejoin="round"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/><circle cx="12" cy="7" r="4"/><circle cx="17" cy="4" r="1" fill="#FDAF4E" stroke="#FDAF4E"/></svg>
          </div>
          <strong>DES CONSEILS D'EXPERTS</strong>
          <span>gratuits et sur mesure</span>
        </div>

        <div class="bbike-bottom-reas__item">
          <div class="bbike-bottom-reas__icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 24 24" fill="none" stroke="#1b2a4a" stroke-width="1.3" stroke-linecap="round" stroke-linejoin="round"><rect x="1" y="3" width="15" height="13"/><polygon points="16 8 20 8 23 11 23 16 16 16 16 8"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/><path d="M12 7l-3 3h6l-3-3z" fill="#FDAF4E" stroke="#FDAF4E" stroke-width="0.5"/></svg>
          </div>
          <strong>RETOURS SIMPLES ET GRATUITS</strong>
          <span>14 jours pour changer d'avis</span>
        </div>

        <div class="bbike-bottom-reas__item">
          <div class="bbike-bottom-reas__icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 24 24" fill="none" stroke="#1b2a4a" stroke-width="1.3" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"/><path d="M7 11V7a5 5 0 0 1 10 0v4"/><circle cx="12" cy="16" r="1" fill="#FDAF4E" stroke="#FDAF4E"/></svg>
          </div>
          <strong>PAIEMENT EN 3X OU 4X SANS FRAIS</strong>
          <span>100% s&eacute;curis&eacute;</span>
        </div>

      </div>
    </div>
  </section>

  {* 13. NEWSLETTER *}
  <section class="bbike-newsletter">
    <div class="container">
      <div class="bbike-newsletter__inner">
        <div class="bbike-newsletter__left">
          <span class="bbike-newsletter__brand">BBIKE'<em>NEWS</em></span>
          <span class="bbike-newsletter__subtitle">INSCRIS-TOI &Agrave; NOTRE NEWSLETTER</span>
        </div>
        <form class="bbike-newsletter__form" action="#" method="post">
          <input type="email" name="email" placeholder="ton@email.com" required>
          <button type="submit" class="bbike-newsletter__btn">SOUSCRIRE</button>
        </form>
        <div class="bbike-newsletter__right">
          <p><em>Tu peux te d&eacute;sinscrire &agrave; tout moment. Tu trouveras pour cela nos informations de contact dans les conditions d'utilisation du site.</em></p>
        </div>
      </div>
    </div>
  </section>

</div>
{/block}
