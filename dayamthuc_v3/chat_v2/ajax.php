<?php
session_start();
if(isset($_SESSION['keychat']))
	$keychat = $_SESSION['keychat'];
else
	$keychat = 0;

include_once("config.php");
include_once("db.php");
$db = new db;

if (!isset($_REQUEST['action'])) exit();

$action = $_REQUEST['action'];
$ip_address = $_SERVER['REMOTE_ADDR'];
$currentDatetime = time();

if($action == "getCustomer"){
	$keychat = $currentDatetime;
	$group_id = $db->_change_dau_nhay($_POST['group_id']);
	$name = $db->_change_dau_nhay($_POST['name']);
	$phone = $db->_change_dau_nhay($_POST['phone']);
	if($name!='' && $phone!='' && $group_id>0 && $group_id<5){
		$data = $db->checkCustomer($ip_address);
		$time = $currentDatetime - $data['datetime'];
		if($keychat!=$data['keychat'] && $time>20){
			$result = $db->insertCustomer($name, $phone, $group_id, $ip_address, $keychat, $currentDatetime);
			$_SESSION['keychat'] = $keychat;
			$_SESSION['nickname'] = $name;
			echo 1;
		}else echo 2;
		return TRUE;
	}else{
		echo 0;
		return FALSE;
	}
}

/* staff chat customer */
if(isset($_SESSION['username_admin'])){
	$username = $_SESSION['username_admin'];
	$group_id = $_SESSION['group_id_admin'];
	$user = $_SESSION['name_admin'];

	if($action == "listCustomer"){
		$keychat = htmlentities(strip_tags($_POST['keychat']));
		$nickname = htmlentities(strip_tags($_POST['nickname']));
		
		$arrayChiNhanh =  array('','Tp.HCM','Đà Nẵng','Đà Lạt','Cần Thơ');
		$i=0;
		$data = $db->listCustomer($username, $group_id);
		foreach($data as $row){
			$i++;
			if($keychat!=$row['keychat']) $style=''; else $style=' id="active"';
			if($row['username']=='') $style2='style="color:#F00"'; else $style2='';
			echo '<div class="item_left" '.$style.'>
				<div class="info" title="'.$arrayChiNhanh[$row['group_id']].'">
					<b '.$style2.'>'.$i.'. '.$row['name'].' - '.$row['phone'].'</b>
					<em>('.date('d/m H:s', $row['datetime']).')</em>
				</div>
				<div class="chat"><a href="?keychat='.$row['keychat'].'&nickname='.$row['name'].'">Chat</a></div>
				<div style="clear:both; height:1px"></div>
			</div>';
			
		}
		return true;
	}
}