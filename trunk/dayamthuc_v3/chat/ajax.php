<?php
session_start();
if(isset($_SESSION['keychat']))
	$keychat = $_SESSION['keychat'];
else
	return false;

include_once("config.php");
include_once("db.php");
$db = new db;

if (!isset($_REQUEST['action'])) exit();

$action = $_REQUEST['action'];
$ip_address = $_SERVER['REMOTE_ADDR'];
$currentDatetime = time();

if($action == "checkCustomer"){
	$data = $db->checkCustomer($ip_address);
	if(count($data)!=0){
		if($keychat!=$data['keychat'])
			echo 0;
		else
			echo 1;
	}else
		echo 0;
	return TRUE;
}

if($action == "getCustomer"){
	$group_id = $db->_change_dau_nhay($_POST['group_id']);
	$name = $db->_change_dau_nhay($_POST['name']);
	$phone = $db->_change_dau_nhay($_POST['phone']);
	if($name!='' && $phone!='' && $group_id>0 && $group_id<5){
		$data = $db->checkCustomer($ip_address);
		$time = $currentDatetime - $data['datetime'];
		if($keychat!=$data['keychat'] && $time>20){
			$result = $db->insertCustomer($name, $phone, $group_id, $ip_address, $keychat, $currentDatetime);
			echo 1;
		}else echo 2;
		return TRUE;
	}else{
		echo 0;
		return FALSE;
	}
}

if($action == "viewChatMessage") {
	$data = $db->selectMessage($keychat);
	foreach($data as $row){
		if($row['user']=='') echo '<div class="item2">'.$row['message'].'</div>';
		else echo '<div class="item1"><b>'.$row['user'].':</b> '.$row['message'].'</div>';
	}
	return true;
}

if($action == "getMessageCustomer") {
	$message = trim($_POST['message']);
	$message = $db->_change_dau_nhay($message);
	$datetime = time();
	
	$data = $db->checkInsertMessage($keychat);
	if(count($data)==0){ echo 0; return false; }
	
	$data = $db->insertMessage($message, $keychat, $datetime);
	$data = $db->_checks_number($data);
	if($data>0)
		echo $data;
	else
		echo 0;
	
	return true; 
}

if($action == "getIdMessageCustomer") {
	$data = $db->getIdMessage($keychat);
	echo $data;
	return true;
}

if($action == "getMessageNewCustomer"){
	$id = $db->_change_dau_nhay($_POST['id']);
	$data = $db->getMessageNew($keychat, $id);
	foreach($data as $row){
		if($row['user']=='') echo '<div class="item2">'.$row['message'].'</div>';
		else echo '<div class="item1"><b>'.$row['user'].':</b> '.$row['message'].'</div>';
	}
	return true;
}

mysql_close();