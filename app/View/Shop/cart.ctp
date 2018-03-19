<?php echo $this->set('title_for_layout', 'Shopping Cart'); ?>
<?php echo $this->element('head-misc'); ?>

<?php echo $this->Html->script(array('cart.js'), array('inline' => false)); ?>

<div class="large-12 columns content-white misc reset-symbol cart-details">

<?php 
	echo $this->Form->create(NULL, array('url' => array('controller' => 'shop', 'action' => 'cartupdate'))); 
?>

<div class="row">
	<?php if(empty($shop['OrderItem'])) : ?>

	<p>Shopping Cart is empty</p>

	<?php else: 
		echo $this->Session->flash(); 
		echo '<div class="large-12 columns crumbs">';
		echo $this->Html->link("Collections", $referer, array('escape' => false, 'class'=>''));
		echo ' <span class="fa fa-angle-right"></span> ';
		echo $this->Html->link(__(('Shopping Cart'), true), array('controller'=> 'shop', 'action'=>'cart', 'admin' => false), array('escape' => false, 'class'=>'current'));
		echo '</div>';
	?>
</div>

<hr>

<div class="row">
    <div class="medium-1 columns c-pad"><span class="heading">#</span></div>
    <div class="medium-5 columns c-pad"><span class="heading">ITEM</span></div>
    <div class="medium-2 columns c-pad"><span class="heading">PRICE</span></div>
    <div class="medium-1 columns c-pad"><span class="heading">QUANTITY</span></div>
    <div class="medium-2 columns c-pad"><span class="heading">SUBTOTAL</span></div>
    <div class="medium-1 columns c-pad"><span class="heading">REMOVE</span></div>
</div>

<?php $tabindex = 1; $count_items = 0; ?>
<?php foreach ($shop['OrderItem'] as $key => $item): ?>

   <div class="row" id="row-<?php echo $key; ?>">
       <div class="medium-1 columns">
		<?php 
			$child =  AppController::getParent('Product', 'category', $item['Product']['id']);
			echo $this->Html->image('products'.DS.'thumb'.DS.'small'.DS.$item['Product']['product_image'], array('alt' => "Meg's Signature", 'class'=>'')); 
			echo '<br /><br />';
		?></div>
       <div class="medium-5 columns">
           <span class="description">
			<?php 
				echo '<div class="large-12 columns c-pad">';
				echo $this->Form->input('product_id-'.$key, array('type' => 'hidden', 'value' => $key));
				echo $this->Html->link($item['Product']['name'], array('controller' => 'pages', 'action' => '#', 'slug' => $item['Product']['slug'])).'<br />'; 
				echo '</div>';
				echo '<div class="small-3 columns float-left c-pad">';
				
				$product =  AppController::getData('Product', 'id', $item['Product']['id']);
				
				if(!empty($product['Product']['sizes'])){
					$id_array = explode(",", $product['Product']['sizes']);
				}
				
				$sizes =  AppController::createList('Size', 'id', 'name', $id_array);
				
		        echo $this->Form->input('size-' . $key, array(
		        	'type'    => 'select',
		        	'options' => $sizes,
		        	'empty'   => false,
					'maxlength' => 2, 
					'tabindex' => $tabindex++, 
					'selected' => $item['size_id'],
					'label'=>false,
					'div' => false
		        ));
				echo '<br />';
				echo '</div>';
				$option_prices = AppController::createListP('ProductOption', 'id', 'name', 'product_id', $item['Product']['id']);
				if($option_prices){
					echo '<div class="medium-4 columns float-left">';
					echo $this->Form->input('price-'.$key, array(
						'type'    => 'select',
						'label'	  => false,
						'options' => $option_prices,
						'tabindex' => $tabindex++,
						'selected' => $item['option_id'],
						'empty'   => 'Select Option'
					));
					echo '</div>';
					echo '<div class="medium-9 columns float-left c-pad mini-form">';
					echo $this->Form->input('additional_info-'.$key, array('type' => 'text', 'placeholder' => 'Additional Information', 'value'=>$item['additional_info'], 'tabindex' => $tabindex++, 'label'=>false));
					echo '</div>';
				}else{
					echo '<div class="medium-9 columns float-left mini-form">';
					echo $this->Form->input('price-'.$key, array('type' => 'hidden', 'value' => null));
					echo $this->Form->input('additional_info-'.$key, array('type' => 'text', 'placeholder' => 'Additional Information', 'value'=>$item['additional_info'], 'tabindex' => $tabindex++, 'label'=>false));
					echo '</div>';
				}
				
			?>
		</span>
           <br />
       </div>
       <div class="medium-2 columns c-pad" id="price-<?php echo $key; ?>"><?php echo '<br /><strong>GHS</strong> '.$item['Product']['price']; ?></div>
       <div class="medium-1 columns c-pad"><br /><?php echo $this->Form->input('quantity-' . $key, array('div' => false, 'class' => 'numeric form-control input-small', 'label' => false, 'size' => 2, 'maxlength' => 2, 'tabindex' => $tabindex++, 'data-id' => $item['Product']['id'], 'value' => $item['quantity'])); ?></div>
       <div class="medium-2 columns c-pad" id="subtotal_<?php echo $key; ?>"><?php echo '<br /><strong>GHS</strong> '.$item['subtotal']; ?></div>
       <div class="medium-1 columns text-center c-pad">
       	<?php
       		echo '<br /><a href="'.$this->Html->url(DS.'shop'.DS.'remove'.DS.$key, true).'" class="fa fa-remove remove delete" id="'.$key.'"></a>';
       	?>
       </div>
   </div>
	<hr>
<?php $count_items++; endforeach; ?>

<div class="row">
    <div class="small-12 columns cart-details">
        <div class="text-right">
        <?php echo $this->Html->link('<i class="fa fa-ban"></i> &nbsp; Clear Shopping Cart', array('controller' => 'shop', 'action' => 'clear'), array('class' => 'button alert', 'escape' => false)); ?>
        &nbsp;
        <?php echo $this->Form->button('<i class="fa fa-calculator"></i> &nbsp; Update', array('class' => 'button secondary', 'escape' => false));?>
		<?php echo $this->Form->input('count_items', array('type' => 'hidden', 'value' => $count_items)); ?>
        <?php echo $this->Form->end(); ?>
        </div>
    </div>
</div>

<hr>

<div class="row">
    <div class="small-12 columns text-right tr cart-details">
        <strong>Subtotal:</strong> <span class="normal" id="subtotal"><?php echo '<strong>GHS</strong> '.$item['Product']['currency'].$shop['Order']['subtotal']; ?></span>
        
        <br />
        <strong>Order Total:</strong> <span class="red" id="total"><?php echo '<strong>GHS</strong> '.$item['Product']['currency'].$shop['Order']['total']; ?></span>
        <br /><br />
        <?php echo $this->Html->link('<i class="fa fa-check"></i> &nbsp; Checkout', array('controller' => 'shop', 'action' => 'address'), array('class' => 'button success', 'escape' => false)); ?>

    </div>
</div>

<br />
<br />

<?php endif; ?>
</div>
<?php echo $this->element('footer'); ?>

