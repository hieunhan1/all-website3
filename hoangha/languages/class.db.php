<?php 
	class db{
		private $servername 	= 	"localhost";
		private $username 		= 	"hoangha_us";
		private $password 		= 	"K97D5#vGt";
		private $dbname			=	"hoangha_db";
		
		function __construct(){
			$ketnoi	= mysql_connect($this->servername,$this->username,$this->password);
			mysql_select_db($this->dbname);
			mysql_query("set names 'utf8'");
		}//end function __construct()
	}//end class db
?>