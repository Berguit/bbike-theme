<?php
/**
 * Product override to expose utilisation, composition, precaution via WebService API.
 */

class Product extends ProductCore
{
    /** @var string */
    public $utilisation;

    /** @var string */
    public $composition;

    /** @var string */
    public $precaution;

    public function __construct($id_product = null, $full = false, $id_lang = null, $id_shop = null, Context $context = null)
    {
        // Add field definitions before parent constructor
        self::$definition['fields']['utilisation'] = [
            'type' => self::TYPE_HTML,
            'lang' => true,
            'validate' => 'isCleanHtml',
            'ws_modifier' => null,
        ];
        self::$definition['fields']['composition'] = [
            'type' => self::TYPE_HTML,
            'lang' => true,
            'validate' => 'isCleanHtml',
            'ws_modifier' => null,
        ];
        self::$definition['fields']['precaution'] = [
            'type' => self::TYPE_HTML,
            'lang' => true,
            'validate' => 'isCleanHtml',
            'ws_modifier' => null,
        ];

        parent::__construct($id_product, $full, $id_lang, $id_shop, $context);
    }
}
