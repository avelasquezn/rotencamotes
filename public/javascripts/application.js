// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
	
	ie6 = false;
	if( $.browser.msie && parseFloat($.browser.version) < 7 ){
		ie6 = true;
	}
	
	$('#banner-cont .banner').jCarouselLite({
		btnNext: '.next',
		btnPrev: '.prev',
		speed: 800,
		visible:5,
		circular: true,
		auto: 5000
	});

	if (ie6 == true) {
		$('#banner-cont .arrows div').mouseover(function(){
			$(this).addClass('hover');
		}).mouseout(function(){
			$(this).removeClass('hover');
		});		
	}	
	 
});