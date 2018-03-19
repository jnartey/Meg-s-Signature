<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div id="layerslider" class="home-automate" style="width: 100%; height:100vh;">
	<!-- <div class="overlay-f"></div> -->
	<div class="overlay-b"></div>
	<!-- <div class="ls-slide" data-ls="slidedelay: 2000; transition2d:5;">
		<img src="img/background-1.jpg" class="ls-bg" alt="Meg's Signature"/>
	</div> -->
	<?php
		echo '<div class="ls-slide" data-ls="slidedelay: 4000; transition2d:5;">';
		echo $this->Html->image('banners'.DS.'thumb'.DS.'large'.DS.$banner['Banner']['banner_image'], array('alt' => "Meg's Signature", 'class'=>'ls-bg'));
		echo '<div class="ls-l banner-text" style="top:30vh;left:150px;" data-ls="offsetxin:0;delayin:1720;easingin:easeInOutQuart;scalexin:0.7;scaleyin:0.7;offsetxout:-800;durationout:1000;">';
		echo '<h1>'.$banner['Banner']['description'].'</h1>';
		echo '</div></div>';
	?>
	<!-- <div class="ls-slide" data-ls="slidedelay: 4000; transition2d:5;">
		<img src="img/background-3.jpg" class="ls-bg" alt="Meg's Signature"/>
	</div> -->
</div>

<div id="start" class="large-12 columns main-content">
	<?php echo $this->element('head'); ?>

	<div class="large-12 columns wrapper">
		<ul class="large-3 columns sub-menu animation-element bounce-up">
			<li><?php echo $this->Html->link(__(('<span>Collection</span> <span class="fa fa-angle-right"></span>'), true), array('controller'=> 'pages', 'action'=>'collection', $current_category['Category']['slug']), array('escape' => false)); ?></li>
			<li><?php echo $this->Html->link(__(('<span>The brand</span> <span class="fa fa-angle-right"></span>'), true), array('controller'=> 'pages', 'action'=>'brand'), array('escape' => false)); ?></li>
		</ul>
	</div>
	<a class="more animation-element bounce-up" href="#">more<br /><span class="fa fa-angle-double-down fa-2x"></span></a>
	<div class="christmas-box">
		<?php
			echo '<a href="'.$this->Html->url(DS.'pages'.DS.'collections'.DS.'touch-of-heaven', true).'"><span>Check out our <strong>New Collection</strong></span></a>';
		?>
	</div>
</div>

<div id="automate" class="large-12 columns box-content">
	<div class="medium-6 columns">
		<div class="deep-gray-box pull-right animation-element bounce-up">
			<h4>
				Meg's<br />
				Signature
			</h4>
			<p>Meg's Signature is a chic clothing line based in Ghana which produces exquisitely made dresses for women of all ages and sizes.</p>
			<?php echo $this->Html->link(__(('discover the brand'), true), array('controller'=> 'pages', 'action'=>'brand'), array('escape' => false, 'class'=>'read-more')); ?>
		</div>
	</div>
</div>

<div class="large-12 columns box-content">
	<div class="medium-6 columns pad-s-right animation-element bounce-up">
		<div class="large-11 columns black-box float-right">
			<h4>AkuaBa<br /> Dolls</h4>
			<p>Akuaba means “doll” in my local dialect and we believe every woman is a doll; fearfully and wonderfully made.</p>
			<span class="line"></span>
			<?php echo $this->Html->link(__(('read more'), true), array('controller'=> 'pages', 'action'=>'collection', 'akuaba-dolls'), array('escape' => false, 'class'=>'read-more')); ?>
		</div>
	</div>
	<div class="medium-6 columns animation-element bounce-up">
		<div class="large-12 columns facebook-feed pull-left pull-top" data-equalizer data-equalize-on="small">
			<div class="medium-6 columns text" data-equalizer-watch>
				<div class="fb-page" data-href="https://www.facebook.com/AkuaBaDollsMS/" data-tabs="timeline" data-width="420" data-height="280" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="true"><blockquote cite="https://www.facebook.com/AkuaBaDollsMS/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/AkuaBaDollsMS/">Meg&#039;Signature</a></blockquote></div>
			</div>
			<div class="medium-6 columns facebook-feed-img" data-equalizer-watch>
				
			</div>
		</div>
	</div>
</div>

<div class="large-12 columns box-content">
	<div class="medium-6 columns pad-s-right animation-element bounce-up">
		<a href="<?php echo $this->Html->url(DS.'pages'.DS.'gallery', true); ?>" class="large-7 columns float-right text-right showcase">
			<?php echo $this->Html->image('gallery-image.jpg', array('alt' => "Meg's Signature")); ?>
		</a>
	</div>
	<div class="medium-6 columns animation-element bounce-up">
		<a href="<?php echo $this->Html->url(DS.'pages'.DS.'gallery', true); ?>" class="large-8 columns white-box pull-left pull-s-top float-left" data-equalizer data-equalize-on="small">
			<!-- <h4>Traditional<br /> Bridal AkuaBa Dolls</h4> -->
			<p>
				Check out this gallery of some of our lovely outfits, radiating the beauty of the dolls who chose to wear our signature collection for their special occasions.
			</p>
			<span class="line"></span>
			<span class="read-more">view gallery</span>
		</a>
	</div>
</div>
<?php echo $this->element('footer'); ?>
<script>
$(document).on('scroll resize orientationchange', function() {
    if($(this).scrollTop() >= $('#automate').position().top - 650){
        $('.home-automate .overlay-b').stop(true, true).fadeIn(2000);
		//$('ul.sub-menu').fadeOut(800);
    }else{
    	$('.home-automate .overlay-b').stop(true, true).fadeOut(2000);
		//$('ul.sub-menu').fadeIn(800);
    }
	
    if($(this).scrollTop() >= $('#start').position().top + 250){
        $('.more').stop(true, true).fadeOut(1000);
		$('ul.sub-menu').fadeOut(1000);
    }else{
    	$('ul.sub-menu').fadeIn(1000);
		$('.more').stop(true, true).fadeIn(1000);
    }
});
</script>