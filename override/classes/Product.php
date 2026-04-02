<?php
/**
 * Product override to expose utilisation, composition, precaution via WebService API.
 */
class Product extends ProductCore
{
    
    /*
    * module: bbike_productfields
    * date: 2026-04-01 16:47:58
    * version: 1.0.0
    */
    public $utilisation;
    
    /*
    * module: bbike_productfields
    * date: 2026-04-01 16:47:58
    * version: 1.0.0
    */
    public $composition;
    
    /*
    * module: bbike_productfields
    * date: 2026-04-01 16:47:58
    * version: 1.0.0
    */
    public $precaution;
    /*
    * module: bbike_productfields
    * date: 2026-04-01 16:47:58
    * version: 1.0.0
    */
    public function __construct($id_product = null, $full = false, $id_lang = null, $id_shop = null, Context $context = null)
    {
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
