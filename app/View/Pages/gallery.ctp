<?php echo $this->element('head-misc'); ?>
<div class="large-12 columns content">
	<div class="row">
		<?php
			if($gallery){
				echo '<div class="large-12 columns crumbs"><a href="'.$this->Html->url(DS.'pages'.DS.'gallery', true).'">Gallery</a> <span class="fa fa-angle-right"></span> <a class="current" href="'.$this->Html->url(DS.'pages'.DS.'gallery'.DS.$gallery['Gallery']['slug'], true).'">'.$gallery['Gallery']['name'].'</a></div>';
				echo '<div class="large-12 columns sepia-h">';
				foreach($images as $preview_image):
					echo '<a href='.$this->Html->url(DS.'img'.DS.'photogallery'.DS.'thumb'.DS.'xlarge'.DS.$preview_image['Image']['img_file'], true).' class="large-2 medium-4 small-6 columns photo-gallery float-left" rel="'.$gallery['Gallery']['slug'].'">';
					echo $this->html->image('photogallery'.DS.'thumb'.DS.'medium'.DS.$preview_image['Image']['img_file'], array('alt' => 'Meg\'s Signature', 'class'=>''));
					echo '</a>';
				endforeach;
				echo '</div>';
			}else{
				if($galleries){
					foreach($galleries as $data):
						$preview_images = AppController::getChildren('Image', 'gallery_id', $data['Gallery']['id'], 'id', 12);
						if($preview_images){
							echo '<br /><br />';
							echo '<div class="large-12 columns gallery-content">';
							echo '<div class="large-12 columns wrap"><h4>'.$data['Gallery']['name'].'</h4></div>';
							echo '<div class="large-12 columns sepia-h">';
							foreach($preview_images as $preview_image):
								echo '<a href='.$this->Html->url(DS.'img'.DS.'photogallery'.DS.'thumb'.DS.'xlarge'.DS.$preview_image['Image']['img_file'], true).' class="large-2 medium-4 small-6 columns photo-gallery" rel="'.$data['Gallery']['slug'].'">';
								echo $this->html->image('photogallery'.DS.'thumb'.DS.'medium'.DS.$preview_image['Image']['img_file'], array('alt' => 'Meg\'s Signature', 'class'=>''));
								echo '</a>';
							endforeach;
							echo '</div>';
							echo '<div class="large-12 columns wrap text-right">';
							echo '<a href='.$this->Html->url(DS.'pages'.DS.'gallery'.DS.$data['Gallery']['slug'], true).' class="read-more">more...</a>';
							echo '</div>';
							echo'</div>';
						}
					endforeach;
				}
			}
		?>
		<div class="large-12 columns text-center">
			<div class="pagination right">
			<?php
			 	echo '<span class="unavailable"></span>'.$this->Paginator->prev(__('Prev', true), array('class'=>''), null, array('class'=>'unavailable'));
				echo $this->Paginator->numbers(array('class'=>''));
				echo $this->Paginator->next(__('Next', true), array('class'=>''), null, array('class'=>'unavailable')).'<span class="unavailable"></span>';
			?>
			</div>
		</div>
	</div>
</div>
<?php echo $this->element('footer-misc'); ?>