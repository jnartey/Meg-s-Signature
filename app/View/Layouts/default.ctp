<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
<?php 
	$isiPad = (bool) strpos($_SERVER['HTTP_USER_AGENT'],'iPad');
	$isiPhone = (bool) strpos($_SERVER['HTTP_USER_AGENT'],'iPhone');

if($isiPad){ ?>
	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width, initial-scale=0.8, minimum-scale=0.8, maximum-scale=0.8, user-scalable=no" />
<?php }else { ?>
	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="HandheldFriendly" content="True" />
<?php } ?>
	<meta name="description" content="Meg’s Signature is a chic clothing line based in Ghana, we make exquisite dresses for women. Our unique clothes will flatter and accentuate your God given figure."/>
	<meta name="author" content="Fifthlight Media"/>
	<meta name="keywords" content=""/>
	
	
	<?php echo $this->Html->charset(); ?>
	<title><?php echo "Meg's Signature"; ?></title>
	<?php
		echo $this->Html->meta('icon');
		echo $this->Html->css('foundation.css');
		echo $this->Html->css('admin'.DS.'style.css');
		echo $this->Html->css('font-awesome.min.css');
		echo $this->Html->css('portfolio.jquery.css');
		echo $this->Html->css('app.css');
	?>
	
	<!-- LayerSlider stylesheet -->
	<link rel="stylesheet" href="<?php echo $this->Html->url(DS.'layerslider'.DS.'css'.DS.'layerslider.css', true); ?>" type="text/css">
	<link rel="stylesheet" type="text/css" href="<?php echo $this->Html->url(DS.'fancybox'.DS.'source'.DS.'jquery.fancybox.css?v=2.1.6', true); ?>" media="screen" />
	<link rel="stylesheet" type="text/css" href="<?php echo $this->Html->url(DS.'fancybox'.DS.'source'.DS.'helpers'.DS.'jquery.fancybox-thumbs.css?v=1.0.7', true); ?>" />
	<?php
		echo $this->Html->script('vendor'.DS.'modernizr.custom');
		echo $this->Html->script('vendor'.DS.'jquery');
		echo $this->Html->script('vendor'.DS.'jquery.elevatezoom');
		
		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
	<!-- special IE-only canvas fix -->
	<!--[if IE]><script type="text/javascript" src="<?php echo $this->Html->url(DS.'js'.DS.'vendor'.DS.'excanvas.js', true); ?>"></script><![endif]-->
	</script>
</head>
<body>
	<?php 
		echo $this->fetch('content'); 
		echo $this->element('admin'.DS.'menu');
		
		echo $this->Html->script('vendor'.DS.'what-input');
		echo $this->Html->script('vendor'.DS.'portfolio.jquery');
		echo $this->Html->script('vendor'.DS.'cbpTooltipMenu.min');
		echo $this->Html->script('vendor'.DS.'jquery.form');
		echo $this->Html->script('vendor'.DS.'jquery.validate');
		echo $this->Html->script('vendor'.DS.'smoothproducts');
		echo $this->Html->script('foundation');
	?>
  	<!-- External libraries: GreenSock -->
  	<script src="<?php echo $this->Html->url(DS.'layerslider'.DS.'js'.DS.'greensock.js', true); ?>" type="text/javascript"></script>
  	<!-- LayerSlider script files -->
  	<script src="<?php echo $this->Html->url(DS.'layerslider'.DS.'js'.DS.'layerslider.transitions.js', true); ?>" type="text/javascript"></script>
  	<script src="<?php echo $this->Html->url(DS.'layerslider'.DS.'js'.DS.'layerslider.kreaturamedia.jquery.js', true); ?>" type="text/javascript"></script>
	<script src="<?php echo $this->Html->url(DS.'fancybox'.DS.'source'.DS.'jquery.fancybox.js?v=2.1.6', true); ?>"></script>
	
	<!-- Add Thumbnail helper -->
	<script type="text/javascript" src="<?php echo $this->Html->url(DS.'fancybox'.DS.'source'.DS.'helpers'.DS.'jquery.fancybox-thumbs.js?v=1.0.7', true); ?>"></script>
	<?php
		echo $this->Html->script('app');
		echo $this->Html->script('admin'.DS.'fancybox');
	?>
	<script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-10133284-56', 'auto');
	  ga('send', 'pageview');

	</script>
</body>
</html>
