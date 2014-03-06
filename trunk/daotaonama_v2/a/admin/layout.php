<?php
function btnCancel($page){
	header("location:administrator.php?p={$page}");
}

function btn_see_change(){
	$str = '&nbsp; | &nbsp;<a href="javascript:;" id="update">See the change</a><a href="javascript:;" id="create">See the not change</a>';
	return $str;
}

function btn_go_back($p){
	$str = '<a href="javascript:;" onclick="window.location.href=\'administrator.php?p='.$p.'\'"><img src="images/back.png" height="14px" /> Go back</a>';
	return $str;
}

function btn_add_create($p){
	$str = '<a href="administrator.php?p='.$p.'_ac&id=0"><img src="images/add.gif" /> Thêm mới</a>';
	return $str;
}

function phantrang($page,$max_results,$page_number,$search){
	global $sql;
	$from = (($page_number * $max_results) - $max_results);
	$link = "administrator.php?p={$page}&page_number=";
	$type = 6; //loại sql select $type = 6;
	$table = $page;
	$field = array('id');
	$sql->get_sql($type,$table,$field,$search);
	$qr = $sql->executable() or die ('<p class="error">Không truy vấn được</p>');
	$total = mysql_num_rows($qr);
	mysql_free_result($qr);
	
	$total_pages = ceil($total / $max_results);
	if($total_pages > 1){
		if($page_number > 1){
			$prev = ($page_number - 1);
			echo "<a href='{$link}{$prev}'>Trang trước</a>";
		}
		for($i = $page_number - 5; $i <= $page_number + 5 & $i <= $total_pages; $i++){
			if($page_number == $i){
				echo "<a href='{$link}{$i}' style='color:#F00; font-weight:bold; background-color:#ffffcc'>{$i}</a>";
			} elseif($i>0) {
				echo "<a href='{$link}{$i}'>{$i}</a>";
			}
		}
		if($page_number < $total_pages){
			$next = ($page_number + 1);
			echo "<a href='{$link}{$next}'>Trang sau</a>";
		}
	}
}

function ckeditor_full($name){
	$dir_ckeditor = '../../library/';
	$str = "<script>
	CKEDITOR.replace( '{$name}', {
		uiColor: '#b5d8ef',
		filebrowserBrowseUrl: 		'".$dir_ckeditor."ckeditor/ckfinder/ckfinder.php',
		filebrowserImageBrowseUrl: 	'".$dir_ckeditor."ckeditor/ckfinder/ckfinder.php?Type=Images',
		filebrowserFlashBrowseUrl: 	'".$dir_ckeditor."ckeditor/ckfinder/ckfinder.php?Type=Flash',
		//filebrowserUploadUrl: 		'".$dir_ckeditor."ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
		//filebrowserImageUploadUrl: 	'".$dir_ckeditor."ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
		//filebrowserFlashUploadUrl: 	'".$dir_ckeditor."ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
		filebrowserWindowWidth: '860',
		filebrowserWindowHeight: '530',
		toolbar:
		[
		['Source','-','Maximize','ShowBlocks','-','Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
		['Undo','Redo','-','Find','Replace','-','RemoveFormat'],
		['Link','Unlink','Iframe'],
		['Image','Flash', 'Video', 'Table'],
		['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],
		'/',
		['Styles','Format','Font','FontSize'],
		['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
		['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
		['TextColor','BGColor','-','HorizontalRule','Smiley','SpecialChar','PageBreak']
		]
		});
	</script>";
	return $str;
}

function ckeditor_custom($name){
	$str = "<script>
	CKEDITOR.replace( '{$name}', {
		uiColor: '#b5d8ef',
		toolbar: [
			['Source','Paste','PasteText','PasteFromWord','Bold', 'Italic', '-','RemoveFormat','TextColor','BGColor','NumberedList','BulletedList'],
		]
	});
	</script>";
	return $str;
}