# BBike Belleville Theme — TODO

## Priority: High
- [ ] **Mega-menu module** : développer un module BBike MegaMenu from scratch, inspiré de PM AdvancedTopMenu (user fournira le plugin pour référence). Colonnes, sous-catégories, images, item "PROMO" en rouge
- [ ] Import déclinaisons for 99 remaining products (only product 24 done)
- [ ] WebService API: verify utilisation/composition/precaution fields are readable/writable via API
- [ ] Populate utilisation/composition/precaution content for all products via Nutrimeo API
- [ ] Logo: replace "My Store" default with BBike Belleville logo
- [ ] Slider: replace default "Sample" content with real banners

## Priority: Medium
- [ ] **Système de badges produit** : développer un module ou feature pour gérer des badges custom (BEST SELLER, CADEAU OFFERT, EXCLUSIF, etc.) — actuellement seuls les badges natifs PS fonctionnent (NOUVEAU, PROMO). Réfléchir à la logique d'affichage (règles auto vs manuel par produit)
- [ ] **Gestion campagnes promo** : définir un workflow pour lancer des promos rapidement — règles de prix catalogue (par catégorie/marque), codes promo panier, specific_price par produit. Configurer le paramètre "durée nouveau produit" en BO. Penser à l'affichage bandeau promo dynamique (actuellement hardcodé)
- [ ] **Icônes réassurance** : faire créer des illustrations SVG custom par un graphiste (style sketch/dessiné comme Fitadium)
- [ ] Mega-menu with rich sub-categories
- [ ] Responsive testing (mobile/tablet breakpoints)
- [ ] Fonts: verify Noto Sans loading correctly everywhere
- [ ] Fix bbike.css parsing bug (browser stops parsing after ~373 rules — root cause unknown)
- [ ] Homepage "Nos Promotions" section empty (no products with active specific_price)
- [ ] Réassurance module: update default placeholder text

## Priority: Low
- [ ] Cloudflare CDN + cache configuration
- [ ] SEO: meta descriptions, alt tags audit
- [ ] Performance: lazy loading audit, image optimization
- [ ] Homepage brand logos section (currently text)
- [ ] Product page: accessories section styling

## Completed ✅
- [x] Homepage full rework (slider, reassurance, categories, carousels)
- [x] Category listing (3 cols, cards, filters, sidebar)
- [x] Product page 3-column layout (images | info | buy box)
- [x] QuickView modal Fitadium style
- [x] Product images import (100/100 from Nutrimeo)
- [x] WebP thumbnails generated
- [x] Faceted search filters configured
- [x] Manufacturers created and assigned
- [x] bbike_productfields module (Utilisation, Composition, Précaution in BO)
- [x] Footer product sections uniform grid (categoryproducts, crossselling, viewedproduct)
- [x] CSS cache busting
