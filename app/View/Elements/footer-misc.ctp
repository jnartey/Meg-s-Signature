<div class="large-12 columns footer r-margin animation-element bounce-up">
	<div class="wrapper-1">
		<div class="medium-12 columns text-center">
			<?php echo $this->Html->image('logo-white.png', array('alt' => "Meg's Signature")); ?>
		</div>
		<!-- <div class="medium-5 columns newsletter">
			<h4>GET UPDATES ON NEW<br /> COLLECTIONS</h4>
			<div id="output-message" class="medium-8 columns"></div>
			<?php
				echo $this->Form->create('Newsletter', array('url' => array('controller' => 'pages', 'action' => 'newsletter'), 'id' => 'newsletter', 'type' => 'file'));
				echo '<div class="small-6 columns">';
				echo $this->Form->input('email', array('label'=>false, 'placeholder'=>'Email address', 'class'=>'required email'));
				echo '</div>';
			?>
			<div class="small-3 columns float-left">
				<input type="submit" class="button" value="submit" />
			</div>
		</div> -->
	</div>
</div>
<div class="large-12 columns disclaimer animation-element bounce-up">
	<div class="wrapper-1 text-center">
		<p>* The designs you see can be mixed and matched to create a style that you’d prefer. Any custom made dress will have additional charges</p>
	</div>
</div>

<div class="large-12 columns copyright animation-element bounce-up">
	<div class="wrapper-1 text-center">
		<p>&copy; 2017 Meg’s Signature All Rights Reserved. Website by FifthlightMedia </p>
	</div>
</div>

<div class="overlay" id="overlay">
	<div class="large-12 columns overlay-content">
		<!-- <div class="medium-6 columns"></div> -->
		<div class="medium-6 columns text-left float-right">
			<a href="<?php echo $this->Html->url(DS, true); ?>"><?php echo $this->Html->image('logo-white.png', array('alt' => "Meg's Signature")); ?></a>
	  		<nav class="overlay-menu">
		  	    <ul>
					<li <?php if($title_for_layout === "Brand"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(('Brand'), true), array('controller'=> 'pages', 'action'=>'brand'), array('escape' => false)); ?>
					</li><br />
					<!-- <li <?php if($title_for_layout === "Showroom"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(('Showroom'), true), array('controller'=> 'pages', 'action'=>'showroom'), array('escape' => false)); ?>
					</li> -->
					<li <?php if($title_for_layout === "Collections"){ echo "class='active'"; } ?>>
  					  	<span class="sub-head">Collections</span>
						<?php 
							foreach($categories as $cat):
								echo $this->Html->link(__(($cat['Category']['name']), true), array('controller'=> 'pages', 'action'=>'collection', $cat['Category']['slug']), array('escape' => false)); 
							endforeach;
						?>
					</li><br />
					<li <?php if($title_for_layout === "Gallery"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(('Gallery'), true), array('controller'=> 'pages', 'action'=>'gallery'), array('escape' => false)); ?>
					</li><br />
					<li <?php if($title_for_layout === "Wheel Decide"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(('Wheel Decide'), true), array('controller'=> 'pages', 'action'=>'wheel'), array('escape' => false)); ?>
					</li><br />
					<li <?php if($title_for_layout === "Contact"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(('Contact'), true), array('controller'=> 'pages', 'action'=>'contact'), array('escape' => false)); ?>
					</li>
		  	    </ul>
	  	  	</nav>
		</div>
	</div>
</div>
<script>
	//<![CDATA[
	//prepare the form when the DOM is ready
	$(document).ready(function() {
	    var options = {
	        target:        '#output-message',   // target element(s) to be updated with server response
	        beforeSubmit:  showRequest1,  // pre-submit callback
	        success:       showResponse1  // post-submit callback

	        // other available options:
	        //url:       url         // override for form's 'action' attribute
	        //type:      type        // 'get' or 'post', override for form's 'method' attribute
	        //dataType:  null        // 'xml', 'script', or 'json' (expected server response type)
	        //clearForm: true        // clear all form fields after successful submit
	        //resetForm: true        // reset the form after successful submit

	        // $.ajax options can be used here too, for example:
	        //timeout:   3000
	    };

	    $("#newsletter").validate();
	    // bind form using 'ajaxForm'
	    $('#newsletter').ajaxForm(options);
	});

	// pre-submit callback
	function showRequest1(formData, jqForm, options) {
	    // formData is an array; here we use $.param to convert it to a string to display it
	    // but the form plugin does this for you automatically when it submits the data
	    var queryString = $.param(formData);

	    // jqForm is a jQuery object encapsulating the form element.  To access the
	    // DOM element for the form do this:
	    // var formElement = jqForm[0];
		
		if(confirm('You are about to send the information below to Meg\'s Signature . Please confirm... \n\n Email: ' + $("#NewsletterEmail").val()
		+ '')){
	        return true;
	    }else {
	        // here we could return false to prevent the form from being submitted;
	        // returning anything other than false will allow the form submit to continue
	        return false;
	    }
	}

	// post-submit callback
	function showResponse1(responseText, statusText, xhr, $form)  {
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
	      $('#output-message').css('display', 'block');
		  //$("#output-message").html('<br />' + responseText);
	      $('#newsletter').get(0).reset();
	}
	//]]>
</script>