<?php echo $this->element('head-misc'); ?>
<div class="large-12 columns content">
	<div class="row">
		<div class="large-12 columns filters">
			<?php
				echo '<div class="large-12 columns">';
				echo $this->Session->flash(); 
				echo '</div>';
			?>
			<div class="large-5 columns">
				<?php
					echo '<div class="large-12 columns crumbs"><a href="'.$this->Html->url(DS.'pages'.DS.'collection'.DS.$parent['Category']['slug'], true).'">'.$parent['Category']['name'].'</a> <span class="fa fa-angle-right"></span> <a class="current" href="'.$this->Html->url(DS.'pages'.DS.'collections'.DS.$category['Category']['slug'], true).'">'.$category['Category']['name'].'</a></div>';
				?>
			</div>
			<div class="large-7 columns filter-box">
				<ul id="cbp-tm-menu" class="cbp-tm-menu">
					<li>
						<a href="#">Filter By <span class="selected"><?php echo $category['Category']['name']; ?></span> <span class="fa fa-angle-down"></span></a>
						<ul class="cbp-tm-submenu">
							<?php
								foreach($categories as $link):
									echo '<li><a class="head-category" href="'.$this->Html->url(DS.'pages'.DS.'collection'.DS.$link['Category']['slug'], true).'">'.$link['Category']['name'].'</a></li>';
									$children =  AppController::getChildren('Category', 'parent_id', $link['Category']['id']);
									foreach($children as $child):
										echo '<li><a href="'.$this->Html->url(DS.'pages'.DS.'collections'.DS.$child['Category']['slug'], true).'"> <span class="fa fa-angle-right"></span> '.$child['Category']['name'].'</a></li>';
									endforeach;
								endforeach;
							?>
						</ul>
					</li>
				</ul>
			</div>
			<div class="large-12 columns">
				<?php echo '<p>'.$category['Category']['content'].'</p>'; ?>
			</div>
		</div>
		<?php
			if($products){
		?>
        <ul class="large-12 columns shop-items">
			<?php
				foreach($products as $product):
					if($product['Product']['product_image']){
						if($category['Category']['status'] == 1){
							echo '<li>';
							echo '<a href="#'.$product['Product']['slug'].'" class="item sales">';
							echo '<span class="cart">';
							$product_option = AppController::getChildren('ProductOption', 'product_id', $product['Product']['id']);
							echo '<span class="button op" href="#'.$product['Product']['slug'].'"><span class="fa fa-shopping-bag"></span> Order This Dress</span>';
							echo '</span>';
							echo '<div class="item-image" style="background-image: url('.$this->Html->url(DS.'img'.DS.'products'.DS.'thumb'.DS.'small'.DS.$product['Product']['product_image'], true).')"></div>';
							echo '<h5>'.$product['Product']['name'].'</h5>';
							$product_range = AppController::getMinMax('ProductOption', 'product_id', $product['Product']['id']);
							if($product_range){
								if($product_range[0]['max_price'] == $product_range[0]['min_price']){
									echo '<h6>GHS '.$product['Product']['price'].'</h6>';
								}else{
									echo '<h6><strong>from</strong> GHS '.$product_range[0]['min_price'].' <strong>to</strong> GHS'.$product_range[0]['max_price'].'</h6>';
								}
							}else{
								echo '<h6>GHS '.$product['Product']['price'].'</h6>';
							}
							
							echo '</a>';
							echo '</li>';
						}else{
							echo '<li>';
							echo '<span class="cart"><a class="button op" href="'.$this->Html->url(DS.'pages'.DS.'order'.DS.$category['Category']['slug'].DS.$product['Product']['slug'], true).'"><span class="fa fa-shopping-bag"></span> Order</a></span>';
							echo '<a href="#'.$product['Product']['slug'].'" class="item">';
							echo '<div class="item-image" style="background-image: url('.$this->Html->url(DS.'img'.DS.'products'.DS.'thumb'.DS.'small'.DS.$product['Product']['product_image'], true).')"></div>';
							echo '<h5>'.$product['Product']['name'].'</h5>';
							echo '</a>';
							echo '</li>';
						}
					}
				endforeach;
			?>
        </ul>

        <div class="portfolio-content">
			<?php
				foreach($products as $product):
					echo '<div id="'.$product['Product']['slug'].'" class="large-12 columns">';
					if($category['Category']['status'] == 1){
						echo '<div class="large-12 columns crumbs"><a href="'.$this->Html->url(DS.'pages'.DS.'collection'.DS.$parent['Category']['slug'], true).'">'.$parent['Category']['name'].'</a> <span class="fa fa-angle-right"></span> <a href="'.$this->Html->url(DS.'pages'.DS.'collection'.DS.$category['Category']['slug'], true).'">'.$category['Category']['name'].'</a> <span class="fa fa-angle-right"></span> <a class="current" href="#">'.$product['Product']['name'].'</a></div>';
					}else{
						echo '<div class="large-12 columns crumbs"><a href="'.$this->Html->url(DS.'pages'.DS.'collection'.DS.$parent['Category']['slug'], true).'">'.$parent['Category']['name'].'</a> <span class="fa fa-angle-right"></span> <a href="'.$this->Html->url(DS.'pages'.DS.'collection'.DS.$category['Category']['slug'], true).'">'.$category['Category']['name'].'</a> <span class="fa fa-angle-right"></span> <a class="current" href="#">'.$product['Product']['name'].'</a> <a class="button op" href="'.$this->Html->url(DS.'pages'.DS.'order'.DS.$category['Category']['slug'].DS.$product['Product']['slug'], true).'"><span class="fa fa-shopping-bag"></span> Order</a></div>';
					}
					
						echo '<div class="large-12 columns images-holder no-description">';
						echo '<div class="sp-loading"><img src="'.$this->Html->url(DS.'img'.DS.'sp-loading.gif', true).'" alt=""><br />LOADING IMAGES</div>';
						echo '<div class="sp-wrap">';
						if($product['Product']['product_image']){
							echo '<a href="'.$this->Html->url(DS.'img'.DS.'products'.DS.'thumb'.DS.'large'.DS.$product['Product']['product_image'], true).'">'.$this->Html->image('products'.DS.'thumb'.DS.'large'.DS.$product['Product']['product_image'], array('alt' => "Meg's Signature", 'class'=>'')).'</a>';
						}
						
						$gallery =  AppController::getParent('Gallery', 'link_id', $product['Product']['id']);
						if($gallery){
							$children =  AppController::getChildren('Image', 'gallery_id', $gallery['Gallery']['id']);
							if($children){
								foreach($children as $child):
									if($child['Image']['img_file']){
										echo '<a href="'.$this->Html->url(DS.'img'.DS.'photogallery'.DS.'thumb'.DS.'large'.DS.$child['Image']['img_file'], true).'">'.$this->Html->image('photogallery'.DS.'thumb'.DS.'large'.DS.$child['Image']['img_file'], array('alt' => "Meg's Signature", 'class'=>'')).'</a>';
									}
								endforeach;
							}
						}
						echo '<div class="large-6 columns item-detail float-right">';
						//echo '<h5>'.$product['Product']['name'].'</h5>';
						if(!empty($product['Product']['sizes'])){
							$id_array = explode(",", $product['Product']['sizes']);
						}
						
						$sizes =  AppController::createList('Size', 'id', 'name', $id_array);
						$list_sizes = AppController::getChildren('Size', 'id', $id_array);
						echo '<div class="large-12 columns product-description">';
						echo '<div class="line"></div><br />';
						if($category['Category']['status'] == 1){
							$product_range = AppController::getMinMax('ProductOption', 'product_id', $product['Product']['id']);
							if($product_range){
								if($product_range[0]['max_price'] == $product_range[0]['min_price']){
									echo '<h6>GHS '.$product['Product']['price'].'</h6>';
								}else{
									echo '<h6><strong>from</strong> GHS '.$product_range[0]['min_price'].' <strong>to</strong> GHS '.$product_range[0]['max_price'].'</h6>';
								}
							}else{
								echo '<h6>GHS '.$product['Product']['price'].'</h6>';
							}
							
							if($list_sizes){
								echo '<h5>Available in</h5>';
								foreach($list_sizes as $list_size):
									echo '<h6 class="size">'.$list_size['Size']['name'].'</h6>';
								endforeach;
								
								echo '<p class="size-chart" data-open="sizeChart">Size Chart</p>';
							}
						}
						
						echo '<div class="large-12 columns">';
						echo '<br /><br />';
						echo $product['Product']['description'];
						echo '</div>';
						
						if($category['Category']['status'] == 1){
							echo '<div class="large-12 columns mini-form">';
							echo $this->Form->create('Product', array('url' => array('controller' => 'shop', 'action' => 'add')));
							echo '<div class="large-4 columns"><br />';
							echo $this->Form->input('id', array('type' => 'hidden', 'value' => $product['Product']['id']));
							echo $this->Form->input('category', array('type' => 'hidden', 'value' => $category['Category']['slug']));
							echo $this->Form->input('size', array(
								'type'    => 'select',
								'label'	  => false,
								'options' => $sizes,
								'id'=>'list-2',
								'empty'   => 'Select size'
							));
							echo '</div>';
						
							$option_prices = AppController::createListP('ProductOption', 'id', 'name', 'product_id', $product['Product']['id']);
							if($option_prices){
								echo '<div class="large-5 columns c-pad"><br />';
								echo $this->Form->input('option_price', array(
									'type'    => 'select',
									'label'	  => false,
									'options' => $option_prices,
									'empty'   => 'Select Option'
								));
								echo '</div>';
							}
						
							echo '<div class="large-9 columns c-pad-r">';
							echo $this->Form->input('additional_info', array('type' => 'text', 'placeholder' => 'Additional Information', 'label'=>false));
							echo '</div>';
						
							echo '<div class="large-12 columns">';
							echo $this->Form->button('<span class="fa fa-shopping-bag"></span> &nbsp; Add to Cart', array('class' => 'button op primary addtocart r-margin', 'id' => 'addtocart', 'id' => $product['Product']['id']));
							echo '</div>';
							echo $this->Form->end();
							echo '</div>';
						}
						
						echo '</div></div>';
						echo '</div></div>';
						
						//}
					echo '</div>';
				endforeach;
			?>  
		</div> 
		<div class="large-12 columns text-center">
			<div class="pagination right">
			<?php
			 	echo '<span class="unavailable"></span>'.$this->Paginator->prev(__('Prev', true), array('class'=>''), null, array('class'=>'unavailable'));
				echo $this->Paginator->numbers(array('class'=>''));
				echo $this->Paginator->next(__('Next', true), array('class'=>''), null, array('class'=>'unavailable')).'<span class="unavailable"></span>';
			?>
			</div>
		</div>
		<?php }else{
			echo '<div class="large-12 columns filters"><p>No collections under '.$category['Category']['name'].' category</p></div>';
		} ?>    
	</div>
</div>
<div class="reveal text-center" id="sizeChart" data-reveal>
  <h6>MEG’ SIGNATURE STANDARD SIZING MEASUREMENTS</h6>
  <table>
    <thead>
      <tr>
        <th width="50">Size</th>
        <th width="50">Bust</th>
        <th width="50">Waist</th>
        <th width="50">Hips</th>
		<th width="150">Dress length (short/long)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>8</td>
        <td>32</td>
        <td>26</td>
        <td>38</td>
		<td>39/62</td>
      </tr>
      <tr>
        <td>10</td>
        <td>34</td>
        <td>28</td>
        <td>40</td>
		<td>39/62</td>
      </tr>
      <tr>
        <td>12</td>
        <td>36</td>
        <td>30</td>
        <td>42</td>
		<td>40/62</td>
      </tr>
      <tr>
        <td>14</td>
        <td>38</td>
        <td>32</td>
        <td>44</td>
		<td>40/62</td>
      </tr>
      <tr>
        <td>16</td>
        <td>42</td>
        <td>34</td>
        <td>46</td>
		<td>42/62</td>
      </tr>
    </tbody>
  </table>
  <button class="close-button" data-close aria-label="Close modal" type="button">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<?php echo $this->element('footer-misc'); ?>