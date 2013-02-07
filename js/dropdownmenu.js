// JavaScript Document

(function($) {
   $.fn.customFadeIn = function(speed, callback) {
    $(this).fadeIn(speed, function() {
     if(!$.support.opacity)
      $(this).get(0).style.removeAttribute('filter');
     if(callback != undefined)
      callback();
    });
   };
   $.fn.customFadeOut = function(speed, callback) {
    $(this).fadeOut(speed, function() {
     if(!$.support.opacity)
      $(this).get(0).style.removeAttribute('filter');
     if(callback != undefined)
      callback();
    });
   };
   $.fn.customFadeTo = function(speed,to,callback) {
    return this.animate({opacity: to}, speed, function() {
     if (to == 1 && jQuery.browser.msie)
      this.style.removeAttribute('filter');
     if (jQuery.isFunction(callback))
      callback();
    });
   };
  })(jQuery);

$(document).ready(function(){  
  	
	$('a,ul,li').css("filter","");
	$('a,ul,li').removeAttr("filter"); 

	
	$("div.topmenu ul > li").hover(
		function(){
			$(this).children('a').addClass('selected');
			var czas=$(this).children("ul.subnav").height();
			$(this).children("ul.subnav").stop(false,true).slideDown(czas).show(); //Drop down the subnav on click  
		},
		function(){
			$(this).children('a').removeClass('selected');
			var czas=$(this).children("ul.subnav").height();	
			if($(this).children("ul.subnav").length>0)
			$(this).children("ul.subnav").stop(false,true).slideUp(czas).hide();	
		}
	);
	
  
});