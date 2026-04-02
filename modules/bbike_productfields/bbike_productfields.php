<?php
/**
 * BBike Product Fields - Adds Utilisation, Composition, Précaution fields to products.
 * Accessible via PrestaShop WebService API.
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

class Bbike_Productfields extends Module
{
    public function __construct()
    {
        $this->name = 'bbike_productfields';
        $this->tab = 'front_office_features';
        $this->version = '1.0.0';
        $this->author = 'BBike';
        $this->need_instance = 0;
        $this->bootstrap = true;

        parent::__construct();

        $this->displayName = $this->l('BBike Product Fields');
        $this->description = $this->l('Adds Utilisation, Composition, Précaution fields to products (API-accessible).');
        $this->ps_versions_compliancy = ['min' => '8.0.0', 'max' => _PS_VERSION_];
    }

    public function install()
    {
        return parent::install()
            && $this->registerHook('actionProductFormBuilderModifier')
            && $this->registerHook('actionAfterCreateProductFormHandler')
            && $this->registerHook('actionAfterUpdateProductFormHandler')
            && $this->registerHook('displayAdminProductsExtra')
            && $this->addDatabaseColumns();
    }

    public function uninstall()
    {
        return parent::uninstall(); // Keep columns on uninstall to preserve data
    }

    private function addDatabaseColumns()
    {
        $sql = [];
        $cols = ['utilisation', 'composition', 'precaution'];
        
        foreach ($cols as $col) {
            $sql[] = 'ALTER TABLE `' . _DB_PREFIX_ . 'product_lang` ADD COLUMN IF NOT EXISTS `' . $col . '` TEXT DEFAULT NULL';
        }

        foreach ($sql as $query) {
            try {
                Db::getInstance()->execute($query);
            } catch (Exception $e) {
                // Column may already exist
            }
        }

        return true;
    }

    /**
     * Modify the Symfony product form to add our fields
     */
    public function hookActionProductFormBuilderModifier(array $params)
    {
        /** @var \Symfony\Component\Form\FormBuilderInterface $formBuilder */
        $formBuilder = $params['form_builder'];
        $productId = (int) $params['id'];
        $locales = $this->context->controller->getLanguages();

        $data = $this->getProductFieldsData($productId);

        // We add a custom tab via displayAdminProductsExtra instead
        // Store data for later use
        $params['data']['bbike_utilisation'] = $data['utilisation'] ?? [];
        $params['data']['bbike_composition'] = $data['composition'] ?? [];
        $params['data']['bbike_precaution'] = $data['precaution'] ?? [];
    }

    /**
     * Display extra tab in product admin
     */
    public function hookDisplayAdminProductsExtra(array $params)
    {
        $productId = (int) ($params['id_product'] ?? 0);
        $languages = Language::getLanguages(true);
        $defaultLang = (int) Configuration::get('PS_LANG_DEFAULT');
        $data = $this->getProductFieldsData($productId);

        $this->context->smarty->assign([
            'bbike_fields' => [
                'utilisation' => [
                    'label' => 'Utilisation',
                    'values' => $data['utilisation'],
                ],
                'composition' => [
                    'label' => 'Composition',
                    'values' => $data['composition'],
                ],
                'precaution' => [
                    'label' => 'Précaution',
                    'values' => $data['precaution'],
                ],
            ],
            'languages' => $languages,
            'default_language' => $defaultLang,
            'product_id' => $productId,
        ]);

        return $this->display(__FILE__, 'views/templates/admin/product_fields.tpl');
    }

    /**
     * Save after product create
     */
    public function hookActionAfterCreateProductFormHandler(array $params)
    {
        $this->saveProductFields((int) $params['id']);
    }

    /**
     * Save after product update
     */
    public function hookActionAfterUpdateProductFormHandler(array $params)
    {
        $this->saveProductFields((int) $params['id']);
    }

    private function saveProductFields(int $productId)
    {
        if ($productId <= 0) {
            return;
        }

        $languages = Language::getLanguages(true);
        $fields = ['utilisation', 'composition', 'precaution'];

        foreach ($languages as $lang) {
            $idLang = (int) $lang['id_lang'];
            foreach ($fields as $field) {
                $value = Tools::getValue('bbike_' . $field . '_' . $idLang, '');
                
                Db::getInstance()->execute(
                    'UPDATE `' . _DB_PREFIX_ . 'product_lang` SET `' . $field . '` = \'' . pSQL($value, true) . '\' WHERE `id_product` = ' . $productId . ' AND `id_lang` = ' . $idLang
                );
            }
        }
    }

    private function getProductFieldsData(int $productId): array
    {
        $result = [
            'utilisation' => [],
            'composition' => [],
            'precaution' => [],
        ];

        if ($productId <= 0) {
            return $result;
        }

        $rows = Db::getInstance()->executeS(
            'SELECT `id_lang`, `utilisation`, `composition`, `precaution` FROM `' . _DB_PREFIX_ . 'product_lang` WHERE `id_product` = ' . $productId
        );

        if ($rows) {
            foreach ($rows as $row) {
                $idLang = (int) $row['id_lang'];
                $result['utilisation'][$idLang] = $row['utilisation'] ?? '';
                $result['composition'][$idLang] = $row['composition'] ?? '';
                $result['precaution'][$idLang] = $row['precaution'] ?? '';
            }
        }

        return $result;
    }

    /**
     * Add fields to WebService API output for Product
     */
    public function hookAddWebserviceResources($params)
    {
        return [];
    }
}
