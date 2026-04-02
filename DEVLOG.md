# BBike Belleville Theme — Dev Log

## 2026-04-02 — Product fields module + product page fixes

### Module bbike_productfields v1.4.0
- **Custom product fields**: Utilisation, Composition, Précaution added to `ps_product_lang` table
- Fields injected directly into the PS8 Symfony product form via `actionProductFormBuilderModifier` hook
- Fields appear in the **Description tab** of the BO, right after Récapitulatif and Description
- Form fields are reordered programmatically: images → description_short → description → utilisation → composition → précaution → categories → manufacturer → related_products
- Fields are `TranslateType` with `TextareaType` (TinyMCE-compatible via `autoload_rte` class)
- Product class override (`override/classes/Product.php`) exposes fields to WebService API
- Save hooks: `actionAfterCreateProductFormHandler` + `actionAfterUpdateProductFormHandler`
- UTF-8 encoding properly handled (accents in labels: Précaution)

### Product page — Description tab image removed
- The Description tab in `product.tpl` had a 2-column layout showing the product cover image alongside the description text
- Removed the image from the tab — description is now text-only (product image already visible in the main image column)

### Footer product sections — Uniform card grid
- Created theme overrides for 3 modules:
  - `ps_categoryproducts` — "X other products in the same category"
  - `ps_crossselling` — "Customers who bought this also bought"
  - `ps_viewedproduct` — "Viewed products"
- All use CSS Grid 4-column layout (`bbike-product-grid` class)
- Cards have uniform height: square image area (aspect-ratio 1:1), fixed min-height description, price aligned to bottom
- Responsive: 3 cols on tablet, 2 cols on mobile
- Styled consistently with the listing category cards

### CSS cache busting
- Bumped `bbike.css?v=100` and `bbike-extra.css?v=101` in `head.tpl`
- Root cause of "broken layout on Chrome but OK on Tor": Chrome cached old CSS versions while Tor browser doesn't cache

---

## 2026-03-31 — Full homepage rework + catalog

### Night session (8 tasks completed)
1. **Product images** — 100/100 uploaded via PS API from Nutrimeo CDN (800x800 WebP → JPEG + WebP thumbnails)
2. **Reassurance bar** — Horizontal layout, light background, navy icons, vertical separators
3. **Category grid** — Fitadium style with thumbnails + chevrons + HOT badge on Promos
4. **Homepage carousels** — Top Ventes, Promotions, Nouveautés in horizontal scroll with nav arrows
5. **Faceted search filters** — Features: Type de produit (6), Moment (6), Préférence alimentaire (6), Objectifs
6. **Category listing** — 3 columns, styled cards, badges, prices, sidebar filters
7. **Product page** — 3-column layout (images 35% | info 35% | buy box 30%)
8. **Fixes** — Double search bar, demo suppliers/manufacturers removed, stock set to 50

### Morning session — Homepage fixes
- Slider scroll jump fix (replaced `<a>` with `<span>` in slider arrows)
- Reassurance bar vertical → horizontal (disabled module hook, hardcoded HTML)
- Product carousels stacked → horizontal flex (CSS parse error workaround with separate CSS file)

### Afternoon session — Cards & filters
- Fitadium-style product cards (single `<a>` wrapper, badges, manufacturer, quickview)
- QuickView modal (50/50 layout, brand, variants, stock indicator, qty selector)
- 11 manufacturers created and assigned to products
- CSS consolidated into `bbike.css` + `bbike-extra.css`
- Price slider styled (navy handles, thin track)

### Evening session — Product page
- Product page 3-column layout with sticky buy box
- QuickView qty selector with custom -/+ buttons
- Product 24 déclinaisons imported (33 combinations, 6 sizes × 10 flavors)
- Countdown timer, reassurance Fitadium-style in buy box
