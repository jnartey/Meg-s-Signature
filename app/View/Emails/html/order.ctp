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
<div class="row" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width:750px; height: auto; overflow: hidden; margin: 0 auto;">
	<div class="large-12 columns logo" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 100%; float: left; text-align: center; padding: 25px 0;" align="center">
		<?php echo $this->Html->image('logo.png', array('fullBase' => true)); ?>
	</div>
	<div class="large-12 success-notification text-center" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 100%; height: auto; overflow: hidden; margin-bottom: 7px; text-align: center; background: white; padding: 35px; border: 2px solid #ba04db;" align="center">
		<h3 style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">Thank you for Choosing Meg's Signature.</h3>
	</div>
	<div class="large-12 success-notification text-center" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 35%;float: left; height: auto; overflow: hidden; text-align: center;" align="center">
		<?php echo $this->Html->image('photogallery'.DS.'thumb'.DS.'large'.DS.$product_image, array('style' => 'width:100%;', 'fullBase' => true)); ?>
	</div>
	<div class="large-12 columns checkout-invoice-content" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 65%; float: left; height: auto; overflow: hidden; background: white; margin: 0 0 7px; padding: 25px;">
		<h3 style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; color: #999; font-weight: bold; margin: 0; padding: 0;">
			Product Name: <?php echo $product_name; ?></h3>
	<div class="large-4 columns padded" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width:100%; float: left; padding:0">
		<div class="panel panel-default" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
			<div class="panel-heading" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<h2 class="panel-title" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">Measurement Sheet</h2>
			</div>
			<div class="panel-body" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Client:</strong> <?php echo $client;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Name:</strong> <?php echo $name;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Phone:</strong> <?php echo $phone;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Email:</strong> <?php echo $email;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Measurement By:</strong> <?php echo $measurement_by;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;"><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<h3 class="panel-title" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">Front Measurement</h3>
				<strong>Upper Bust:</strong> <?php echo $upper_bust;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Bust:</strong> <?php echo $bust;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Empire:</strong> <?php echo $empire;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Waist:</strong> <?php echo $waist;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>High Hip:</strong> <?php echo $high_hip;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Nipple To Nipple:</strong> <?php echo $nipple_to_nipple;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Shoulder To Empire:</strong> <?php echo $shoulder_to_empire;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Shoulder To Apex:</strong> <?php echo $shoulder_to_apex;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Shoulder To Waist:</strong> <?php echo $shoulder_to_waist;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Shoulder To Knee:</strong> <?php echo $shoulder_to_knee;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Shoulder To Calf:</strong> <?php echo $shoulder_to_calf;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<h3 class="panel-title" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">Back Measurement</h3>
				<strong>Across Back:</strong> <?php echo $across_back;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Across Shoulder:</strong> <?php echo $across_shoulder;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Shoulder To Waist At Back:</strong> <?php echo $shoulder_to_waist_at_back;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<h3 class="panel-title" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">Arm/Sleeve Measurement</h3>
				<strong>Around Arm:</strong> <?php echo $around_arm;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Shoulder To Elbow:</strong> <?php echo $shoulder_to_elbow;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Shoulder To Wrist:</strong> <?php echo $shoulder_to_wrist;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Sleeve Length:</strong> <?php echo $sleeve_length;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<h3 class="panel-title" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">Pants Measurement</h3>
				<strong>Crotch Length:</strong> <?php echo $crotch_length;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Waist For Pants:</strong> <?php echo $waist_for_pants;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Waist To Calf Or Feet:</strong> <?php echo $waist_to_calf_or_feet;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Around Thigh:</strong> <?php echo $around_thigh;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Around Knee:</strong> <?php echo $around_knee;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
				<strong>Around Calf:</strong> <?php echo $around_calf;?><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
			</div>
		</div>
	</div>
</div>
</div>
<div class="row padded" style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; position: relative; width: 780px; height: auto; overflow: hidden; margin: 0 auto; padding: 0 25px;"><hr style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;"></div>
<br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;"><br style="-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;">
</body>
</html>
