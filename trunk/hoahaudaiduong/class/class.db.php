<?php 
	class db{
		private $_servername = "localhost";
		private $_username = "tinhocdo_ddvn";
		private $_password = "9906899";
		private $_dbname = "tinhocdo_hoahaudaiduongvietnam";
		
		function __construct(){
			$ketnoi = mysql_connect($this->_servername,$this->_username,$this->_password);
			mysql_select_db($this->_dbname);
			mysql_query("set names 'utf8'");
		}//end function __construct()
	}//end class db
?>