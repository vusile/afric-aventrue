// JavaScript Document
$('document').ready(function(){
	

if($('div.banerscontainer div.zdjecia img').length>1)
$(document).everyTime('15s', function(i) {  
									 
	$('div.banerscontainer div.zdjecia img:visible').fadeOut(800,function(){});
			var tmp=$('div.banerscontainer div.zdjecia img:visible');
			
			if(tmp.next().length>0)tmp.next().fadeIn(600);
			else $('div.banerscontainer div.zdjecia img:first').fadeIn(600);
	
	},0);
	
});