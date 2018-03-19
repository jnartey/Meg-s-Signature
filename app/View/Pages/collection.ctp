<?php echo $this->element('head-misc'); ?>
<div class="large-12 columns content">
	<div class="row">
		<?php
			foreach($collection as $data):
				if($data['Category']['cat_image']){
					echo '<a href="'.$this->Html->url(DS.'pages'.DS.'collections'.DS.$data['Category']['slug'], true).'" class="large-12 columns collection-box animation-element bounce-up" style="background-image:url('.$this->Html->url(DS.'img'.DS.'categories'.DS.'thumb'.DS.'large'.DS.$data['Category']['cat_image'], true).');">';
				}else{
					echo '<a href="'.$this->Html->url(DS.'pages'.DS.'collections'.DS.$data['Category']['slug'], true).'" class="large-12 columns collection-box animation-element bounce-up">';
				}
				
				echo '<div class="overlay-b"></div>';
				echo '<div class="large-12 columns bag">';
				echo '<h3>'.$data['Category']['name'].'<br />'.$category['Category']['name'].'</h3>';
				echo '<span class="line"></span><br />';
				echo $data['Category']['description'];
				echo '</div></a>';
				
			endforeach;
		?>
	</div>
</div>
<?php echo $this->element('footer-misc'); ?>