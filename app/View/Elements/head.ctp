<div class="large-12 columns head">
	<div class="medium-2 columns">
		<div class="button_container fixed" id="toggle">
			<div class="bars">
  			  <span class="top"></span>
  			  <span class="middle"></span>
  			  <span class="bottom"></span>
			</div>
			<div class="menu-title"><div class="open">Menu</div><div class="close">Close</div></div>
		</div>
	</div>
	<div class="medium-8 columns logo text-center animation-element bounce-up">
		<a href="<?php echo $this->Html->url(DS, true); ?>"><?php echo $this->Html->image('logo.png', array('alt' => "Meg's Signature")); ?></a>
	</div>
	<div class="medium-2 columns cart animation-element bounce-up">
		<a href="<?php echo $this->Html->url(DS.'shop'.DS.'cart', true); ?>">
			<?php echo $this->Html->image('cart-icon.png', array('alt' => "Meg's Signature")).' '.'<span class="text-white"> '.$cart_count.'</span>'; ?>
		</a>
	</div>
</div>