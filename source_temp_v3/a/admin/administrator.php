<?php
session_start();

if(isset($_GET['language'])) {
	$_SESSION['language'] = $_GET['language'];
} else {
	if(!isset($_SESSION['language'])) {
		$_SESSION['language'] = 'vi';
	}
}

$lang = $_SESSION['language'];

$id_user = $_SESSION["id_user_admin"];
$user = $_SESSION["username_admin"];
$quyen_xem = $_SESSION['quyen_xem_admin'];
$quyen_action = $_SESSION['quyen_action_admin'];

if(@$user){
	include_once('config.php');
	include_once('layout.php');
	
	$p = $_GET["p"];
	$url = trim($p,'_ac');
	$id = $_GET["id"];
	
	if(!isset($_GET['page_number'])) $page_number = 1; else $page_number = $_GET['page_number'];
	
	if($p=='thoat') {
		session_destroy();
		header("location:index.php");
	}
}else header("location:index.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang quản trị</title>
<meta name="robots" content="nofollow" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="website.js"></script>

<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="ckeditor/ckfinder/ckfinder.js"></script>

<link type="text/css" href="../../library/datetimepick/jquery.simple-dtpicker.css" rel="stylesheet" />
<script type="text/javascript" src="../../library/datetimepick/jquery.simple-dtpicker.js"></script>
<script type="text/javascript">
	$(function(){
		$("input[name=date_update], .datetimepick").appendDtpicker({
			//"dateFormat": "DD/MM/YYYY h:m",
		});
	});
</script>

<script type="text/javascript">
function BrowseServer( startupPath, functionData ){
	var finder = new CKFinder();
	finder.basePath = 'ckfinder/';
	finder.startupPath = startupPath;
	finder.selectActionFunction = SetFileField;
	finder.selectActionData = functionData;
	finder.popup(900, 600);
}
function SetFileField(fileUrl, data){
	var sFileName = this.getSelectedFile().name;
	document.getElementById(data["selectActionData"]).value = sFileName;
}
</script>

</head>

<body style="background:url(images/bg_header.gif) repeat-x #b5d8ef">

<div id="wrapper">
    <div id="header">
        <div id="logo">Trang quản trị website</div>
        <div id="thongtin">
          User: <strong><?php echo $user; ?></strong>    <a href="administrator.php?p=thongtin">Thông tin tài khoản</a> | <a href="<?php echo "administrator.php?p=thoat"?>">Logout</a>
        </div>
    </div>

	<div id="left">
    	<div class="title">&nbsp;</div>
        <div id="catalog">
        	<?php
            $qr = $qt->MenuAdmin();
			while($row = mysql_fetch_array($qr)){
				if($url != $row['url']) echo '<a href="administrator.php?p='.$row['url'].'">'.$row['name'].'</a>';
				else echo '<a href="administrator.php?p='.$row['url'].'" style="color:#F00">'.$row['name'].'</a>';
			}
			?>
        </div>
        <div style="clear:both; height:50px"></div>
    </div>
    
	<div id="right">
    	<?php
		$navigator = $qt->Navigator($url);
		$row_navigator = mysql_fetch_array($navigator);
		
		preg_match_all("/,{$row_navigator['id']},/i", $quyen_xem, &$for_view);
		preg_match_all("/,{$row_navigator['id']},/i", $quyen_action, &$for_action);
		
		if($p==$url){
			$url_lang = 'administrator.php?p='.$url;
			$qr = $qt->language();
			if(mysql_num_rows($qr) > 1){
				while($row = mysql_fetch_array($qr)){
					if($_SESSION['language'] != $row['ma'])
						$view_lang .= '<a href="'.$url_lang.'&language='.$row['ma'].'">'.$row['name'].'</a> &nbsp; | &nbsp; ';
					else
						$view_lang .= '<a href="'.$url_lang.'&language='.$row['ma'].'" style="background-color:#FF0; color:#333; border:solid 1px #999; padding:2px 5px">'.$row['name'].'</a> &nbsp; | &nbsp; ';
				}
			}
		}
		
		//if(sizeof($for_view[0])==1){
			if($id=='') $btn_right = btn_add_create($url).btn_see_change();
			else $btn_right = '';
			
			echo '<div class="title" style="width:auto; float:left">'.$row_navigator['name'].'</div>
			<div class="title" style="width:auto; float:right">'.$btn_right.'</div>
			
			<div style="clear:both; height:1px"></div>
			<div style="clear:both; margin-bottom:10px">'.$view_lang.'</div>';
			
			if(@$p){
				if (file_exists('blocks/'.$p.'.php')) include_once('blocks/'.$p.'.php');
				else echo "Danh mục này không tồn tại.";
			}else include_once('blocks/home.php');
		//}else
			//echo '<div class="title">Thông báo</div> <div style="width:500px; clear:both; margin:20px 0; font-weight:bold; color:red">Bạn không có quyền vào thư mục này</div>';
		?>
    </div>
</div>

</body>
</html>