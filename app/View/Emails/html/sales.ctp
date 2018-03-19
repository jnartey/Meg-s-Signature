<!-- Inliner Build Version 4380b7741bb759d6cb997545f3add21ad48f010b -->
<!DOCTYPE html>
<html class="no-js" lang="en" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; width:100%;">
<head></head>
<body style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; color: #303030; background: #ebebeb; width:100%;" bgcolor="#ebebeb">
<style type="text/css">
*:before {
-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;
}
*:after {
-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;
}
a:hover {
text-decoration: underline;
}
</style>
<!-- content section -->
<div class="row" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 780px; height: auto; overflow: hidden; margin: 0 auto;">
	<div class="large-12 columns logo" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 100%; float: left; text-align: center; padding: 25px 0;" align="center">
		<?php echo $this->Html->image('logo.png', array('fullBase' => true)); ?>
	</div>
	<div class="large-12 success-notification text-center" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 100%; height: auto; overflow: hidden; margin-bottom: 7px; text-align: center; background: white; padding: 35px; border: 2px solid #ba04db;" align="center">
		<h3 style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">Thank you for Choosing Meg's Signature.</h3>
	</div>
	<!-- <div class="large-12 columns checkout-invoice-content" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 100%; float: left; height: auto; overflow: hidden; background: white; margin: 0 0 7px; padding: 25px;">
		<h3 style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; color: #999; font-weight: bold; margin: 0; padding: 0;">
			Order ID: <?php echo $order_id; ?></h3>
	</div> -->
	<div class="large-4 columns padded" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 33.33333%; float: left; padding: 0 25px;">
		<div class="panel panel-default" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
			<div class="panel-heading" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<h3 class="panel-title" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">Customer Info</h3>
			</div>
			<div class="panel-body" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				First Name: <?php echo $shop['Order']['first_name'];?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				Last Name: <?php echo $shop['Order']['last_name'];?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				Email: <?php echo $shop['Order']['email'];?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				Phone: <?php echo $shop['Order']['phone'];?>
</div>
		</div>
	</div>
	<div class="large-12 columns padded" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 33.33333%; float: left; padding: 0 25px;">
		<div class="panel panel-default" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
			<div class="panel-heading" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<h3 class="panel-title" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">Billing Address</h3>
			</div>
			<div class="panel-body" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<?php echo $shop['Order']['billing_address'];?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;"><!-- Billing Address 2: <?php echo $shop['Order']['billing_address2'];?><br />
				Billing City: <?php echo $shop['Order']['billing_city'];?><br /> --><!-- Billing State: <?php echo $shop['Order']['billing_state'];?><br />
				Billing Zip: <?php echo $shop['Order']['billing_zip'];?><br /> --><!-- Billing Country: <?php echo $shop['Order']['billing_country'];?> -->
</div>
		</div>
	</div>
</div>
<br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;"><div class="row padded" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 780px; height: auto; overflow: hidden; margin: 0 auto; padding: 0 25px;"><hr style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;"></div>

<div class="row padded" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 780px; height: auto; overflow: hidden; margin: 0 auto; padding: 0 25px;">
	<div class="small-2 columns" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 8.33333%; float: left;">#</div>
	<div class="small-5 columns" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 50%; float: left;">ITEM</div>
	<div class="small-2 columns" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 16.66667%; float: left;">PRICE</div>
	<div class="small-1 columns hide-for-small-only r-pad text-left" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 8.33333%; float: left;text-align:left;">QTY</div>
	<div class="small-2 columns" style="text-align: right; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 14.5%; float: right;text-align:right;">SUBTOTAL</div>
</div>
<?php $orderitems = $shop['OrderItem'];  if($orderitems){ ?><div class="row padded" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 780px; height: auto; overflow: hidden; margin: 0 auto; padding: 0 25px;">
<?php $tabindex = 1; 
		
	foreach ($orderitems as $orderitem): 
	$product =  AppController::getData('Product', 'id', $orderitem['Product']['id']); 
	$size =  AppController::getData('Size', 'id', $orderitem['size']); 
	$option =  AppController::getData('ProductOption', 'id', $orderitem['option_id']); 
?><hr style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
<div class="large-12 columns" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 100%; float: left;">
		<div class="small-2 columns tab-col" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 8.33333%; float: left; font-size: 1rem; line-height: 1.1rem; padding: 0 8px 0 0;">
<?php echo $this->Html->image('products'.DS.'thumb'.DS.'small'.DS.$product['Product']['product_image'], array('style' => 'width:100%;', 'fullBase' => true)); ?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;"><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
</div>
		<div class="small-5 columns tab-col" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 50%; float: left; font-size: 1rem; line-height: 1.1rem; padding: 0 8px 0 0;">
			<?php 
				echo $product['Product']['name'].'<br />'; 
				if($option){
					echo '<p><strong>Size:</strong> '.$size['Size']['name'].', <strong>Product Option:</strong> '.$option['ProductOption']['name'].'</p>';
				}else{
					echo '<p><strong>Size:</strong> '.$size['Size']['name'].'</p>';
				}
				
				if($orderitem['additional_info']){
					echo '<p>'.$orderitem['additional_info'].'</p>';
				}
				
			?>
</div>
		<div class="small-2 columns" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 16.66667%; float: left; text-align:left;">
			<?php echo "<strong>GHS</strong> ".'<strong>GHS</strong> '.number_format($orderitem['price'], 2, '.', ',');
			?>
</div>
		<div class="small-1 columns" style="text-align: left; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 8.33333%; float: left; text-align:left"><?php echo $orderitem['quantity']; ?></div>
		<div class="small-2 columns r-pad" style="text-align: right; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 14.5%; float: right;text-align:right"><?php echo '<strong>GHS</strong> '.number_format($orderitem['subtotal'], 2, '.', ',');
			?></div>
	</div>
<?php endforeach; ?>
</div>
<div class="row padded" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 780px; height: auto; overflow: hidden; margin: 0 auto; padding: 0 25px;"><hr style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;"></div>

<div class="row padded" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 780px; height: auto; overflow: hidden; margin: 0 auto; padding: 0 25px;">
	<div class="small-2 columns hide-for-small-only" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 16.66667%; float: left;">Products: <?php echo $shop['Order']['order_item_count']; ?>
</div>
<div class="small-1 columns" style="text-align: right; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 8.33333%; float: left;" align="right">Items: <?php echo $shop['Order']['quantity']; ?>
</div>
	<div class="small-3 columns" style="text-align: right; float: right; -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; padding-left: 0em; padding-right: 0em; width: 25%;" align="right">
		<?php
			//echo 'Delivery Charge: <strong>GHS '.number_format($delivery_charge, 2, '.', ',').'</strong><br />';
			echo 'Total: <strong>GHS '.number_format($shop['Order']['total'], 2, '.', ',').''; 
		?>
	</div>
</div>
<?php } ?><div class="row padded" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 780px; height: auto; overflow: hidden; margin: 0 auto; padding: 0 25px;"><hr style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;"></div>
<br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;"><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
</body>
</html>
