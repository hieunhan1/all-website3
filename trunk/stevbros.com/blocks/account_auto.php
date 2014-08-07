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
	$password = '6f8bc7721736e55d39dfbfb33150b065'; //Pmp&2014&
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
function insert_user_enrolments($enrolid, $userid){
	$time = time();
	$sql = "INSERT INTO mdl_user_enrolments (`enrolid`,`userid`,`timestart`,`timeend`,`modifierid`,`timecreated`,`timemodified`) VALUES ('{$enrolid}', '{$userid}', '{$time}', '0', '2', '{$time}', '{$time}') ";
	mysql_query($sql);
}

$courseid = $row['courseid'];
$username = $row['email'];
$firstname = $row['name'];
$lastname = $row['last_name'];
$email = $row['email'];
$city = $row['address_city'];
$country = $row['country'];

connect_module('bryansg3_mdln1','F6LNwD66s5wsU2','bryansg3_mdln1');/*connect module*/
$check_user = checks_user_module($username);
$total = mysql_num_rows($check_user);
if( $total==0 ){
	$userid = insert_user_module($username, $firstname, $lastname, $email, $city, $country);
	$enrolid = id_enrol_module($courseid);
	if($enrolid!=false){
		insert_user_enrolments($enrolid, $userid);
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
			insert_user_enrolments($enrolid, $userid);
			$account_auto = 1;
		}else $account_auto = 1;//'Bạn đã học khóa này';
	}else $account_auto = 'Không có khóa học này';
}else $account_auto = 0;

$connect = mysql_close();
connect_module('bryansg3_stev','bryansg3_stev123','bryansg3_stev');/*connect module*/
?>