<?php echo $this->set('title_for_layout', 'Order Review'); ?>
<?php echo $this->element('head-misc'); ?>
<?php $this->Html->addCrumb('Order Review'); ?>

<?php echo $this->Html->script(array('vendor/jquery.validate.js', 'vendor/additional-methods.js', 'shop_review.js'), array('inline' => false)); ?>
<div class="large-12 columns misc reset-symbol cart-details">
	<div class="row">
		<h1>Review And Place Your Order</h1>

		<hr>

		<div class="row">
		    <div class="col col-sm-4">
		        <div class="panel panel-default">
		            <div class="panel-heading">
		                <h3 class="panel-title">Customer Info</h3>
		            </div>
		            <div class="panel-body">
		                <?php echo $shop['Order']['first_name'];?> <?php echo $shop['Order']['last_name'];?><br />
		                Email: <?php echo $shop['Order']['email'];?><br />
		                Phone: <?php echo $shop['Order']['phone'];?><br />
						<?php echo $shop['Order']['billing_address'];?><br />
		            </div>
		        </div>
		    </div>
		</div>

		<hr>
	</div>
</div>
<div class="large-12 columns reset-symbol cart-details">
<?php if($shop['OrderItem']): ?>

<div class="row">
    <div class="medium-1 columns c-pad"><span class="heading">#</span></div>
    <div class="medium-5 columns c-pad"><span class="heading">ITEM</span></div>
    <div class="medium-2 columns c-pad"><span class="heading">PRICE</span></div>
    <div class="medium-2 columns c-pad"><span class="heading">QUANTITY</span></div>
    <div class="medium-2 columns c-pad"><span class="heading">SUBTOTAL</span></div>
    <!-- <div class="small-1 columns c-pad"><span class="heading">REMOVE</span></div> -->
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
				echo $this->Html->link($item['Product']['name'], array('controller' => 'pages', 'action' => '#', 'slug' => $item['Product']['slug'])).'<br />'; 
				echo '</div>';
				echo '<div class="large-12 columns float-left c-pad desc-details">';
				$size =  AppController::getData('Size', 'id', $item['size_id']); 
				$option =  AppController::getData('ProductOption', 'id', $item['option_id']); 
				if($item['option_id']){
					echo '<p><strong>Size:</strong> '.$size['Size']['name'].', <strong>Product Option:</strong> '.$option['ProductOption']['name'].'</p>';
				}else{
					echo '<p><strong>Size:</strong> '.$size['Size']['name'].'</p>';
				}
				
				if($item['additional_info']){
					echo '<p><strong>Additional Information:</strong><br />'.$item['additional_info'].'</p>';
				}
				echo '</div>';
			?>
		</span>
           <br />
       </div>
       <div class="medium-2 columns c-pad" id="price-<?php echo $key; ?>"><?php echo '<br /><strong>GHS</strong> '.$item['Product']['price']; ?></div>
       <div class="medium-2 columns c-pad"><br /><?php echo $item['quantity']; ?></div>
       <div class="medium-2 columns c-pad" id="subtotal_<?php echo $key; ?>"><?php echo '<br /><strong>GHS</strong> '.$item['subtotal']; ?></div>
       <!-- <div class="small-1 columns text-center c-pad">
       	<?php
       		echo '<br /><a href="'.$this->Html->url(DS.'shop'.DS.'remove'.DS.$key, true).'" class="fa fa-remove remove delete" id="'.$key.'"></a>';
       	?>
       </div> -->
   </div>
	<hr>
<?php $count_items++; endforeach; ?>

<div class="row">
    <div class="large-12 columns text-right tr">
        <strong>Subtotal:</strong> <span class="normal" id="subtotal"><?php echo '<strong>GHS</strong> '.$item['Product']['currency'].$shop['Order']['subtotal']; ?></span>
        
        <br />
        <strong>Order Total:</strong> <span class="red" id="total"><?php echo '<strong>GHS</strong> '.$item['Product']['currency'].$shop['Order']['total']; ?></span>
		<br /><br />
    </div>
</div>

<?php endif; ?>
</div>
<div class="large-12 columns misc reset-symbol cart-details">
	<div class="row">
		<div class="large-12 columns text-right">
			<?php 
				echo $this->Form->create('Order');
				echo $this->Html->link(__(('Back to Shopping Cart'), true), array('controller'=> 'shop', 'action'=>'cart', 'admin' => false), array('escape' => false, 'class'=>'button secondary'));
				echo $this->Form->button('<i class="fa fa-check"></i> &nbsp; Process Order', array('class' => 'button success btn-success'));
				echo $this->Form->end();
			?>
		</div>
	</div>
</div>

<br />
<?php echo $this->element('footer'); ?>