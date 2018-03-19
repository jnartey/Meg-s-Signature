<ul class="accordion">
    <li id="one">
		<?php $pageCount = AppController::countRows("News"); ?>
        <a href="#one" <?php if($header == "Outreach & Media"){echo 'class="active"';} ?>>Outreach & Media<span><?php echo $pageCount ?></span></a>

        <ul class="sub-menu">
			<li><?php echo $this->Html->link(__(("<em>01</em>List<span>$pageCount</span>"), true), array('controller'=> 'news', 'action'=>'index', 'admin' => true), array('escape' => false)); ?></li>
			<li><?php echo $this->Html->link(__(("<em>02</em>Add<span>+</span>"), true), array('controller'=> 'news', 'action'=>'add', 'admin' => true), array('escape' => false)); ?></li>
        </ul>
	</li>
</ul>