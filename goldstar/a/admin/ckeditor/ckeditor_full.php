<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<script>
		CKEDITOR.replace( 'content', {
			//uiColor: '#14B8C4',
			
			filebrowserBrowseUrl: 'ckeditor/ckfinder/ckfinder.html',
			filebrowserImageBrowseUrl: 'ckeditor/ckfinder/ckfinder.html?Type=Images',
			filebrowserFlashBrowseUrl: 'ckeditor/ckfinder/ckfinder.html?Type=Flash',
			filebrowserUploadUrl: 'ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
			filebrowserImageUploadUrl: 'ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
			filebrowserFlashUploadUrl: 'ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
			filebrowserWindowWidth: '640',
			filebrowserWindowHeight: '480',
			
			toolbar:
			[
			['Source','-','Save','NewPage','Preview','-','Templates'],
			['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
			['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
			['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],
			'/',
			['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
			['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],
			['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
			['BidiLtr', 'BidiRtl' ],
			['Link','Unlink','Anchor'],
			['Image','Flash', 'Video', 'Table','HorizontalRule','Smiley','SpecialChar','PageBreak','Iframe'],
			'/',
			['Styles','Format','Font','FontSize'],
			['TextColor','BGColor'],
			['Maximize', 'ShowBlocks','-','About']
			]
		});
	</script>
</body>
</html>