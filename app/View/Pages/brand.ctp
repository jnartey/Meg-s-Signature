<div id="layerslider" style="width: 100%; height:100vh;">
	<div class="overlay-b"></div>
	<div class="ls-slide" data-ls="slidedelay: 2000; transition2d:5;">
		<?php echo $this->Html->image('brand.jpg', array('alt' => "Meg's Signature", 'class'=>'ls-bg')); ?>
	</div>
</div>
<div class="large-12 columns main-content">
	<?php echo $this->element('head'); ?>
	<div class="large-12 columns content-white top-push animation-element bounce-up">
		<div class="row">
			<div class="large-12 shrink-container">
				<div class="large-12 text-center">
					<h4>Meg’s Signature</h4>
					<span class="line-black"></span><br /><br />
				</div>
				<p>Meg’s Signature is a chic clothing line based in Ghana which produces exquisitely made dresses for women of all ages and sizes. Our unique clothes will flatter and accentuate your God given figure making you even more beautiful. We know that every woman is fearfully and wonderfully made, and it is this concept that we present to you, the first of our yearly collection, <a href="<?php echo $this->Html->url(DS.'pages'.DS.'collections'.DS.'akuaba-dolls', true) ?>"><strong>AkuaBa Dolls</strong></a></p>
				<div class="large-12 text-right">
					<h5>
						With Love<br />
						<strong>Meg</strong>
					</h5>
				</div>
			</div>
		</div>
	</div>
	<div class="large-12 columns">
		<div class="row">
			<div class="medium-4 columns brand-image animation-element bounce-up">
				<?php echo $this->Html->image('brand-image-1.jpg', array('alt' => "Meg's Signature")); ?>
			</div>
			<div class="medium-8 columns brand-black animation-element bounce-up">
				<h4>AkuaBa Dolls</h4>
				<div class="line"></div><br />
				<p>Akuaba means “doll” in my local dialect and we believe every woman is a doll; fearfully and wonderfully made.Beautiful in every way and in any figure. Let the beauty you have within radiate on the outside. Look good and feel good in our exquisite masterpieces made for the doll you are…
				<br /><br />
				<em>We say Welcome</em>
				</p>
			</div>
		</div>
	</div>
	<?php echo $this->element('footer'); ?>
</div>