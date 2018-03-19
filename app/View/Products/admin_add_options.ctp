<div class="row">
	<div class="large-12 columns">
		<div class="module yellow">
			<h2>
				<?php echo $current_page; ?> <a href="#"><?php echo strip_tags($header); ?></a>
			</h2>
		</div>
	</div>
</div>
<div class="row">
	<div class="large-2 columns">
		<?php echo $this->element('admin'.DS.'product_menu'); ?>
	</div>
	<div class="large-10 columns content">
		<?php 
			echo $this->Session->flash(); 
			echo '<div class="large-12 columns">';
				if($product_parent['Product']['id']):
					echo $this->Html->link(__(("cancel"), true), array('controller'=> 'products', 'action'=>'view_options', $product_parent['Product']['id'], 'admin' => true), array('escape' => false, 'class'=>'button small primary right')); 
				else:
					echo $this->Html->link(__(("cancel"), true), array('controller'=> 'products', 'action'=>'index', 'admin' => true), array('escape' => false, 'class'=>'button small primary right'));
				endif;
			echo '</div>';
			echo '<div class="large-12 columns">';
			echo $this->Form->create('ProductOption', array('type' => 'file'));
			echo $this->Form->input('name', array('placeholder'=>'Name'));
			echo $this->Form->input('price', array('placeholder'=>'Price'));
			echo $this->Form->hidden('product_id', array('value'=>$product_parent['Product']['id']));
			echo $this->Form->end('Add'); 
		?>
		</div>
	</div>
</div>