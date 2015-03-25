<?php
session_start();
if(isset($_SESSION['keychat'])){
	$keychat = $_SESSION['keychat'];
	$typeUser = $_SESSION['typeUser'];
}else
	return false;

include_once('config.php');
include_once('db.php');
$db = new db;

$currentDatetime = time();
$function = $_POST['function'];
$log = array();
switch($function) {
	case('getState'):
		$data = $db->viewMessage($keychat);
		$count = count($data);
		$log['state'] = 0;
		break;	
	
	case('update'):
		$state = htmlentities($_POST['state']);
		$data = $db->viewMessage($keychat);
		$count = count($data);
		$_SESSION['state_current'] = $state;
		if($state == $count){
			$log['state'] = $state;
			$log['text'] = false;
		}else{
			$log['state'] = $count;
			$_SESSION['state_new'] = $count;
			$text = array();
			foreach($data as $rows => $row){
				if($rows >= $state){
					if($row['type']==$typeUser) $text[] = '<div class="item2"><b>'.$row['user'].': </b>'.$row['message'].'</div>';
					else $text[] = '<div class="item1"><b>'.$row['user'].':</b> '.$row['message'].'<embed class="sound" src="images/chat.wav" loop="false" volume="100" /></div>';
				}
			}
			$log['text'] = $text;
		}
		break;
	 
	case('send'):
		$nickname = $db->_change_dau_nhay(strip_tags($_POST['nickname']));
		$reg_exUrl = "/(http|https|ftp|ftps)\:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(\/\S*)?/";
		$message = $db->_change_dau_nhay(strip_tags($_POST['message']));
		$message = trim($message);
		if(($message) != ""){
			if(preg_match($reg_exUrl, $message, $url)) {
				$message = preg_replace($reg_exUrl, '<a href="'.$url[0].'" target="_blank">'.$url[0].'</a>', $message);
			}
			$db->insertMessage($message, $keychat, $nickname, $typeUser, $currentDatetime);
		}
		break;
}

echo json_encode($log);

?>