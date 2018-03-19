<?php
/**
 * Static content controller.
 *
 * This file will render views from views/pages/
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
App::uses('AppController', 'Controller');
App::uses('CakeEmail', 'Network/Email');

/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers/pages-controller.html
 */
class PagesController extends AppController {

/**
 * Controller name
 *
 * @var string
 */
	public $name = 'Pages';
	
	public function beforeFilter() {
	    parent::beforeFilter();
		
	    $this->Auth->allow();
		$this->loadModel('Banner');
		$this->loadModel('PageContent');
		$this->loadModel('Product');
		$this->loadModel('Category');
		$this->loadModel('Size');
		$mobile_detect = false;
		
		if($this->RequestHandler->isMobile()) {
			$mobile_detect = true;
		}
		
		$categories = $this->Category->find('all', array('conditions'=>array('OR'=>array('Category.parent_id'=>NULL, 'Category.parent_id'=>'')), 'order'=>array('Category.id'=>'DESC')));
		
		$this->set(compact('mobile_detect', 'categories'));
	}

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array();
	
	public function index(){
		$title_for_layout = "home";
		
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>1), 'order'=>array('Banner.id'=>'DESC')));
		$current_category = $this->Category->find('first', array('conditions'=>array('OR'=>array('Category.parent_id'=>NULL, 'Category.parent_id'=>'')), 'order'=>array('Category.id'=>'DESC')));
				
		$this->set(compact('title_for_layout', 'banner', 'current_category'));
	}
	
	public function collection($id=null){
		$title_for_layout = "Collection";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>3), 'order'=>array('Banner.id'=>'DESC')));
		$category = $this->Category->find('first', array('conditions'=>array('OR'=>array('Category.parent_id'=>NULL, 'Category.parent_id'=>''), 'Category.slug'=>$id), 'order'=>array('Category.id'=>'DESC')));
		$collection = $this->Category->find('all', array('conditions'=>array('NOT'=>array('Category.parent_id'=>NULL, 'Category.parent_id'=>''), 'Category.parent_id'=>$category['Category']['id']), 'order'=>array('Category.id'=>'DESC')));
		$this->set(compact('title_for_layout', 'banner', 'category', 'collection'));
	}
	
	public function collections($id=null){
		
		if($id){
			$category = $this->Category->find('first', array('conditions'=>array('Category.slug'=>$id), 'order'=>array('Category.id'=>'DESC')));
			$parent = $this->Category->find('first', array('conditions'=>array('Category.id'=>$category['Category']['parent_id']), 'order'=>array('Category.id'=>'DESC')));
			$title_for_layout = $parent['Category']['name'].' | '.$category['Category']['name'];
			$this->paginate = array('conditions'=>array('Product.category_id'=>$category['Category']['id']), 'order'=>array('Product.id' => 'DESC'), 'limit' => 20);
			$this->Product->recursive = 0;
			$products = $this->paginate('Product');
		
			$temp = $this->Product->find('first', array('conditions'=>array('Product.slug'=>$id), 'order'=>array('Product.id'=>'DESC')));
		
			$filters = $this->Category->find('all', array('conditions'=>array('NOT'=>array('Category.parent_id'=>NULL, 'Category.parent_id'=>'')), 'order'=>array('Category.id'=>'DESC')));
		}else{
			$this->redirect(array('controller'=>'pages', 'action'=>'collection'));
		}
		
		$this->set(compact('title_for_layout', 'products', 'category', 'parent', 'filters', 'sizes'));
	}
	
	public function order($category=null, $id=null){
		$category = $this->Category->find('first', array('conditions'=>array('Category.slug'=>$category), 'order'=>array('Category.id'=>'DESC')));
		$parent = $this->Category->find('first', array('conditions'=>array('Category.id'=>$category['Category']['parent_id']), 'order'=>array('Category.id'=>'DESC')));
		$title_for_layout = $parent['Category']['name'].' | '.$category['Category']['name'];
		
		$product = $this->Product->find('first', array('conditions'=>array('Product.slug'=>$id), 'order'=>array('Product.id'=>'DESC')));
		$filters = $this->Category->find('all', array('conditions'=>array('NOT'=>array('Category.parent_id'=>NULL, 'Category.parent_id'=>'')), 'order'=>array('Category.id'=>'DESC')));
		
		$this->set(compact('title_for_layout', 'products', 'category', 'parent', 'filters', 'product'));
	}
	
	public function sales($category=null, $id=null){
		$category = $this->Category->find('first', array('conditions'=>array('Category.slug'=>$category), 'order'=>array('Category.id'=>'DESC')));
		$parent = $this->Category->find('first', array('conditions'=>array('Category.id'=>$category['Category']['parent_id']), 'order'=>array('Category.id'=>'DESC')));
		$title_for_layout = $parent['Category']['name'].' | '.$category['Category']['name'];
		
		$product = $this->Product->find('first', array('conditions'=>array('Product.slug'=>$id), 'order'=>array('Product.id'=>'DESC')));
		$filters = $this->Category->find('all', array('conditions'=>array('NOT'=>array('Category.parent_id'=>NULL, 'Category.parent_id'=>'')), 'order'=>array('Category.id'=>'DESC')));
		
		if(!empty($product['Product']['sizes'])){
			$id_array = explode(",", $product['Product']['sizes']);
		}
		
		$sizes = $this->Size->find('list', array('conditions'=>array('Size.id'=>$id_array), 'fields'=>array('Size.id', 'Size.name'), 'recursive' => -1));
		
		$this->set(compact('title_for_layout', 'products', 'category', 'parent', 'filters', 'product', 'sizes'));
	}
	
	public function brand(){
		$title_for_layout = "Brand";
		$this->set(compact('title_for_layout'));
	}
	
	public function wheel(){
		$title_for_layout = "Wheel Decide";
		$this->set(compact('title_for_layout'));
	}
	
	public function contact(){
		$title_for_layout = "Contact";
		$this->set(compact('title_for_layout'));
	}
	
	public function gallery($id=false){
		$title_for_layout = "gallery";		
		$this->loadModel('Gallery');
		$this->loadModel('Image');
		
		$gallery = null;
		
		if($id){
			$gallery = $this->Gallery->find('first', array('conditions'=>array('Gallery.slug'=>$id)));
			$this->paginate = array('conditions'=>array('Image.gallery_id'=>$gallery['Gallery']['id']), 'order'=>array('Image.id' => 'DESC'), 'limit' => 30);
			$this->Image->recursive = 0;
			$images = $this->paginate('Image');
		}else{
			$this->paginate = array('conditions'=>array('Gallery.link_id'=>0), 'order'=>array('Gallery.id' => 'ASC'), 'limit' => 10);
			$this->Gallery->recursive = 0;
			$galleries = $this->paginate('Gallery');
		}
		
		
		
		/* if($id){
			$gallery = $this->Gallery->find('first', array('conditions'=>array('Gallery.slug'=>$id)));
			$this->paginate = array('conditions'=>array('Image.gallery_id'=>$gallery['Gallery']['id']), 'order'=>array('Image.id' => 'DESC'), 'limit' => 24);
			$this->Image->recursive = 0;
			$images = $this->paginate('Image');

		}else{
			$galleries = $this->Gallery->find('all');
			$this->paginate = array('order'=>array('Gallery.id' => 'DESC'), 'limit' => 24);
			$this->Gallery->recursive = 0;
			$galleries = $this->paginate('Gallery');
		} */
		
		$this->set(compact('title_for_layout', 'galleries', 'gallery', 'images'));
	}
	
	public function newsletter(){

		$this->layout = 'blank';

		if(!empty($this->request->data)):
			
		$email = new CakeEmail('default');
		//$email->from(array($this->request->data['Contact']['email'] => $this->request->data['Contact']['name']));
		
		$email->to('info@megsignature.com');
		$email->subject('Meg\'s Signature Newsletter Subscriber');
		$email->replyTo($this->request->data['Newsletter']['email']);
		$email->sender('no-reply@megsignature.com', ' Meg\'s Signature');
		$email->emailFormat('html');
		$email->template('newsletter');
		$email->viewVars(array(
	                'email' => $this->request->data['Newsletter']['email']
				)
			);

			if($email->send()):
				echo '<div class="callout success">Thank you for signing up for Meg\'s Signature newsletter</div>';
			else:
            	echo '<div class="callout alert">email error</div>';
			endif;
    else:
         $this->flash('Form field cannot be empty', 'default', array('class' => 'callout alert'));
	endif;

	}
	
	public function process_order(){

		$this->layout = 'blank';

		if(!empty($this->request->data)):
			
		$email = new CakeEmail('default');
		//$email->from(array($this->request->data['Contact']['email'] => $this->request->data['Contact']['name']));
		
		$email->to('info@megsignature.com');
		$email->cc($this->request->data['Order']['email']);
		$email->subject('Meg\'s Signature Order');
		$email->replyTo($this->request->data['Order']['email']);
		$email->sender('no-reply@megsignature.com', ' Meg\'s Signature');
		$email->emailFormat('html');
		$email->template('order');
		$email->viewVars(array(
	                'client' => $this->request->data['Order']['client'],
					'name' => $this->request->data['Order']['name'],
					'phone' => $this->request->data['Order']['phone'],
					'email' => $this->request->data['Order']['email'],
					'measurement_by' => $this->request->data['Order']['measurement_by'],
					'upper_bust' => $this->request->data['Order']['upper_bust'],
					'bust' => $this->request->data['Order']['bust'],
					'empire' => $this->request->data['Order']['empire'],
					'waist' => $this->request->data['Order']['waist'],
					'high_hip' => $this->request->data['Order']['high_hip'],
					'nipple_to_nipple' => $this->request->data['Order']['nipple_to_nipple'],
					'shoulder_to_empire' => $this->request->data['Order']['shoulder_to_empire'],
					'shoulder_to_apex' => $this->request->data['Order']['shoulder_to_apex'],
					'shoulder_to_waist' => $this->request->data['Order']['shoulder_to_waist'],
					'shoulder_to_knee' => $this->request->data['Order']['shoulder_to_knee'],
					'shoulder_to_calf' => $this->request->data['Order']['shoulder_to_calf'],
					'across_back' => $this->request->data['Order']['across_back'],
					'across_shoulder' => $this->request->data['Order']['across_shoulder'],
					'shoulder_to_waist_at_back' => $this->request->data['Order']['shoulder_to_waist_at_back'],
					'around_arm' => $this->request->data['Order']['around_arm'],
					'shoulder_to_elbow' => $this->request->data['Order']['shoulder_to_elbow'],
					'shoulder_to_wrist' => $this->request->data['Order']['shoulder_to_wrist'],
					'sleeve_length' => $this->request->data['Order']['sleeve_length'],
					'crotch_length' => $this->request->data['Order']['crotch_length'],
					'waist_for_pants' => $this->request->data['Order']['waist_for_pants'],
					'waist_to_calf_or_feet' => $this->request->data['Order']['waist_to_calf_or_feet'],
					'around_thigh' => $this->request->data['Order']['around_thigh'],
					'around_knee' => $this->request->data['Order']['around_knee'],
					'around_calf' => $this->request->data['Order']['around_calf'],
					'product_image' => $this->request->data['Order']['product_image'],
					'product_name' => $this->request->data['Order']['product_name']
				)
			);

			if($email->send()):
				echo '<div class="callout success">Thank you! Meg\'s Signature will get back to you shortly</div>';
			else:
            	echo '<div class="callout alert">email error</div>';
			endif;
    else:
         $this->flash('Form field cannot be empty', 'default', array('class' => 'callout alert'));
	endif;

	}
	
	public function process_sales(){

		$this->layout = 'blank';

		if(!empty($this->request->data)):
			
		$email = new CakeEmail('default');
		//$email->from(array($this->request->data['Contact']['email'] => $this->request->data['Contact']['name']));
		
		$email->to('info@megsignature.com');
		$email->cc($this->request->data['Order']['email']);
		$email->subject('Meg\'s Signature Sales');
		$email->replyTo($this->request->data['Order']['email']);
		$email->sender('no-reply@megsignature.com', ' Meg\'s Signature');
		$email->emailFormat('html');
		$email->template('sales');
		$email->viewVars(array(
	                'quantity' => $this->request->data['Order']['quantity'],
					'size' => $this->request->data['Order']['size'],
					'name' => $this->request->data['Order']['name'],
					'phone' => $this->request->data['Order']['phone'],
					'email' => $this->request->data['Order']['email'],
					'location' => $this->request->data['Order']['location'],
				)
			);

			if($email->send()):
				echo '<div class="callout success">Thank you! Meg\'s Signature will get back to you shortly</div>';
			else:
            	echo '<div class="callout alert">email error</div>';
			endif;
    else:
         $this->flash('Form field cannot be empty', 'default', array('class' => 'callout alert'));
	endif;

	}
	
	public function download($file_name = null, $file_dir = null) {
        $this->autoRender = false;
        $this->layout = 'ajax';

		//$file_dir = 'downloads';

        if(!$file_name) {
            $this->Session->setFlash('You have not specified a file to download');
            //$this->redirect(array('action' => 'index'));
        }

        $file = $file_name;

        if($file) {
            header("Content-Description: File Transfer");
            header("Content-Type: application/octet-stream");
            header("Content-Disposition: attachment; filename=".$file);
            header("Content-Transfer-Encoding: binary");
            header("Expires: 0");
            header("Content-Length: " . filesize(WWW_ROOT .'files' . DS . $file_dir . DS . $file));
            header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
            header("Pragma: public");             
            readfile(WWW_ROOT .'files' . DS . $file_dir . DS . $file);
        } else {
            $this->Session->setFlash('The file you are trying to download does not exist, please try again');
            //$this->redirect(array('action' => 'index'));
        }
    }
}
