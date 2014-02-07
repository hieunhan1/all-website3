<?php
session_start();
$lang = 'vi';

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();
include_once('config.php');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<?php

/*$qr = mysql_query("SELECT * FROM info");
while($row = mysql_fetch_array($qr)){
	//$id = $row['id'];
	//$str = 'xem-tin/'.$row['name_rewrite'].'-'.$id;
	//mysql_query("UPDATE info SET name_rewrite='{$str}' WHERE id='{$id}'");
	//echo $row['name_rewrite'].'<br />';
}*/



/*
$qr = mysql_query("SELECT * FROM menu");
while($row = mysql_fetch_array($qr)){
	echo $row['url'].'<br />';
}
*/

/*$qr = mysql_query("SELECT * FROM video");
while($row = mysql_fetch_array($qr)){
	$id = $row['id'];
	$str = $row['link'];
	$str = str_replace('http://www.youtube.com/embed/','',$str);
	$str = str_replace('//www.youtube.com/embed/','',$str);
	
	mysql_query("UPDATE video SET link='{$str}' WHERE id='{$id}'");
	echo $row['link'].'<br />';
}*/

$qr = mysql_query("SELECT * FROM info");
while($row = mysql_fetch_array($qr)){
	$id = $row['id'];
	$str = $row['menu_id'];
	//$str = str_replace('xem-tin/','',$str);
	//echo $str.'<br />';
	//mysql_query("UPDATE info SET menu_id='{$str}' WHERE id='{$id}'");
	echo $str.'<br />';
}


?>

</body>
</html>