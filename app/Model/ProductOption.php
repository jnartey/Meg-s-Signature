<?php
App::uses('AppModel', 'Model');
class ProductOption extends AppModel {

////////////////////////////////////////////////////////////
	var $name = 'ProductOption';
    public $belongsTo = array(
        'Product' => array(
            'className' => 'Product',
            'foreignKey' => 'product_id',
            'conditions' => '',
            'fields' => '',
            'order' => ''
        )
    );
}
