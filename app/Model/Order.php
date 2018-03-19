<?php
App::uses('AppModel', 'Model');
class Order extends AppModel {

//////////////////////////////////////////////////

    public $validate = array(
        'name' => array(
            'rule' => 'notEmpty'
        ),
        'email' => array(
            'rule' => 'notEmpty'
        ),
        'phone' => array(
           'rule' => 'notEmpty'
        ),
		'billing_address' => array(
		    'rule' => 'notEmpty'
		),
        'billing_city' => array(
            'rule' => 'notEmpty'
        ),
        'billing_state' => array(
            'rule' => 'notEmpty'
        ),
        'shipping_address' => array(
            'rule' => 'notEmpty'
        ),
        'shipping_city' => array(
            'rule' => 'notEmpty'
        ),
        'shipping_state' => array(
            'rule' => 'notEmpty'
        ),
        'creditcard_number' => array(
            'rule' => 'notEmpty'
        ),
        'creditcard_code' => array(
            'rule' => 'notEmpty'
        ),
    );

//////////////////////////////////////////////////

    public $hasMany = array(
        'OrderItem' => array(
            'className' => 'OrderItem',
            'foreignKey' => 'order_id',
            'dependent' => true,
            'conditions' => '',
            'fields' => '',
            'order' => '',
            'limit' => '',
            'offset' => '',
            'exclusive' => '',
            'finderQuery' => '',
            'counterQuery' => '',
        )
    );

//////////////////////////////////////////////////

}
