<?php
App::uses('AppModel', 'Model');
class OrderItem extends AppModel {

//////////////////////////////////////////////////

    public $validate = array(
        'order_id' => array(
            'rule' => 'notEmpty'
        ),
        'name' => array(
            'rule' => 'notEmpty'
        ),
        'quantity' => array(
            'rule' => 'notEmpty'
        ),
    );

//////////////////////////////////////////////////

    public $belongsTo = array(
        'Order' => array(
            'className' => 'Order',
            'foreignKey' => 'order_id',
            'conditions' => '',
            'fields' => '',
            'order' => '',
            'counterCache' => true,
            'counterScope' => array(),
        )
    );

//////////////////////////////////////////////////

}
