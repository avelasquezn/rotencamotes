// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
	
	ie6 = false;
	if( $.browser.msie && parseFloat($.browser.version) < 7 ){
		ie6 = true;
	}
	
  startBanner();

	if (ie6 == true) {
		$('#banner-cont .arrows div').mouseover(function(){
			$(this).addClass('hover');
		}).mouseout(function(){
			$(this).removeClass('hover');
		});		
	}	
	
	$(".nav ul li a").click(function(){
	    $('.nav li').removeClass('current');
	    $(this).parent().addClass("current");
	    $("ul#movies_top").hide("slow");
	    return false
	}) 
	 
});


function startBanner(){
  
  $('#banner-cont .banner').jCarouselLite({
    btnNext: '.next',
    btnPrev: '.prev',
    speed: 900,
    visible:5,
    circular: true
  });
  
}

function updateNav(this_li){
  $("ul#movies_top").show("slow");
  startBanner();  
}