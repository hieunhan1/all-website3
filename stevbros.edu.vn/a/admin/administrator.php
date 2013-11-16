<?php session_start(); ob_start();
$idUser = $_SESSION["idUser"];
$idGroup = $_SESSION["idGroup"];
$user = $_SESSION["Username"];
$quyen_xem = $_SESSION['quyen_xem'];
$quyen_action = $_SESSION['quyen_action'];
if(@$user) {
	require_once 'config.php';
	require_once 'layout.php';
	
	require_once DIR.'class.form.php';
	$form = new form();
	
	require_once DIR.'class.quantri.php';
	$qt = new quantri();
	
	require_once DIR.'class.sql.php';
	$sql = new sql();
	
	$p = $_GET["p"];
	if($p=='thoat') {
		session_destroy();
		header("location:index.php");
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang quản trị</title>
<link href="img/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../library/jquery.js"></script>
<script type="text/javascript" src="website.js"></script>

<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="ckeditor/ckfinder/ckfinder.js"></script>

<link href="../../library/datepicker/jquery-ui-1.8.2.custom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../library/datepicker/jquery.ui.core.js"></script>
<script type="text/javascript" src="../../library/datepicker/jquery.ui.datepicker.js"></script>

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

<body>

<div id="header"><?php require_once('header.php'); ?></div>
<div id="container">
	<div id="left">
    	<div class="title">Chức năng quản trị</div>
        <div id="catalog">
        	<?php
            $menuadmin = $qt->MenuAdmin();
			while($row_menuadmin = mysql_fetch_array($menuadmin)){
				echo "<a href='administrator.php?p={$row_menuadmin[url]}'>{$row_menuadmin[name]} </a>";
			}
			mysql_free_result($menuadmin);
			?>
        </div>
    </div>
    
	<div id="right">
    	<?php
		$m = explode('_ac', $p); $page = $m[0];
		$navigator = $qt->Navigator($p);
		$row_navigator = mysql_fetch_array($navigator);
		preg_match_all("/,{$row_navigator['id']},/i", $quyen_xem, &$for_view);
		preg_match_all("/,{$row_navigator['id']},/i", $quyen_action, &$for_action);
		
		if((count($m)==1 && sizeof($for_view[0])==1) ||(count($m)==2 && sizeof($for_action[0])==1) || (!@$p) || $p=='thongtin'){
			echo "<div class='title'>{$row_navigator[name]} ".column_general($p)."&nbsp;</div>";
			if(count($m)==1 && $page!='menu' && $page!='home' && $page!='thongtin' && $page!='users' && $page!='config') require_once('search.php');
			
			if(@$p){
				if (file_exists('blocks/'.$p.'.php')) include_once('blocks/'.$p.'.php');
				else echo "Danh mục này không tồn tại.";
			} else include_once('blocks/home.php');
		}else{
			echo '<div class="title">Thông báo</div>
			<div style="width:500px; clear:both; margin:20px 0; font-weight:bold; color:red">Bạn không có quyền vào thư mục này</div>';
		}
		?>
    </div>
</div>

</body>
</html>
<?php } else { echo '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><p>Bạn chưa đăng nhập <a href="index.php">click vào đây</a> để đăng nhập.</p>';}?>