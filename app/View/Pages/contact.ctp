<?php echo $this->element('head-misc'); ?>
<div class="large-12 columns contact">
	<div class="row">
		<h1>Contacts</h1>
		<div class="line"></div><br />
		<div class="large-7 columns float-left">
			<p>For information about our collection, please contact Meg at the following contact details.</p>
		</div><br /><br />
		<div class="large-12 columns contact-row">
			<div class="large-6 columns contact-image">
				<?php echo $this->Html->image('contact.jpg', array('alt' => "Meg's Signature", 'class'=>'')); ?>
			</div>
			<div class="large-6 columns contact-text">
				<h4>CONTACT INFORMATION</h4>
				<div class="line"></div><br />
				<p>
					<strong>Location:</strong> Tema Community 11, <a href="https://www.google.com/maps/place/5°39'42.1%22N+0°02'07.5%22W/@5.6616829,-0.0376205,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d5.6616829!4d-0.0354318?hl=en" target="_blank">Google Maps</a><br />
					<strong>Phone:</strong> +233 (0)55 555 4207<br />
					<strong>Email:</strong> <a href="mailto:info@megsignature.com">info@megsignature.com</a><br /><br />
					<strong>Working hours:</strong> Mondays to fridays, 9am - 5pm
				</p>
			</div>
		</div>
	</div>
</div>
<?php echo $this->element('footer-misc'); ?>