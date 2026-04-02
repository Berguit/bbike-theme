-- ============================================
-- BBike Belleville - Filter Attributes Setup
-- PrestaShop 8.x compatible
-- Run against your PrestaShop database
-- ============================================

-- Use your PrestaShop DB prefix (default: ps_)
-- Adjust @id_lang if your default language is not 1

SET @id_lang = 1;
SET @id_shop = 1;

-- ============================================
-- 1. CREATE FEATURES
-- ============================================

-- Feature: Type de produit
INSERT INTO `ps_feature` (`position`) VALUES (
  (SELECT COALESCE(MAX(f.position), 0) + 1 FROM `ps_feature` f)
);
SET @id_feature_type = LAST_INSERT_ID();

INSERT INTO `ps_feature_lang` (`id_feature`, `id_lang`, `name`) VALUES
  (@id_feature_type, @id_lang, 'Type de produit');

INSERT INTO `ps_feature_shop` (`id_feature`, `id_shop`) VALUES
  (@id_feature_type, @id_shop);

-- Feature: Moment
INSERT INTO `ps_feature` (`position`) VALUES (
  (SELECT COALESCE(MAX(f.position), 0) + 1 FROM `ps_feature` f)
);
SET @id_feature_moment = LAST_INSERT_ID();

INSERT INTO `ps_feature_lang` (`id_feature`, `id_lang`, `name`) VALUES
  (@id_feature_moment, @id_lang, 'Moment');

INSERT INTO `ps_feature_shop` (`id_feature`, `id_shop`) VALUES
  (@id_feature_moment, @id_shop);

-- Feature: Préférence alimentaire
INSERT INTO `ps_feature` (`position`) VALUES (
  (SELECT COALESCE(MAX(f.position), 0) + 1 FROM `ps_feature` f)
);
SET @id_feature_pref = LAST_INSERT_ID();

INSERT INTO `ps_feature_lang` (`id_feature`, `id_lang`, `name`) VALUES
  (@id_feature_pref, @id_lang, 'Préférence alimentaire');

INSERT INTO `ps_feature_shop` (`id_feature`, `id_shop`) VALUES
  (@id_feature_pref, @id_shop);

-- ============================================
-- 2. CREATE FEATURE VALUES
-- ============================================

-- --- Type de produit values ---
INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_type, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Poudre');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_type, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Gélules');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_type, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Comprimés');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_type, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Liquide');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_type, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Barres');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_type, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Gel');

-- --- Moment values ---
INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_moment, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Avant entraînement');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_moment, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Pendant entraînement');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_moment, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Après entraînement');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_moment, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Au réveil');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_moment, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Au coucher');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_moment, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'En collation');

-- --- Préférence alimentaire values ---
INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_pref, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Vegan');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_pref, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Végétarien');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_pref, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Sans gluten');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_pref, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Sans lactose');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_pref, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Sans OGM');

INSERT INTO `ps_feature_value` (`id_feature`, `custom`) VALUES (@id_feature_pref, 0);
SET @fv_id = LAST_INSERT_ID();
INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES (@fv_id, @id_lang, 'Halal');

-- ============================================
-- 3. CONFIGURE FACETED SEARCH (ps_facetedsearch / ps_layered_category)
-- Enables filters for ALL categories (id_category = 0 means global)
-- filter_type values:
--   0 = Manufacturer (Brand)
--   1 = Condition
--   2 = Weight
--   3 = Price
--   4 = Attribute group
--   5 = Feature
--   6 = Category
--   7 = Availability
-- ============================================

-- Get all category IDs to apply filters to each
-- We insert for id_category = 2 (Home) as a catch-all;
-- duplicate for other categories as needed

-- First, clean any existing layered entries for our custom features
-- (safe to run multiple times)

-- Insert faceted search config for all existing categories
-- Using a procedure to loop through categories

DELIMITER //

DROP PROCEDURE IF EXISTS `bbike_setup_faceted_search`//

CREATE PROCEDURE `bbike_setup_faceted_search`()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE cat_id INT;
  DECLARE cat_cursor CURSOR FOR
    SELECT `id_category` FROM `ps_category` WHERE `active` = 1 AND `id_category` > 1;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cat_cursor;

  read_loop: LOOP
    FETCH cat_cursor INTO cat_id;
    IF done THEN
      LEAVE read_loop;
    END IF;

    -- Brand / Manufacturer (filter_type = 0)
    INSERT IGNORE INTO `ps_layered_category` (`id_category`, `id_shop`, `id_value`, `type`, `position`, `filter_type`, `filter_show_limit`)
    VALUES (cat_id, @id_shop, NULL, 'manufacturer', 0, 0, 0);

    -- Price (filter_type = 3)
    INSERT IGNORE INTO `ps_layered_category` (`id_category`, `id_shop`, `id_value`, `type`, `position`, `filter_type`, `filter_show_limit`)
    VALUES (cat_id, @id_shop, NULL, 'price', 1, 3, 0);

    -- Feature: Type de produit (filter_type = 5)
    INSERT IGNORE INTO `ps_layered_category` (`id_category`, `id_shop`, `id_value`, `type`, `position`, `filter_type`, `filter_show_limit`)
    VALUES (cat_id, @id_shop, @id_feature_type, 'id_feature', 2, 5, 0);

    -- Feature: Moment (filter_type = 5)
    INSERT IGNORE INTO `ps_layered_category` (`id_category`, `id_shop`, `id_value`, `type`, `position`, `filter_type`, `filter_show_limit`)
    VALUES (cat_id, @id_shop, @id_feature_moment, 'id_feature', 3, 5, 0);

    -- Feature: Préférence alimentaire (filter_type = 5)
    INSERT IGNORE INTO `ps_layered_category` (`id_category`, `id_shop`, `id_value`, `type`, `position`, `filter_type`, `filter_show_limit`)
    VALUES (cat_id, @id_shop, @id_feature_pref, 'id_feature', 4, 5, 0);

  END LOOP;

  CLOSE cat_cursor;
END//

DELIMITER ;

-- Execute the procedure
CALL `bbike_setup_faceted_search`();

-- Clean up
DROP PROCEDURE IF EXISTS `bbike_setup_faceted_search`;

-- ============================================
-- Done! After running this script:
-- 1. Go to Back Office > Modules > Faceted Search
-- 2. Click "Build index" to rebuild the faceted search index
-- 3. Assign feature values to your products via Catalog > Products
-- ============================================
