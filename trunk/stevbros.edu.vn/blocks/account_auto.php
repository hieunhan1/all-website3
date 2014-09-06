<?php
function connect_module($username,$password,$dbname){
	$servername = 'localhost';
	$ketnoi	= mysql_connect($servername,$username,$password);
	$ketnoi	= mysql_select_db($dbname);
	$ketnoi	= mysql_query("set names 'utf8'");
	return $ketnoi;
}
function checks_user_module($username){
	$sql = "SELECT id FROM mdl_user WHERE username='{$username}'";
	return mysql_query($sql);
}
function insert_user_module($username, $firstname, $lastname, $email, $city, $country){
	$password = 'd88401c917c05e3982cdcd1264e818fb'; //Pdu&2014&
	$confirmed = '1';
	$mnethostid = '1';
	$descriptionformat = '1';
	$time = time();
	$sql = "INSERT INTO mdl_user (`confirmed`, `mnethostid`, `username`, `password`, `firstname`, `lastname`, `email`, `city`, `country`, `descriptionformat`, `timecreated`, `timemodified`) VALUES ('{$confirmed}', '{$mnethostid}', '{$username}', '{$password}', '{$firstname}', '{$lastname}', '{$email}', '{$city}', '{$country}', '{$descriptionformat}', '{$time}', '{$time}' )";
	mysql_query($sql);
	return mysql_insert_id();
}
function id_enrol_module($courseid){
	$sql = "SELECT id FROM mdl_enrol WHERE enrol='manual' AND courseid='{$courseid}'";
	$qr = mysql_query($sql);
	if(mysql_num_rows($qr)==1){
		$row = mysql_fetch_array($qr);
		return $row['id'];
	}else return false;
}
function check_user_enrolments($enrolid, $userid){
	$sql = "SELECT id FROM mdl_user_enrolments WHERE enrolid='{$enrolid}' AND userid='{$userid}' ";
	$qr = mysql_query($sql);
	return mysql_num_rows($qr);
}
function insert_user_enrolments($enrolid, $userid, $timeend){
	$time = time();
	$timeend = time() + ($timeend * 24 * 60 * 60); // 7 days; 24 hours; 60 mins; 60 secs
	$sql = "INSERT INTO mdl_user_enrolments (`enrolid`,`userid`,`timestart`,`timeend`,`modifierid`,`timecreated`,`timemodified`) VALUES ('{$enrolid}', '{$userid}', '{$time}', '{$timeend}', '2', '{$time}', '{$time}') ";
	mysql_query($sql);
}
function checks_context_id($courseid){
	$sql = "SELECT `id` FROM `mdl_context` WHERE `contextlevel`=50 AND `instanceid`='{$courseid}'";
	$qr = mysql_query($sql);
	if(mysql_num_rows($qr)==1){
		$row = mysql_fetch_array($qr);
		return $row['id'];
	}else return false;
}
function insert_role_assignments($userid, $contextid, $roleid=5){
	$time = time();
	$sql = "INSERT INTO `mdl_role_assignments` VALUE (NULL, '{$roleid}', '{$contextid}', '{$userid}', '{$time}', '2', '', '0', '0') ";
	mysql_query($sql);
}

$courseid = $row['courseid'];
$timeend = $row['timeend'];
$username = $row['email'];
$firstname = $row['name'];
$lastname = $row['last_name'];
$email = $row['email'];
$city = $row['address_city'];
$country = $row['country'];

connect_module('stevbros_moodle','stev2012bros','stevbros_moodle');/*connect module*/
$check_user = checks_user_module($username);
$total = mysql_num_rows($check_user);
if( $total==0 ){
	$userid = insert_user_module($username, $firstname, $lastname, $email, $city, $country);
	$enrolid = id_enrol_module($courseid);
	if($enrolid!=false){
		insert_user_enrolments($enrolid, $userid, $timeend);
		$contextid = checks_context_id($courseid);
		insert_role_assignments($userid, $contextid);
		$account_auto = 1;
	}else{
		$account_auto = 'Không có khóa học này';
	}
}elseif( $total==1 ){
	$row_check_user = mysql_fetch_array($check_user);
	$userid = $row_check_user['id'];
	$enrolid = id_enrol_module($courseid);
	if($enrolid!=false){
		if( check_user_enrolments($enrolid, $userid)==0 ){
			insert_user_enrolments($enrolid, $userid, $timeend);
			$contextid = checks_context_id($courseid);
			insert_role_assignments($userid, $contextid);
			$account_auto = 1;
		}else $account_auto = 2;//'Bạn đã học khóa này';
	}else $account_auto = 'Không có khóa học này';
}else $account_auto = 0;

$connect = mysql_close();
connect_module('stevbros_web','stevbros_web123','stevbros_web');/*connect module*/
?>