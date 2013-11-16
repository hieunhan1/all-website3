<?php 
	class db{
		private $servername 	= 	"localhost";
		private $username 		= 	"root";
		private $password 		= 	"root";
		private $dbname			=	"thienphat";
		
		function __construct(){
			$ketnoi	= mysql_connect($this->servername,$this->username,$this->password);
			mysql_select_db($this->dbname);
			mysql_query("set names 'utf8'");
		}//end function __construct()
	}//end class db
?>