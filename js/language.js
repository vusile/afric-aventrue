// JavaScript Document

$(document).ready(function(){
	function translateTo( destLang ){ //this can be declared in the global scope too if you need it somewhere else
        $('body').translate( 'english', destLang, {   //translate from english to the selected language
		  not: '.language,.nt',
          fromOriginal:true   //always translate from english (even after the page has been translated)
                              //unnecessary in v1.4, the default value is true
        });
    }
	
	
	$('div.languages a.language').click(function(event){
		//event.preventDefault();         
        var lang = $(this).attr('href');         
        translateTo( lang ); 
        $.cookie('destLang', lang ); 
		$('div.languages a').removeClass('selected');
		$('div.languages a.'+lang).addClass('selected');
        return false;                              
     })
	
	
	
	$.translate(function(){ 
		var destLang = $.cookie('destLang'); //get previously translated language
		if(!destLang ){destLang='en';}
		if(destLang!='en')translateTo( destLang );
		$('div.languages a.'+destLang).addClass('selected');
	});
});