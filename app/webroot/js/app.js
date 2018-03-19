$(document).ready(function() {
	jQuery("#layerslider").layerSlider({
		pauseOnHover: false,
		skinsPath: 'layerslider/skins/',
		skin: 'noskin',
		showCircleTimer: false,
		cbInit: function(element) {
			
        }
	});
	
	jQuery("#layerslider-1").layerSlider({
		pauseOnHover: false,
		skinsPath: 'layerslider/skins/',
		skin: 'noskin',
		showCircleTimer: false,
		cbInit: function(element) {
			
        }
	});
	
	$('.photo-gallery').fancybox({
		padding : 0,
		helpers : {
			thumbs : {
				width  : 200,
				height : 150
			},
			overlay: {
			    locked: false
			}
		}
	});
});

/* wait for images to load */
$(window).load(function() {
	$('.sp-wrap').smoothproducts();
});

$(document).foundation();

$('#toggle').click(function() {
   $(this).toggleClass('active');
   $('#overlay').toggleClass('open');
   $('.head, .head-misc').toggleClass('head-fixed');
   $('.logo, .cart').toggleClass('head-fixed-hide');
});

$(document).ready(function() {
    $('.shop-items').portfolio({
        cols: 4,
        transition: 'slideDown'
    });
});

$(".more").on('click', function() {
	$('html, body').animate({
	        scrollTop: $("#automate").offset().top
	    }, 500);
});

var $animation_elements = $('.animation-element');
var $window = $(window);

function check_if_in_view() {
  var window_height = $window.height();
  var window_top_position = $window.scrollTop();
  var window_bottom_position = (window_top_position + window_height);

  $.each($animation_elements, function() {
    var $element = $(this);
    var element_height = $element.outerHeight();
    var element_top_position = $element.offset().top;
    var element_bottom_position = (element_top_position + element_height);

    //check to see if this current container is within viewport
    if ((element_bottom_position >= window_top_position) &&
      (element_top_position <= window_bottom_position)) {
      $element.addClass('in-view');
    } else {
      $element.removeClass('in-view');
    }
  });
}

$window.on('scroll resize', check_if_in_view);
$window.trigger('scroll');

var menu = new cbpTooltipMenu(document.getElementById( 'cbp-tm-menu' ));


