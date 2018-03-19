<!-- File: /app/View/Roles/admin_add.ctp -->
<script>
	$(function() {
		//datepicker
		$('.event-date').datepick({ 
		    yearRange: '2000:2050',
			dateFormat: 'yyyy-mm-dd',
			showTrigger: '#calImg'});
	});
</script>
	<div class="row">
		<div class="large-12 columns">
			<div class="module yellow">
				<h2><?php echo $current_page.' | '. substr($news['News']['title'], 0, strrpos(substr($news['News']['title'], 0, 30), ' '))."..."; ?> <a href="#"><?php echo $header; ?></a></h2>
				</ul>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="large-2 columns">
			<?php echo $this->element('admin'.DS.'news_menu'); ?>
		</div>
		<div class="large-10 columns content">
			<div class="main-content">
			<?php echo $this->Session->flash(); ?>
			<div class="large-12 columns">
				<?php
					if($news_parent['News']['category']):
						echo $this->Html->link(__(("cancel"), true), array('controller'=> 'news', 'action'=>'view', $news_parent['News']['category'], 'admin' => true), array('escape' => false, 'class'=>'button small primary right')); 
					else:
						echo $this->Html->link(__(("cancel"), true), array('controller'=> 'news', 'action'=>'index', 'admin' => true), array('escape' => false, 'class'=>'button small primary right'));
					endif;
				?><br /><br />
			<?php
				echo $this->Form->create('News', array('type' => 'file'));
								
				if(!$news_parent['News']['category']){
					echo "<p><label>Documents</label>";
					echo $this->Form->checkbox('download_only', array('value' => 1));
					echo "</p>";
					echo "<p><label>For Media</label>";
					echo $this->Form->checkbox('media', array('value' => 1));
					echo "</p>";
					echo $this->Form->input('title', array('label'=>false, 'placeholder'=>'Title'));
					$options = array(
			        	'1' => 'News',
			        	'2' => 'Newsletter',
						'3' => 'Press Release',
						'4' => 'Press kits',
						'5' => 'Stakeholder Consultations',
						'6' => 'Workshops',
						'7' => 'Audio'
			        );

			        echo $this->Form->input('type', array(
			        	'type'    => 'select',
			        	'options' => $options,
			        	'empty'   => false
			        ));
					echo '<br />';
				}elseif($news_parent['News']['type'] == 7){
					//echo "<p><label>Audio only</label>";
					//echo $this->Form->checkbox('type', array('value' => 7));
					//echo "</p>";
					echo $this->Form->input('title', array('placeholder'=>'Title'));
					echo $this->Form->input('mp3', array('type'=>'file', 'label'=>'mp3 audio'));
					//echo $this->Form->hidden('category', array('value' => $news_parent['News']['id']));
					//echo $this->Form->hidden('type', array('value' => $news_parent['News']['type']));
				}else{
					echo "<p><label>Publish</label>";
					echo $this->Form->checkbox('publish', array('value' => 1,'checked'=>true));
					echo "</p>";
					//echo "<p><label>Document</label>";
					//echo $this->Form->checkbox('download_only', array('value' => 1));
					//echo "</p>";
					echo $this->Form->input('news_date', array('type' => 'text', 'class'=>'event-date', 'label'=>false, 'placeholder'=>'Date'));
					if($news_parent['News']['download_only']){
						echo $this->Form->input('title', array('label'=>false, 'placeholder'=>'Title'));
						echo $this->Form->input('file', array('type'=>'file', 'label'=>'PDF'));
					}else{
						echo $this->Form->input('title', array('label'=>false, 'placeholder'=>'Title'));
						echo $this->Form->input('summary', array('label'=>false, 'placeholder'=>'Summary'));
						echo '<br />';
						echo $this->Form->textarea('story', array('class'=>'ckeditor'));
						echo '<br />';
						echo $this->Form->input('image', array('type'=>'file', 'label'=>'Image'));
						if($news_parent['News']['type'] == 1 || $news_parent['News']['type'] == 3 || $news_parent['News']['type'] == 5 || $news_parent['News']['type'] == 6){
							echo $this->Form->input('image_caption', array('placeholder'=>'Image Caption', 'label'=>'Image Caption'));
						} 
						echo $this->Form->input('file_name', array('placeholder'=>'PDF Name', 'label'=>'PDF Name'));
						echo $this->Form->input('file', array('type'=>'file', 'label'=>'PDF'));
						echo $this->Form->input('file_name_1', array('placeholder'=>'PDF Name', 'label'=>'PDF Name'));
						echo $this->Form->input('file_1', array('type'=>'file', 'label'=>'PDF'));
						echo $this->Form->input('file_name_2', array('placeholder'=>'PDF Name', 'label'=>'PDF Name'));
						echo $this->Form->input('file_2', array('type'=>'file', 'label'=>'PDF'));
						echo $this->Form->input('file_name_3', array('placeholder'=>'PDF Name', 'label'=>'PDF Name'));
						echo $this->Form->input('file_3', array('type'=>'file', 'label'=>'PDF'));
						echo $this->Form->input('file_name_4', array('placeholder'=>'PDF Name', 'label'=>'PDF Name'));
						echo $this->Form->input('file_4', array('type'=>'file', 'label'=>'PDF'));
					}
				}
				
				echo "</p>";
					
				echo $this->Form->end('Update'); 
			?>
			</div>
			</div>
		</div>
	</div>