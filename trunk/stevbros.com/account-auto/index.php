<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">

#header{height:150px}
#header img{float:left}

</style>
</head>
<body>

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

$courseid = 2;
$username = 'nhan1@gmail.com';
$firstname = 'Nhan';
$lastname = 'Tran';
$email = 'nhan1@gmail.com';
$city = 'SG';
$country = 'VN';

$connect = connect_module('bryansg3_mdln1','F6LNwD66s5wsU2','bryansg3_mdln1');
$check_user = checks_user_module($username);
$total = mysql_num_rows($check_user);
if( $total==0 ){
	$userid = insert_user_module($username, $firstname, $lastname, $email, $city, $country);
	$enrolid = id_enrol_module($courseid);
	if($enrolid!=false){
		insert_user_enrolments($enrolid, $userid);
	}else{
		echo 'Không có khóa học này';
	}
}elseif( $total==1 ){
	$row = mysql_fetch_array($check_user);
	$userid = $row['id'];
	$enrolid = id_enrol_module($courseid);
	if($enrolid!=false){
		if( check_user_enrolments($enrolid, $userid)==0 ) insert_user_enrolments($enrolid, $userid);
		else echo 'Bạn đã học khóa này';
	}else{
		echo 'Không có khóa học này';
	}
}else return false;

$connect = mysql_close();

//echo checks_user_module($username);
//echo insert_user_module($username, $firstname, $lastname, $email, $city, $country);

//echo checks_user_module($username);

//echo date('Y-m-d H:i','1414386000');

?>

<div style="width:800px; margin:auto">
    <div id="header">
        <img src="http://www.stevbros.com/images/logo_stevbros.png" alt="stevbros" />
        <img src="http://www.stevbros.com/images/logo_pmi.png" alt="pmi" style="margin:12px 0 0 50px" />
    </div>
</div>

</body>
</html>