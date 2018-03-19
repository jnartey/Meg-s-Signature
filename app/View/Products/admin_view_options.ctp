<div class="row">
	<div class="large-12 columns">
		<div class="module yellow">
			<h2>
				<?php echo $current_page.strip_tags($product_parent['Product']['name']); ?> <a href="#"><?php echo $header; ?></a>
			</h2>
		</div>
	</div>
</div>
<div class="row">
	<div class="large-2 columns admin-left-panel">
		<?php echo $this->element('admin'.DS.'product_menu'); ?>
	</div>
	<div class="large-10 columns content">
		<?php echo $this->Session->flash(); ?>
		<div class="twelve columns">
			<?php 
				if($product_parent['Product']['category']):
					echo $this->Html->link(__(("&lsaquo; back"), true), array('controller'=> 'products', 'action'=>'view', $product_parent['Product']['category'], 'admin' => true), array('escape' => false, 'class'=>'button small primary')); 
				else:
					echo $this->Html->link(__(("&lsaquo; back"), true), array('controller'=> 'products', 'action'=>'index', 'admin' => true), array('escape' => false, 'class'=>'button small primary'));
				endif;
				echo $this->Html->link(__("Add Option", true), array('controller'=> 'products', 'action'=>'add_options', $product['Product']['id'], 'admin' => true), array('escape'=>false, 'class'=>'button small success'));
					echo $this->Html->link(__(("Edit"), true), array('controller'=> 'products', 'action'=>'edit_options', $product['Product']['id'], 'admin' => true), array('escape' => false, 'class'=>'button small secondary')); 
			?>
		</div>
		<div class="large-10 columns">
			<div class="panel">
				<?php
					echo '<p><strong>'.__('Product Title: ').'</strong><br />'; 
					echo $product['Product']['name'].'<br /></p>';
					//echo $product['Product']['price'].'</p>';
					
				?>
			</div>
		</div>
		<div class="large-12 columns">
			<?php if($productoptions){ ?>
			<table cellspacing="0">
				<thead>
					<tr>
						<th>
							<?php echo $this->Paginator->sort('name');?>
						</th>
						<th>
							<?php echo $this->Paginator->sort('price');?>
						</th>
						<th>
							<?php echo __('Actions');?>
						</th>
					</tr>
				</thead>
				<tbody>
					<?php
						foreach ($productoptions as $productoption):
					?>
					<tr>
						<td>
							<?php 
								echo $productoption['ProductOption']['name']; 
							?>
						</td>
						<td>
							<?php 
								echo $productoption['ProductOption']['price']; 
							?>
						</td>
						<td class="actions">
							<?php 
								echo $this->Html->link(__(("Edit"), true), array('controller'=> 'products', 'action'=>'edit_options', $productoption['ProductOption']['id'], $product_parent['Product']['id'], 'admin' => true), array('escape' => false, 'class'=>'button tiny secondary'));
								if(isset($product_parent) && !empty($product)){
									echo $this->Form->postLink(__("Delete", true), array('controller'=> 'products', 'action'=>'delete_option', $productoption['ProductOption']['id'], 'admin' => true), array('escape'=>false, 'class'=>'button tiny alert'), sprintf(__('Are you sure you want to delete '.$productoption['ProductOption']['name'].'?', true), $productoption['ProductOption']['id']));
								}
							?>
						</td>
					</tr><?php endforeach; ?>
				</tbody>
			</table><?php } ?>
		</div>
		<div class="row">
			<div class="large-12 columns">
				<div class="pagination">
					<?php 
						echo '<span class="unavailable">&laquo;</span>'.$this->Paginator->prev(__('prev', true), array(), null, array('class'=>'unavailable'));
						echo $this->Paginator->numbers();
						echo $this->Paginator->next(__('next', true), array(), null, array('class'=>'unavailable')).'<span class="unavailable">&raquo;</span>';
					?>
				</div>
			</div>
		</div>
	</div>
</div>
