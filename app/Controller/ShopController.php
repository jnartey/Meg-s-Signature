<?php
App::uses('AppController', 'Controller');
class ShopController extends AppController {

//////////////////////////////////////////////////

    public $components = array(
        'Cart',
        'Paypal',
        'AuthorizeNet'
    );

//////////////////////////////////////////////////

    public $uses = 'Product';

//////////////////////////////////////////////////

    public function beforeFilter() {
        parent::beforeFilter();
        $this->disableCache();
		$this->Auth->allow();
		$this->layout = 'default';
        //$this->Security->validatePost = false;
		
		$this->loadModel('Category');
		$mobile_detect = false;
		
		if($this->RequestHandler->isMobile()) {
			$mobile_detect = true;
		}
		
		$categories = $this->Category->find('all', array('conditions'=>array('OR'=>array('Category.parent_id'=>NULL, 'Category.parent_id'=>'')), 'order'=>array('Category.id'=>'DESC')));
		
		$this->set(compact('mobile_detect', 'categories'));
    }

//////////////////////////////////////////////////

    public function clear() {
        $this->Cart->clear();
		$this->Session->setFlash('All item(s) removed from your shopping cart', 'default', array('class' => 'callout alert'));
        return $this->redirect(array('controller'=>'pages', 'action'=>'index'));
    }

//////////////////////////////////////////////////

    public function add() {
        if ($this->request->is('post')) {
			
            $id = $this->request->data['Product']['id'];

            $quantity = isset($this->request->data['Product']['quantity']) ? $this->request->data['Product']['quantity'] : null;
			
			$size = isset($this->request->data['Product']['size']) ? $this->request->data['Product']['size'] : null;
			$aditional_info = isset($this->request->data['Product']['additional_info']) ? $this->request->data['Product']['additional_info'] : null;
			$option = isset($this->request->data['Product']['option_price']) ? $this->request->data['Product']['option_price'] : null;

            $product = $this->Cart->add($id, $quantity, $size, $aditional_info, $option);
        }
        if(!empty($product)) {
			$this->Session->setFlash($product['Product']['name'].' was added to your shopping cart.', 'default', array('class' => 'callout success'));
        } else {
			$this->Session->setFlash($product['Product']['name'].' Unable to add this product to your shopping cart.', 'default', array('class' => 'callout alert'));
        }
		
        $this->redirect($this->referer());
    }

//////////////////////////////////////////////////

    public function itemupdate() {
        if ($this->request->is('ajax')) {

            $id = $this->request->data['id'];

            $quantity = isset($this->request->data['quantity']) ? $this->request->data['quantity'] : null;
			$size = isset($this->request->data['Product']['size']) ? $this->request->data['Product']['size'] : null;

            if(isset($this->request->data['mods']) && ($this->request->data['mods'] > 0)) {
                $productmodId = $this->request->data['mods'];
            } else {
                $productmodId = null;
            }

            // echo $productmodId ;
            // die;

            $product = $this->Cart->add($id, $quantity, $size);

        }
        $cart = $this->Session->read('Shop');
        echo json_encode($cart);
        $this->autoRender = false;
    }

//////////////////////////////////////////////////

    public function update() {
        $this->Cart->update($this->request->data['Product']['id'], 1);
    }

//////////////////////////////////////////////////

    public function remove($id = null) {
        $product = $this->Cart->remove($id);
        if(!empty($product)) {
			$this->Session->setFlash($product['Product']['name'] . ' was removed from your shopping cart', 'default', array('class' => 'callout alert'));
        }
        return $this->redirect(array('action' => 'cart'));
    }

//////////////////////////////////////////////////
	
	// //groups array
// 	public function array_group($array, $num){
// 	    $num = (int) $num;
// 	    if ($num < 1) {
// 	        throw new \InvalidArgumentException('At least one group must be returned.');
// 	    }
//
// 	    $count = count($array);
// 	    if ($count && $count % $num === 0) {
// 	        return array_chunk($array, $count / $num);
// 	    }
//
// 	    $groups = [];
// 	    $offset = 0;
// 	    do {
// 	        $length   = ceil(($count - $offset) / $num);
// 	        $groups[] = array_slice($array, $offset, $length);
// 	        $offset   += $length;
// 	    } while (--$num);
//
// 	    return $groups;
// 	}


    public function cartupdate() {
		$cart_data = null;
        if($this->request->is('post')) {
			$i=0;
			
			//removing array element with key count_items
			$to_remove = array("count_items");
			$filtered_array = array_diff_key($this->request->data['Product'], array_flip($to_remove));
			
			$count_el = count($filtered_array);
			
			//Grouping array into 5
			$grouped = array_chunk($filtered_array, $count_el / $this->request->data['Product']['count_items']);
						
			foreach($grouped as $data):
				$id = $data[0];
				$size = $data[1];
				$option = $data[2];
				$additional_info = $data[3];
				$quantity = $data[4];
								
				$this->Cart->add($id, $quantity, $size, $additional_info, $option);
			endforeach;
			
			
			// foreach():
// 			endforeach;
											
            // foreach($this->request->data['Product'] as $key => $value) {
//                 $p = explode('-', $key);
//                 $p = explode('_', $p[1]);
// 				//pr($p);
//                 $this->Cart->add($p[0], $value, $p[1]);
// 				$i++;
//             }
            // $this->Flash->success('Shopping Cart is updated.');
        }
        return $this->redirect(array('action' => 'cart'));
    }

//////////////////////////////////////////////////

    public function cart($category=null) {
		$this->layout = 'default';
		
		$this->loadModel('Banner');
		$banners = $this->Banner->find('all', array('conditions'=>array('Banner.category'=>4), 'order'=>array('Banner.id'=>'ASC')));
        $shop = $this->Session->read('Shop');
		$this->set('referer', $this->referer());
        $this->set(compact('shop', 'banners', 'category'));
    }

//////////////////////////////////////////////////

    public function address() {
		$shop = $this->Session->read('Shop');
		if(!$shop['Order']['total']) {
			return $this->redirect('/');
		}

		if ($this->request->is('post')) {
			$this->loadModel('Order');
			$this->Order->set($this->request->data);
			if($this->Order->validates()) {
				//pr($this->request->data['Order']);
				$order = $this->request->data['Order'];
				$this->Session->write('Shop.Order', $order + $shop['Order']);
				return $this->redirect(array('action' => 'review'));
			} else {
				$this->Session->setFlash('The form could not be saved. Please, try again.', 'flash_error');
			}
		}
		
		if(!empty($shop['Order'])) {
			$this->request->data['Order'] = $shop['Order'];
		}
		
		$this->set(compact('shop'));

    }

//////////////////////////////////////////////////

    public function step1() {
        $shop = $this->Session->read('Shop');
        if(!$shop) {
            return $this->redirect('/');
        }
        $this->Session->write('Shop.Order.order_type', 'paypal');
        $this->Paypal->step1($shop);
    }

//////////////////////////////////////////////////

    public function step2() {

        $token = $this->request->query['token'];
        $paypal = $this->Paypal->GetShippingDetails($token);

        $ack = strtoupper($paypal['ACK']);
        if($ack == 'SUCCESS' || $ack == 'SUCESSWITHWARNING') {
            $this->Session->write('Shop.Paypal.Details', $paypal);
            return $this->redirect(array('action' => 'review'));
        } else {
            $ErrorCode = urldecode($paypal['L_ERRORCODE0']);
            $ErrorShortMsg = urldecode($paypal['L_SHORTMESSAGE0']);
            $ErrorLongMsg = urldecode($paypal['L_LONGMESSAGE0']);
            $ErrorSeverityCode = urldecode($paypal['L_SEVERITYCODE0']);
            echo 'GetExpressCheckoutDetails API call failed. ';
            echo 'Detailed Error Message: ' . $ErrorLongMsg;
            echo 'Short Error Message: ' . $ErrorShortMsg;
            echo 'Error Code: ' . $ErrorCode;
            echo 'Error Severity Code: ' . $ErrorSeverityCode;
            die();
        }

    }

//////////////////////////////////////////////////

    public function review() {

        $shop = $this->Session->read('Shop');

        if(empty($shop)) {
            return $this->redirect('/');
        }

        if ($this->request->is('post')) {

            $this->loadModel('Order');
			$this->loadModel('OrderItem');
			$order_id = null;

            $this->Order->set($this->request->data);
            if($this->Order->validates()) {
                $order = $shop;

                $save = $this->Order->saveAll($order, array('validate' => 'first'));
                if($save) {
                    $this->set(compact('shop'));
					
                    App::uses('CakeEmail', 'Network/Email');
                    $email = new CakeEmail('default');
                    $email->from('info@megsignature.com')
                            ->cc('info@megsignature.com')
                            ->to($order['Order']['email'])
                            ->subject('Meg\'s Signature Shop Order')
                            ->template('sales')
                            ->emailFormat('html')
                            ->viewVars(array('shop' => $shop));
                    if($email->send()){
						$this->Cart->clear();
                    	echo '<div class="callout success">Thank you! Meg\'s Signature will get back to you shortly</div>';
						return $this->redirect('/');
                    }else{
                    	echo '<div class="callout alert">email error</div>';
                    }
                } else {
                    $errors = $this->Order->invalidFields();
                    $this->set(compact('errors'));
                }
            }
        }
		
        $this->set(compact('shop'));

    }

//////////////////////////////////////////////////

    public function success() {
        $shop = $this->Session->read('Shop');
        $this->Cart->clear();
        if(empty($shop)) {
            return $this->redirect('/');
        }
        $this->set(compact('shop'));
    }

//////////////////////////////////////////////////

}
