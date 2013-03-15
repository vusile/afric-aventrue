$(function(){
	$( 'textarea.texteditor' ).ckeditor({
		toolbar:'Full',
		filebrowserBrowseUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/ckfinder.html',
		filebrowserImageBrowseUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/ckfinder.html?type=Images',
		filebrowserFlashBrowseUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/ckfinder.html?type=Flash',
		filebrowserUploadUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
		filebrowserImageUploadUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
		filebrowserFlashUploadUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
		filebrowserWindowWidth : '1000',
		filebrowserWindowHeight : '700'
	
	
	});
	$( 'textarea.mini-texteditor' ).ckeditor({
	
		toolbar :
		[
			{ name: 'basicstyles', items : [ 'Bold','Italic','Underline','Link','Unlink'] },
			{ name: 'paragraph', items : [ 'NumberedList','BulletedList','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
			{ name: 'insert', items : [ 'Image','HorizontalRule','MediaEmbed','Table' ] },
			{ name: 'styles', items : [ 'Styles','Format','Source'] }
		],
		width:700,
		filebrowserBrowseUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/ckfinder.html',
		filebrowserImageBrowseUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/ckfinder.html?type=Images',
		filebrowserFlashBrowseUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/ckfinder.html?type=Flash',
		filebrowserUploadUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
		filebrowserImageUploadUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
		filebrowserFlashUploadUrl : 'http://zoomtanzaniahost.com/afric-aventure/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
		filebrowserWindowWidth : '1000',
		filebrowserWindowHeight : '700',
		extraPlugins: 'MediaEmbed',
		forcePasteAsPlainText : true,
		pasteFromWordRemoveStyles : true,
		// enterMode :CKEDITOR.ENTER_BR,
		// autoParagraph: false,
		// inputFormat: FULL_HTML,
		stylesSet :[
			{ name : 'Introduction Emphasis', element : 'strong' }
		]
	});
});