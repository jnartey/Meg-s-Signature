<?php
class CartComponent extends Component {

//////////////////////////////////////////////////

    public $components = array('Session');

//////////////////////////////////////////////////

    public $controller;

//////////////////////////////////////////////////

    public function __construct(ComponentCollection $collection, $settings = array()) {
        $this->controller = $collection->getController();
        parent::__construct($collection, array_merge($this->settings, (array)$settings));
    }

//////////////////////////////////////////////////

    public function startup(Controller $controller) {

    }

//////////////////////////////////////////////////

    public $maxQuantity = 99;

//////////////////////////////////////////////////

    public function add($id, $quantity = 1, $size = null, $additional_info = null, $option) {		
        if($size) {
            $sizemod = ClassRegistry::init('Size')->find('first', array(
                'recursive' => -1,
                'conditions' => array(
                    'Size.id' => $size,
                    //'Productmod.product_id' => $id,
                )
            ));
        }
		
        if($option) {
            $optionmod = ClassRegistry::init('ProductOption')->find('first', array(
                'recursive' => -1,
                'conditions' => array(
                    'ProductOption.id' => $option,
                    //'Productmod.product_id' => $id,
                )
            ));
        }

        if(!is_numeric($quantity)) {
            $quantity = 1;
        }

        $quantity = abs($quantity);

        if($quantity > $this->maxQuantity) {
            $quantity = $this->maxQuantity;
        }

        if($quantity == 0) {
            $this->remove($id);
            return;
        }

        $product = $this->controller->Product->find('first', array(
            'recursive' => -1,
            'conditions' => array(
                'Product.id' => $id
            )
        ));
		
        if(empty($product)) {
            return false;
        }

        // if($this->Session->check('Shop.OrderItem.' . $id . '.Product.size_id')) {
//             $sizemod['Size']['id'] = $this->Session->read('Shop.OrderItem.' . $id . '.Product.size_id');
//             $sizemod['Size']['name'] = $this->Session->read('Shop.OrderItem.' . $id . '.Product.size_name');
//         }
//
//         if($this->Session->check('Shop.OrderItem.' . $id . '.Product.option_id')) {
//             $optionmod['ProductOption']['id'] = $this->Session->read('Shop.OrderItem.' . $id . '.Product.option_id');
//             $optionmod['ProductOption']['name'] = $this->Session->read('Shop.OrderItem.' . $id . '.Product.option_name');
// 			$optionmod['ProductOption']['price'] = $this->Session->read('Shop.OrderItem.' . $id . '.Product.option_price');
//         }
				
        if(isset($sizemod)) {
            $product['Product']['size_id'] = $sizemod['Size']['id'];
            $product['Product']['size_name'] = $sizemod['Size']['name'];
            //$size = $sizemod['Size']['id'];
            $data['size_id'] = $product['Product']['size_id'];
            $data['size_name'] = $product['Product']['size_name'];
        } else {
            $product['Product']['size_id'] = '';
            $product['Product']['size_name'] = '';
            $size = 0;
            $data['size_id'] = '';
            $data['size_name'] = '';
        }
		
        if(isset($optionmod)) {
            $product['Product']['option_id'] = $optionmod['ProductOption']['id'];
            $product['Product']['option_name'] = $optionmod['ProductOption']['name'];
			
			if($optionmod['ProductOption']['price']){
				$product['Product']['price'] = $optionmod['ProductOption']['price'];
			}
			
            //$option = $optionmod['Size']['id'];
            $data['option_id'] = $product['Product']['option_id'];
            $data['option_name'] = $product['Product']['option_name'];
			$data['price'] = $product['Product']['price'];
        } else {
            $product['Product']['option_id'] = '';
            $product['Product']['option_name'] = '';
			$product['Product']['option_price'] = '';
            $size = 0;
            $data['option_id'] = '';
            $data['option_name'] = '';
			$data['option_price'] = '';
        }

        $data['product_id'] = $product['Product']['id'];
        $data['name'] = $product['Product']['name'];
        $data['weight'] = $product['Product']['weight'];
		$data['size'] = $product['Product']['size_id'];
		$data['option_id'] = $product['Product']['option_id'];
		//$data['size'] = $size;
		$data['price'] = $product['Product']['price'];
        $data['quantity'] = $quantity;
		$data['additional_info'] = $additional_info;
        $data['subtotal'] = sprintf('%01.2f', $product['Product']['price'] * $quantity);
        $data['totalweight'] = sprintf('%01.2f', $product['Product']['weight'] * $quantity);
        $data['Product'] = $product['Product'];
        $this->Session->write('Shop.OrderItem.' . $id, $data);
        $this->Session->write('Shop.Order.shop', 1);

        $this->cart();

        return $product;
    }

//////////////////////////////////////////////////

    public function remove($id) {
        if($this->Session->check('Shop.OrderItem.' . $id)) {
            $product = $this->Session->read('Shop.OrderItem.' . $id);
            $this->Session->delete('Shop.OrderItem.' . $id);
            $this->cart();
            return $product;
        }
        return false;
    }

//////////////////////////////////////////////////

    public function cart() {
        $shop = $this->Session->read('Shop');
        $quantity = 0;
        $weight = 0;
		$size = 0;
        $subtotal = 0;
        $total = 0;
        $order_item_count = 0;

        if (count($shop['OrderItem']) > 0) {
            foreach ($shop['OrderItem'] as $item) {
                $quantity += $item['quantity'];
                $weight += $item['totalweight'];
				$size += $item['size'];
                $subtotal += $item['subtotal'];
                $total += $item['subtotal'];
                $order_item_count++;
            }
            $d['order_item_count'] = $order_item_count;
            $d['quantity'] = $quantity;
			$d['size'] = $size;
            $d['weight'] = sprintf('%01.2f', $weight);
            $d['subtotal'] = sprintf('%01.2f', $subtotal);
            $d['total'] = sprintf('%01.2f', $total);
            $this->Session->write('Shop.Order', $d + $shop['Order']);
            return true;
        }
        else {
            $d['quantity'] = 0;
            $d['weight'] = 0;
			$d['size'] = 0;
            $d['subtotal'] = 0;
            $d['total'] = 0;
            $this->Session->write('Shop.Order', $d + $shop['Order']);
            return false;
        }
    }

//////////////////////////////////////////////////

    public function clear() {
        $this->Session->delete('Shop');
    }

//////////////////////////////////////////////////

}
