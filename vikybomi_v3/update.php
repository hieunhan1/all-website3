<?php
session_start();
if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

$error_sql = "Lỗi kết nối";
define(does_not_exist,'Mục này không tồn tại.');

include_once('class/class.trangchu.php');
$tc = new trangchu();

$from = 'video';
$qr = mysql_query("SELECT * FROM {$from}");
while($row = mysql_fetch_array($qr)){
	$id = $row['id'];
	$name_rewrite = $row['name_rewrite'].'-d'.$id;
	echo $name_rewrite.'<br>';
	mysql_query("UPDATE {$from} SET name_rewrite='{$name_rewrite}' WHERE id='{$id}'");
}

/*$from = 'menu';
$qr = mysql_query("SELECT * FROM {$from} WHERE type_id=4");
while($row = mysql_fetch_array($qr)){
	$id = $row['id'];
	$name_rewrite = substr($row['name_rewrite'],0,-3).'d'.$id;
	$link = substr($row['name_rewrite'],0,-3).'d'.$id.'/';
	echo $name_rewrite.'<br>';
	mysql_query("UPDATE {$from} SET name_rewrite='{$name_rewrite}',url='{$link}' WHERE id='{$id}'");
}*/