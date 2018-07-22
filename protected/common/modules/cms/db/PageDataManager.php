<?php
/**
 * @copyright Copyright (C) 2016 Usha Singhai Neo Informatique Pvt. Ltd
 * @license https://www.gnu.org/licenses/gpl-3.0.html
 */
namespace common\modules\cms\db;

use usni\library\db\DataManager;
use common\modules\cms\models\Page;
use common\modules\cms\Module;
use usni\UsniAdaptor;
/**
 * Loads default data related to page.
 *
 * @package common\modules\cms\db
 */
class PageDataManager extends DataManager
{
    /**
     * @inheritdoc
     */
    public static function getModelClassName()
    {
        return Page::className();
    }
    
    /**
     * @inheritdoc
     */
    public function getDefaultDataSet()
    {
        return [
                    [
                        'name'              => UsniAdaptor::t('cms', 'Tentang Kami'),
                        'alias'             => UsniAdaptor::t('cms', 'about-us'),
                        'content'           => $this->getPageContent('_aboutus'),
                        'status'            => Module::STATUS_PUBLISHED,
                        'menuitem'          => UsniAdaptor::t('cms', 'Tentang Kami')   ,
                        'theme'             => null,
                        'parent_id'         => 0,
                        'summary'           => UsniAdaptor::t('cms', 'About us summary'),
                        'metakeywords'      => UsniAdaptor::t('cms', 'Tentang Kami'),
                        'metadescription'   => UsniAdaptor::t('cms', 'about us description'),
                    ],
                    [
                        'name'              => UsniAdaptor::t('cms', 'Informasi Pengiriman'),
                        'alias'             => UsniAdaptor::t('cms', 'delivery-info'),
                        'content'           => $this->getPageContent('_delivery'),
                        'status'            => Module::STATUS_PUBLISHED,
                        'menuitem'          => UsniAdaptor::t('cms', 'Informasi Pengiriman'),
                        'theme'             => null,
                        'parent_id'         => 0,
                        'summary'           => UsniAdaptor::t('cms', 'Delivery information summary'),
                        'metakeywords'      => UsniAdaptor::t('cms', 'delivery information'),
                        'metadescription'   => UsniAdaptor::t('cms', 'deliverr information description'),
                    ],
                    [
                        'name'              => UsniAdaptor::t('cms', 'Kebijakan Privasi'),
                        'alias'             => UsniAdaptor::t('cms', 'privacy-policy'),
                        'content'           => $this->getPageContent('_privacypolicy'),
                        'status'            => Module::STATUS_PUBLISHED,
                        'menuitem'          => UsniAdaptor::t('cms', 'Kebijakan Privasi'),
                        'theme'             => null,
                        'parent_id'         => 0,
                        'summary'           => UsniAdaptor::t('cms', 'Privacy policy summary'),
                        'metakeywords'      => UsniAdaptor::t('cms', 'privacy policy'),
                        'metadescription'   => UsniAdaptor::t('cms', 'privacy policy description'),
                    ],
                    [
                        'name'              => UsniAdaptor::t('cms', 'Syarat dan Ketentuan'),
                        'alias'             => UsniAdaptor::t('cms', 'terms'),
                        'content'           => $this->getPageContent('_terms'),
                        'status'            => Module::STATUS_PUBLISHED,
                        'menuitem'          => UsniAdaptor::t('cms', 'Syarat dan Ketentuan'),
                        'theme'             => null,
                        'parent_id'         => 0,
                        'summary'           => UsniAdaptor::t('cms', 'Terms & condition summary'),
                        'metakeywords'      => UsniAdaptor::t('cms', 'terms & condition'),
                        'metadescription'   => UsniAdaptor::t('cms', 'terms & condition description'),
                    ]
                ];
    }
    
	/**
     * Get content
     * @param string $template
     * @return string
     */
    public function getPageContent($template)
    {
        $filePath       = UsniAdaptor::app()->getModule('cms')->viewPath . "/templates/$template.php";
        if(file_exists($filePath))
        {
            return file_get_contents($filePath);
        }
        return null;
    }
}