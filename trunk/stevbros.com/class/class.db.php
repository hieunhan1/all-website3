<?php 
	class db{
		private $servername 	= 	"localhost";
		private $username 		= 	"bryansg3_stev";
		private $password 		= 	"bryansg3_stev123";
		private $dbname			=	"bryansg3_stev";
		
		function __construct(){
			$ketnoi	= mysql_connect($this->servername,$this->username,$this->password);
			mysql_select_db($this->dbname);
			mysql_query("set names 'utf8'");
		}//end function __construct()
	}//end class db
?>