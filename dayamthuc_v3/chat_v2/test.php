<?php
include_once('config.php');
include_once('db.php');
$db = new db;

$log = array();
if(file_exists('chat.txt')){
	$lines = file('chat.txt');
}
$log['state'] = count($lines); /**/

$state = 0;
$count =  count($lines);

$text= array();
$log['state'] = $state + count($lines) - $state;

$data = $db->chatMessage();
echo 'State: '.count($data).'<br />';
foreach($data as $row){
	$log['text'][] = $row['message'];
}

	/*foreach ($lines as $line_num => $line){
		if($line_num >= $state){
			$text[] =  $line = str_replace("\n", "", $line);
		}
	}
	$log['text'] = $text;*/

//print_r($log);

/*

*/