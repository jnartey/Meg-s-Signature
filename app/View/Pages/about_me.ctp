<?php echo $this->element('head'); ?>
  <div class="large-12 columns misc-banner">
  	<div id="full-slider-wrapper">
		<div id="layerslider" style="width: 100%; height:773px;">
			<div class="ls-slide" data-ls="slidedelay:8000;transition2d:5;">
				<?php echo $this->Html->image('banners'.DS.'thumb'.DS.'large'.DS.$banner['Banner']['banner_image'], array('alt' => 'okuntakinte', 'class'=>'ls-bg', 'style'=>'margin:0 !important;')); ?>
				<div class="ls-l banner-caption" style="top:0; left:0 !important;z-index:999;width:100%;" data-ls="offsetxin:400;durationin:2000;offsetxout:400;">
					<div class="row padded text-center align-center">
						<h2><?php echo $banner['Banner']['description']; ?></h2>
					</div>
				</div>
			</div>
		</div>
	</div>
  </div>
  <div class="large-12 columns about-content reset-symbol">
  	<div class="row align-center text-center">
		<div class="large-12 columns o-symbol-img">
			<?php echo $this->Html->image('okuntakinte-o-symbol.png', array('alt' => 'okuntakinte', 'class'=>'wow rollIn')); ?>
		</div>
		<div class="large-12 columns text-wrap f-expand">
			<?php echo $about_me['PageContent']['content']; ?>
		</div>
  	</div>
  </div>
<?php echo $this->element('footer'); ?>