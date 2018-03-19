<div class="row">
	<div class="large-12 columns">
		<div class="module yellow">
			<h2>
				<?php echo $current_page; ?> <a href="#"><?php echo strip_tags($header); ?></a>
			</h2>
		</div>
	</div>
</div>
<div class="row">
	<div class="large-2 columns">
		<?php echo $this->element('admin'.DS.'product_menu'); ?>
	</div>
	<div class="large-10 columns content">
		<?php 
			echo $this->Session->flash(); 
			echo '<div class="large-12 columns">';
				if($product_parent['PageContent']['id']):
					echo $this->Html->link(__(("cancel"), true), array('controller'=> 'products', 'action'=>'view', $product_parent['Product']['id'], 'admin' => true), array('escape' => false, 'class'=>'button small primary right')); 
				else:
					echo $this->Html->link(__(("cancel"), true), array('controller'=> 'products', 'action'=>'index', 'admin' => true), array('escape' => false, 'class'=>'button small primary right'));
				endif;
			echo '</div>';
			echo '<div class="large-12 columns">';
			echo $this->Form->create('Product', array('type' => 'file'));
			echo '<div class="large-12 columns">';
			// $options_s = array(
// 				'Sold Out' => 'Sold Out',
// 				'Out of Stock' => 'Out of Stock',
// 				'Not Available' => 'Not Available',
// 			);
//
// 			echo $this->Form->input('product_status', array(
// 				'type'    => 'select',
// 				'options' => $options_s,
// 				'empty'   => true
// 			));
// 			echo '<br />';
			echo $this->Form->input('name', array('placeholder'=>'Name'));
			echo $this->Form->input('category_id', array('class' => 'form-control'));
			echo '<br />';
			// $options = array(
// 	        	'&#36;' => 'USD',
// 	        	'&#163;' => 'GBP',
// 				'&#8373;' => 'GHS',
// 				'&#128;' => 'EUR'
// 	        );
//
// 	        echo $this->Form->input('currency', array(
// 	        	'type'    => 'select',
// 	        	'options' => $options,
// 	        	'empty'   => false
// 	        ));
// 			echo '<br />';
 			echo $this->Form->input('price', array('placeholder'=>'Price'));
// 			echo $this->Form->input('product_items', array('placeholder'=>'Product Items'));
			echo $this->Form->textarea('description', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Description'));
			echo '<br />';
			//echo $this->Form->hidden('category', array('value' => $product_parent['PageContent']['id']));
			echo $this->Form->input('product_image', array('type'=>'file', 'label'=>'Product Image'));
			echo '</div>';
			echo '<div class="large-6 columns"><div class="large-11 columns">';
			
			echo $this->Form->input('all_sizes', array(
				'type'    => 'select',
				'options' => $all_sizes,
				'multiple'=> 'multiple',
				'size' => 10,
				'id'=>'list-1',
				'empty'   => false
			));
			echo '<input id="button1" type="button" value="Add &raquo;" />';
			echo '</div></div>';
			echo '<div class="large-6 columns"><div class="large-11 columns">';
			echo $this->Form->input('sizes', array(
				'type'    => 'select',
				'multiple'=> 'multiple',
				'id'=>'list-2',
				'size' => 10,
				'label'=>'Selected links',
				'empty'   => false
			));
			echo '<input id="button2" type="button" value="Remove" />';
			echo '<br /><br /></div></div>';
			//echo $this->Form->hidden('cid', array('value'=>$rev));
			echo $this->Form->end('Add'); 
		?>
		</div>
	</div>
</div>
<script>
	
	function sortSelectOptions(selector, skip_first) {
	    var options = (skip_first) ? $(selector + ' option:not(:first)') : $(selector + ' option');
	    var arr = options.map(function(_, o) { return { t: $(o).text(), v: o.value, s: $(o).prop('selected') }; }).get();
	    arr.sort(function(o1, o2) {
	      var t1 = o1.t.toLowerCase(), t2 = o2.t.toLowerCase();
	      return t1 > t2 ? 1 : t1 < t2 ? -1 : 0;
	    }); 
	    options.each(function(i, o) {
	        o.value = arr[i].v;
	        $(o).text(arr[i].t);
	        if (arr[i].s) {
	            $(o).attr('selected', 'selected').prop('selected', true);
	        } else {
	            $(o).removeAttr('selected');
	            $(o).prop('selected', false);
	        }
	    }); 
	}
	
	
	$(function(){
	    $("#button1").click(function(){
	        $("#list-1 > option:selected").each(function(){
	            $(this).remove().appendTo("#list-2");
	        });
			
			sortSelectOptions('#list-2', true);
	    });		

	    $("#button2").click(function(){
	        $("#list-2 > option:selected").each(function(){
	            $(this).remove().appendTo("#list-1");
	        });
			
			sortSelectOptions('#list-1', true);
	    });
		
	});
</script>