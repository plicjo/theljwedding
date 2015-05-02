

// If JavaScript is enabled remove 'no-js' class and give 'js' class
jQuery('html').removeClass('no-js').addClass('js');

// Add .osx class to html if on Os/x
if (navigator.appVersion.indexOf("Mac") !== -1) {
	jQuery('html').addClass('osx');
}
// When DOM is fully loaded
jQuery(document).ready(function($) {
  "use strict";  


$('.animated').appear(function() {
  $(this).each(function(){   
    $(this).css('visibility','visible');
    $(this).addClass($(this).data('type'));
  });
},{accY: -150});


/* 	PRETTYPHOTO */
$('a[data-rel]').each(function() {
			$(this).attr('rel', $(this).data('rel'));
		});
$("a[rel^='prettyPhoto']").prettyPhoto({animation_speed: 'normal', slideshow: 5000, autoplay_slideshow: false, social_tools: false, deeplinking:false}); 




/*  STICKY 	*/

$('.navbar').sticky({topSpacing:15});


/* nav */ 
  
$('.navbar, .select-menu').onePageNav({
  currentClass: 'active',
	changeHash: false,
	scrollSpeed: 750,
	scrollOffset: 60,
	scrollThreshold: 0.1,
	filter: '',
	easing: 'swing',
});

/* 	MOBILE MENU	*/
	$("<option />", {
	   "selected": "selected",
	   "value"   : "",
	   "text"    : "Navigation"
	}).appendTo(".select-menu");


	$(".nav a").each(function() {
	 var select = $(this);
	 $("<option />", {
	     "value"   : select.attr("href"),
	     "text"    : select.attr("title")
	 }).appendTo(".select-menu");
	});
  
  
 /* owl carousel - for blog */
 
  $(".carousel-top-navigation").owlCarousel({
      slideSpeed : 600,
      paginationSpeed: 2000, 
      autoPlay: false,
      items : 4,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [980,2],
      itemsTablet: [768,2],
      itemsMobile : [568,1],
      navigation:true,
      pagination:false,
      navigationText : false
  }); 
  
 var detectmob = false;	
   if(navigator.userAgent.match(/Android/i)
    || navigator.userAgent.match(/webOS/i)
    || navigator.userAgent.match(/iPhone/i)
    || navigator.userAgent.match(/iPad/i)
    || navigator.userAgent.match(/iPod/i)
    || navigator.userAgent.match(/BlackBerry/i)
    || navigator.userAgent.match(/Windows Phone/i)) {							
      detectmob = true;
	}


	if (detectmob === true) {
    $( '.home-parallax' ).each(function(){
				$(this).addClass('parallax-mobile');
		});
  }
  else {
  
  	//.parallax(xPosition, speedFactor, outerHeight) options:
	//xPosition - Horizontal position of the element
	//inertia - speed to move relative to vertical scroll. Example: 0.1 is one tenth the speed of scrolling, 2 is twice the speed of scrolling
	//outerHeight (true/false) - Whether or not jQuery should use it's outerHeight option to determine when a section is in the viewport

      $( '.home-parallax' ).parallax("10%", 0.1,true);
    }  


 jQuery(".player").mb_YTPlayer();

/* SCROLL 	*/

  
$(".select-menu").change(function() {
	
		$('html, body').animate({
	        scrollTop: $($(this).find("option:selected").val()).offset().top
	    }, 750, function(){
	    	window.location.hash = $(this).find("option:selected").val();
	    });
	});



/* FITTEXT */		
    $(".fittext1").fitText(1, { minFontSize: '15px', maxFontSize: '30px' });
    $(".fittext2").fitText(0.4, { minFontSize: '30px', maxFontSize: '86px' });
    $(".fittext3").fitText(0.4, { minFontSize: '15px', maxFontSize: '45px' });
    $(".fittext4").fitText(1.5, { minFontSize: '15px', maxFontSize: '24px' });

/* 	External Links	*/	

	(function() {
	    $(window).load(function() {
			$('a[rel=external]').attr('target','_blank');	
		});                                            
	})();  


/* 	Flex Initialize	*/	

$(window).load(function() {
 
  /*header carousel slider */
  $('.slider1').flexslider({
    animation: "slide",
    animationLoop: false,
    itemWidth: 300, 
    itemMargin: 0,
    slideshow: false,
    useCSS : false,
    directionNav: false
  });


  /* gallery slider */
  $('.flexslider').flexslider({ 
    animation: "slide",
    slideshow: false,
    useCSS : false,
    directionNav: false
  });
  
  $('.bottom-nav-content-slider').flexslider({
    animation: "slide",
    slideshow: false,
    useCSS : false,
    prevText: "",
    nextText: "",
    animationLoop: true 	
  });
  
     
  // center nav slider
  $('.center-nav-content-slider').flexslider({
    animation: "slide",
    slideshow: true,
    useCSS : false,
    prevText: "",
    nextText: "",    
    animationLoop: true 	
  });
 

});



// 	Portfolio - isotope		
  
  (function() {
   
    $(window).load(function(){
    	// container
    	var $container = $('#portfolio-items');
    	function filter_projects(tag)
    	{
    	  // filter projects
    	  $container.isotope({ filter: tag });
    	  // clear active class
    	  $('li.act').removeClass('act');
    	  // add active class to filter selector
    	  $('#portfolio-filter').find("[data-filter='" + tag + "']").parent().addClass('act');
    	}
    	if ($container.length) {
    		// conver data-tags to classes
    		$('.project').each(function(){
    			var $this = $(this);
    			var tags = $this.data('tags');
    			if (tags) {
    				var classes = tags.split(',');
    				for (var i = classes.length - 1; i >= 0; i--) {
    					$this.addClass(classes[i]);
    				};
    			}
    		})
    		// initialize isotope
    		$container.isotope({
    		  // options...
    		  itemSelector : '.project',
    		  layoutMode   : 'fitRows'
    		});
    		// filter items
    		$('#portfolio-filter li a').click(function(){
    			var selector = $(this).attr('data-filter');
    			filter_projects(selector);
    			return false;
    		});
    		// filter tags if location.has is available. e.g. http://example.com/work.html#design will filter projects within this category
    		if (window.location.hash!='')
    		{
    			filter_projects( '.' + window.location.hash.replace('#','') );
    		}
    	}
    })

	})();
 




/* preloading */
 
$(window).load(function() {
	$("#loadind").fadeOut();
	$("#loading-wrap").delay(150).fadeOut("fast");
})
 

// color picker


$(".color-1" ).click(function(){
	$("#color" ).attr("href", "css/color/color-1.css" );
	return false;
});

    
$(".color-2" ).click(function(){
	$("#color" ).attr("href", "css/color/color-2.css" );
	return false;
});
    
$(".color-3" ).click(function(){
	$("#color" ).attr("href", "css/color/color-3.css" );
	return false;
});

$(".color-4" ).click(function(){
	$("#color" ).attr("href", "css/color/color-4.css" );
	return false;
});

$(".color-5" ).click(function(){
	$("#color" ).attr("href", "css/color/color-5.css" );
	return false;
});

$(".color-6" ).click(function(){
	$("#color" ).attr("href", "css/color/color-6.css" );
	return false;
});

$(".color-7" ).click(function(){
	$("#color" ).attr("href", "css/color/color-7.css" );
	return false;
});

$(".color-8" ).click(function(){
	$("#color" ).attr("href", "css/color/color-8.css" );
	return false;
});


$('.color-picker').animate({right: '-239px'});
  		
$('.color-picker a.handle').click(function(e){
	e.preventDefault();
	var div = $('.color-picker');
	if (div.css('right') === '-239px') {
		$('.color-picker').animate({right: '0px'}); 
	} 
  else {
    $('.color-picker').animate({right: '-239px'});
	}
})


}); 