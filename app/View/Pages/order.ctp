<?php echo $this->element('head-misc'); ?>
<div class="large-12 columns content">
	<div class="row">
		<div class="large-12 columns">
			<div class="large-5 columns">
				<?php
					echo '<div class="large-12 columns crumbs"><a href="'.$this->Html->url(DS.'pages'.DS.'collection'.DS.$parent['Category']['slug'], true).'">'.$parent['Category']['name'].'</a> <span class="fa fa-angle-right"></span> <a href="'.$this->Html->url(DS.'pages'.DS.'collections'.DS.$category['Category']['slug'], true).'">'.$category['Category']['name'].'</a> <span class="fa fa-angle-right"></span> <a href="#">Order</a> <span class="fa fa-angle-right"></span> <a class="current" href="#">'.$product['Product']['name'].'</a></div>';
				?>
			</div>
			<div class="large-12 columns">
				<?php echo '<p>'.$category['Category']['content'].'</p>'; ?>
			</div>
		</div>
		<?php
			if($product){
		?>
        
        <div class="large-12 columns">
			<?php
				echo '<div class="large-5 columns order-image">';
					$gallery =  AppController::getParent('Gallery', 'link_id', $product['Product']['id']);
					if($gallery){
						$children =  AppController::getChildren('Image', 'gallery_id', $gallery['Gallery']['id'], null, 1);
						if($children){
							foreach($children as $child):
									echo '<a href="'.$this->Html->url(DS.'img'.DS.'photogallery'.DS.'thumb'.DS.'large'.DS.$child['Image']['img_file'], true).'">'.$this->Html->image('photogallery'.DS.'thumb'.DS.'large'.DS.$child['Image']['img_file'], array('alt' => "Meg's Signature", 'class'=>'')).'</a>';
							endforeach;
						}
					}
					echo '</div>';
					echo '<div class="large-7 columns order-form">';
					echo '<div id="output-message-1" class="medium-12 columns"></div>';
					echo '<div class="medium-12 columns">';
					echo '<h4>Measurement Sheet</h4>';
					echo '<div class="line"></div><br /></div>';
					echo $this->Form->create('Order', array('url' => array('controller' => 'pages', 'action' => 'process_order'), 'id' => 'order', 'type' => 'file')); 
					echo '<div class="medium-12 columns order-field">';
					echo $this->Form->input('client', array('label'=>false, 'placeholder'=>'Client', 'class'=>'required'));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('name', array('label'=>false, 'placeholder'=>'Name', 'class'=>'required'));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('phone', array('label'=>false, 'placeholder'=>'Phone Number', 'class'=>'required'));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('email', array('label'=>false, 'placeholder'=>'Email', 'class'=>'required email'));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('measurement_by', array('label'=>false, 'placeholder'=>'Measurement By', 'class'=>'required'));
					echo '</div>';
					echo '<div class="large-12 columns"><h6>Front Measurement</h6><div class="line"></div><br /></div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('upper_bust', array('label'=>false, 'placeholder'=>'Upper Bust', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('bust', array('label'=>false, 'placeholder'=>'Bust', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('empire', array('label'=>false, 'placeholder'=>'Empire', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('waist', array('label'=>false, 'placeholder'=>'Waist', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('high_hip', array('label'=>false, 'placeholder'=>'High Hip', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('nipple_to_nipple', array('label'=>false, 'placeholder'=>'Nipple To Nipple', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('shoulder_to_empire', array('label'=>false, 'placeholder'=>'Shoulder To Empire', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('shoulder_to_apex', array('label'=>false, 'placeholder'=>'Shoulder To Apex', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('shoulder_to_waist', array('label'=>false, 'placeholder'=>'Shoulder To Waist', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('shoulder_to_knee', array('label'=>false, 'placeholder'=>'Shoulder To Knee', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('shoulder_to_calf', array('label'=>false, 'placeholder'=>'Shoulder To Calf', 'class'=>''));
					echo '</div>';
					echo '<div class="large-12 columns"><h6>Back Measurement</h6><div class="line"></div><br /></div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('across_back', array('label'=>false, 'placeholder'=>'Across Back', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('across_shoulder', array('label'=>false, 'placeholder'=>'Across Shoulder', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('shoulder_to_waist_at_back', array('label'=>false, 'placeholder'=>'Shoulder To Waist At Back', 'class'=>''));
					echo '</div>';
					echo '<div class="large-12 columns"><h6>Arm/Sleeve Measurement</h6><div class="line"></div><br /></div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('around_arm', array('label'=>false, 'placeholder'=>'Around Arm', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('shoulder_to_elbow', array('label'=>false, 'placeholder'=>'Shoulder To Elbow', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('shoulder_to_wrist', array('label'=>false, 'placeholder'=>'Shoulder To Wrist', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('sleeve_length', array('label'=>false, 'placeholder'=>'Sleeve Length', 'class'=>''));
					echo '</div>';
					echo '<div class="large-12 columns"><h6>Pants Measurement</h6><div class="line"></div><br /></div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('crotch_length', array('label'=>false, 'placeholder'=>'Crotch Length', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('waist_for_pants', array('label'=>false, 'placeholder'=>'Waist For Pants ', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('waist_to_calf_or_feet', array('label'=>false, 'placeholder'=>'Waist To Calf OR Feet', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('around_thigh', array('label'=>false, 'placeholder'=>'Around Thigh', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-l">';
					echo $this->Form->input('around_knee', array('label'=>false, 'placeholder'=>'Around Knee', 'class'=>''));
					echo '</div>';
					echo '<div class="medium-6 columns order-field-r">';
					echo $this->Form->input('around_calf', array('label'=>false, 'placeholder'=>'Around Calf', 'class'=>''));
					echo $this->Form->hidden('product_name', array('value'=>$product['Product']['name']));
					$gallery =  AppController::getParent('Gallery', 'link_id', $product['Product']['id']);
					if($gallery){
						$children =  AppController::getChildren('Image', 'gallery_id', $gallery['Gallery']['id'], null, 1);
						if($children){
							foreach($children as $child):
								echo $this->Form->hidden('product_image', array('value'=>$child['Image']['img_file']));
							endforeach;
						}
					}
					echo '</div>';
					echo '<div class="large-12 columns text-right">';
					echo '<br /><input type="submit" id="" class="button op" value="Order" />';
					echo '</div>';
					echo '</div>';
			?>  
		</div> 
		<?php }else{
			echo '<div class="large-12 columns filters"><p>Invalid product</p></div>';
		} ?>    
	</div>
</div>
<script>
	//<![CDATA[
	//prepare the form when the DOM is ready
	$(document).ready(function() {
	    var options = {
	        target:        '#output-message-1',   // target element(s) to be updated with server response
	        beforeSubmit:  showRequest,  // pre-submit callback
	        success:       showResponse  // post-submit callback

	        // other available options:
	        //url:       url         // override for form's 'action' attribute
	        //type:      type        // 'get' or 'post', override for form's 'method' attribute
	        //dataType:  null        // 'xml', 'script', or 'json' (expected server response type)
	        //clearForm: true        // clear all form fields after successful submit
	        //resetForm: true        // reset the form after successful submit

	        // $.ajax options can be used here too, for example:
	        //timeout:   3000
	    };

	    $("#order").validate();
	    // bind form using 'ajaxForm'
	    $('#order').ajaxForm(options);
	});

	// pre-submit callback
	function showRequest(formData, jqForm, options) {
	    // formData is an array; here we use $.param to convert it to a string to display it
	    // but the form plugin does this for you automatically when it submits the data
	    var queryString = $.param(formData);

	    // jqForm is a jQuery object encapsulating the form element.  To access the
	    // DOM element for the form do this:
	    // var formElement = jqForm[0];
		
		if(confirm('You are about to send the information below to Meg\'s Signature . Please confirm...')){
	        return true;
	    }else {
	        // here we could return false to prevent the form from being submitted;
	        // returning anything other than false will allow the form submit to continue
	        return false;
	    }
	}

	// post-submit callback
	function showResponse(responseText, statusText, xhr, $form)  {
	    // for normal html responses, the first argument to the success callback
	    // is the XMLHttpRequest object's responseText property

	    // if the ajaxForm method was passed an Options Object with the dataType
	    // property set to 'xml' then the first argument to the success callback
	    // is the XMLHttpRequest object's responseXML property

	    // if the ajaxForm method was passed an Options Object with the dataType
	    // property set to 'json' then the first argument to the success callback
	    // is the json data object returned by the server

	    //alert('status: ' + statusText + '\n\nresponseText: \n' + responseText +
	      //  '\n\nThe output div should have already been updated with the responseText.');
	      $('#output-message-1').css('display', 'block');
		  //$("#output-message").html('<br />' + responseText);
	      $('#order').get(0).reset();
	}
	//]]>
</script>
<?php echo $this->element('footer-misc'); ?>