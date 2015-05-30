<?php
session_start();
if(isset($_SESSION['username_admin'])){
	$username = $_SESSION['username_admin'];
	$group_id = $_SESSION['group_id_admin'];
	$user = $_SESSION['name_admin'];
}else
	return false;

include_once("config.php");
include_once("db.php");
$db = new db;

if (!isset($_REQUEST['action'])) exit();

$action = $_REQUEST['action'];
$currentDatetime = time();

if($action == "listCustomer"){
	$data = $db->listCustomer($username, $group_id);
	foreach($data as $row){
		if($row['username']==NULL) $style='style="color:#F00"'; else $style='';
		echo '<div class="item_left" keychat="'.$row['keychat'].'" name="'.$row['name'].'"><b '.$style.'>'.$row['name'].' - '.$row['phone'].'</b> <em>('.date('d/m H:s', $row['datetime']).') '.$row['group_id'].'</em></div>';
		
	}
	return true;
}

if($action == "chatMessage") {
	$keychat = $db->_change_dau_nhay($_POST['keychat']);
	$name = $db->_change_dau_nhay($_POST['name']);
	$data = $db->selectMessage($keychat);
	foreach($data as $row){
		if($row['user']=='') echo '<div class="item1"><b>'.$name.':</b> '.$row['message'].'</div>';
		else echo '<div class="item2">'.$row['message'].'</div>';
	}
	return true;
}

if($action == "getIdMessageStaff") {
	$keychat = $db->_change_dau_nhay($_POST['keychat']);
	$data = $db->getIdMessage($keychat);
	echo $data;
	return true;
}

if($action == "getMessageNewStaff"){
	$id = $db->_change_dau_nhay($_POST['id']);
	$keychat = $db->_change_dau_nhay($_POST['keychat']);
	$name = $db->_change_dau_nhay($_POST['name']);
	$data = $db->getMessageNew($keychat, $id);
	foreach($data as $row){
		if($row['user']=='') echo '<div class="item1"><b>'.$name.':</b> '.$row['message'].'</div>';
		else echo '<div class="item2">'.$row['message'].'</div>';
	}
	return true;
}

if($action == "getMessageStaff") {
	$message = trim($_POST['message']);
	$message = $db->_change_dau_nhay($message);
	$keychat = $db->_change_dau_nhay($_POST['keychat']);
	$datetime = time();
	
	$data = $db->checkInsertMessage($keychat);
	if(count($data)==0){ echo 0; return false; }
	if($data['username']=='') $db->updateUsernameCustomer($keychat, $username);
	
	$data = $db->insertMessage($message, $keychat, $datetime, $user);
	$data = $db->_checks_number($data);
	if($data>0)
		echo $data;
	else
		echo 0;
	
	return true; 
}

//mysql_close();