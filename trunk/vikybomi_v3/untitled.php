<?php
session_start();
if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

$qr = mysql_query("SELECT * FROM menu WHERE type_id=4");
while($row = mysql_fetch_array($qr)){
	/*$str = explode('/',$row['url']);
	$total = count($str);
	$name_rewrite = $str[count($total)];*/
	$id = $row['id'];
	//$link = str_replace('thu-vien-anh-c7/','',$row['url']);
	$name_rewrite = trim($row['url'],'/');
	//mysql_query("UPDATE menu SET name_rewrite='{$name_rewrite}' WHERE id='{$id}'");
	//echo $row['name_rewrite'].' || <font color="#FF0000">'.$row['url'].'</font> || <font color="blue">'.$name_rewrite.'</font><br>'.$total.'<br>';
	echo $id.$name_rewrite.'<br>';
}