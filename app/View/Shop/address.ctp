<?php echo $this->set('title_for_layout', 'Address'); ?>
<?php echo $this->element('head-misc'); ?>

<?php $this->Html->addCrumb('Address'); ?>

<?php echo $this->Html->script(array('shop_address.js'), array('inline' => false)); ?>

<div class="large-12 columns misc reset-symbol cart-details">
	<div class="row">
		<?php
		echo '<div class="large-12 columns message-flash">';
		echo $this->Session->flash();
		echo '</div>';
		?>
		<h1>Personal Details</h1>

		<?php echo $this->Form->create('Order'); ?>
		<hr />
	    <div class="large-6 columns c-pad">
	        <?php echo $this->Form->input('first_name', array('class' => 'form-control')); ?>
	    </div>
		<div class="large-6 columns c-pad">
			<?php echo $this->Form->input('last_name', array('class' => 'form-control')); ?>
		</div>
		<div class="large-6 columns c-pad">
			<?php echo $this->Form->input('email', array('class' => 'form-control')); ?>
		</div>
		<div class="large-6 columns c-pad">
			<?php echo $this->Form->input('phone', array('class' => 'form-control')); ?>
		</div>
		<div class="large-12 columns c-pad">
			<?php echo $this->Form->input('billing_address', array('class' => 'form-control')); ?>
		</div>
	    <div class="col col-sm-4">
	        <?php echo $this->Form->hidden('billing_address2', array('value' => 'N/A')); ?>
	        <?php echo $this->Form->hidden('billing_city', array('value' => 'N/A')); ?>
	        <?php echo $this->Form->hidden('billing_state', array('value' => 'N/A')); ?>
	        <?php echo $this->Form->hidden('billing_zip', array('value' => 'N/A')); ?>
	        <?php echo $this->Form->hidden('billing_country', array('value' => 'N/A')); ?>

	        <?php //echo $this->Form->input('sameaddress', array('type' => 'checkbox', 'label' => 'Copy Billing Address to Shipping')); ?>

	    </div>
	    <div class="col col-sm-4">
	        <?php echo $this->Form->hidden('shipping_address', array('value' => 'N/A')); ?>
	        <?php echo $this->Form->hidden('shipping_address2', array('value' => 'N/A')); ?>
	        <?php echo $this->Form->hidden('shipping_city', array('value' => 'N/A')); ?>
	        <?php echo $this->Form->hidden('shipping_state', array('value' => 'N/A')); ?>
	        <?php echo $this->Form->hidden('shipping_zip', array('value' => 'N/A')); ?>
	        <?php echo $this->Form->hidden('shipping_country', array('value' => 'N/A')); ?>
	    </div>
	</div>
</div>
<div class="large-12 columns misc reset-symbol">
	<div class="row">
		<div class="large-12 columns text-right c-pad">
			<?php 
				echo $this->Html->link(__(('Back to Shopping Cart'), true), array('controller'=> 'shop', 'action'=>'cart', 'admin' => false), array('escape' => false, 'class'=>'button secondary'));
				echo $this->Form->button('<i class="fa fa-check"></i> &nbsp; Continue', array('class' => 'button success'));
			?>
		</div>
	</div>
</div>
<?php echo $this->Form->end(); ?>

<?php echo $this->element('footer'); ?>