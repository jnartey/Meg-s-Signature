<ul class="accordion">
    <li id="one">
		<?php 
			$galleryCount = AppController::countRowsP("Gallery", 'link_id', 0); 
			$galleryCountC = AppController::countRowsN("Gallery", 'link_id', 0); 
		?>
        <a href="#one" class="active">Photos<span><?php echo '*' ?></span></a>

        <ul class="sub-menu">
			<li><?php echo $this->Html->link(__(("<em>#</em>Collections<span>$galleryCountC</span>"), true), array('controller'=> 'galleries', 'action'=>'index', 'admin' => true), array('escape' => false)); ?></li>
			<li><?php echo $this->Html->link(__(("<em>#</em>Galleries<span>$galleryCount</span>"), true), array('controller'=> 'galleries', 'action'=>'index_galleries', 'admin' => true), array('escape' => false)); ?></li>
        </ul>
	</li>
</ul>