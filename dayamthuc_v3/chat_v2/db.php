<?php 
class db{
	public $db;
	public function __construct(){
		$this->db = new mysqli(CONS_HOST, CONS_USER_DB, CONS_PASS_DB, CONS_DB_NAME);
		if($this->db->connect_errno) die( $db->connect_error ); 	
		$this->db->set_charset("utf8");
	}
	
	public function _check_email($str){
		$str = trim($str);
		$pattern = '/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)+$/';
		if(preg_match($pattern, $str)) return $str;
		else return false;
	}
	
	public function _checks_text($str,$lengh=0){
		$str = trim($str);
		if($str!='' && strlen($str)>=$lengh) return $str;
		else return false;
	}
	
	public function _checks_number($str){
		$str = trim($str);
		if(is_numeric($str)) return $str;
		else return false;
	}
	
	public function _checks_phone($str){
		$str = trim($str);
		$pattern = '/^[{0,(,+}][0-9-+()\.\s]{8,18}$/';
		if(preg_match($pattern, $str)) return $str;
		else return false;
	}
	
	public function _remove_tag($str){
		$str = strip_tags($str,""); 
		return $str;
	}
	
	public function _change_dau_nhay($str){
		$str = str_replace("'",'&#39;',$str);
		return $str;
	}
	
	public function _change_alias($alias){
		if(!$alias) return false;
		$str = $alias;
		$unicode = array(
			'a'=>'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
			'A'=>'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
			'd'=>'đ',
			'D'=>'Đ',
			'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
			'E'=>'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
			'i'=>'í|ì|ỉ|ĩ|ị',	  
			'I'=>'Í|Ì|Ỉ|Ĩ|Ị',
			'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
			'O'=>'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
			'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
			'U'=>'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
			'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
			'Y'=>'Ý|Ỳ|Ỷ|Ỹ|Ỵ',
			'' =>"`|~|!|@|#|$|%|^|&|*|(|)|-|_|+|=|\|[|]|{|}|:|;|\"|'|,|.|/|<|>|?|“|”|  ",
			'-'=>"| "
		);
		foreach($unicode as $khongdau=>$codau) {
			$arr=explode("|",$codau);
			$str = str_replace($arr,$khongdau,$str);
			$str = str_replace('|','',$str);
			$str = trim($str,'-');
		}
		return strtolower($str);
	}
	
	/*function chat customer*/
	public function checkCustomer($ip_address){
		$sql = "SELECT `id`,`keychat`,`datetime` FROM `web_chat_customer` WHERE `ip_address`='{$ip_address}' ORDER BY `id` DESC LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function insertCustomer($name, $phone, $group_id, $ip_address, $keychat, $currentDatetime){
		$sql = "INSERT INTO `web_chat_customer` (`name`,`phone`,`group_id`,`ip_address`,`keychat`,`datetime`) VALUES ('{$name}', '{$phone}', '{$group_id}', '{$ip_address}', '{$keychat}', '{$currentDatetime}')";
		if(!$this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	/*function chat nhan vien*/
	public function listCustomer($username, $group_id){
		if($username!='admin') $qr = "WHERE (`username`='{$username}' OR `username`='') AND `group_id`='{$group_id}'";
		else $qr = "";
		$sql = "SELECT * FROM `web_chat_customer` {$qr} ORDER BY `id` DESC LIMIT 50";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function checkStaff($keychat){
		$sql = "SELECT `username` FROM `web_chat_customer` WHERE `keychat`='{$keychat}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function updateUsernameCustomer($keychat, $username){
		$sql = "UPDATE `web_chat_customer` SET `username`='{$username}' WHERE `keychat`='{$keychat}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	/*end function chat nhan vien*/
	
	// test chat new
	function viewMessage($keychat){
		$sql = "SELECT `message`,`user`,`type` FROM `web_chat_message` WHERE `keychat`='{$keychat}' ORDER BY `id`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	function insertMessage($message, $keychat, $nickname, $type, $datetime){
		$sql = "INSERT INTO `web_chat_message` (`message`,`keychat`,`user`,`type`,`datetime`) VALUES ('{$message}', '{$keychat}', '{$nickname}', '{$type}', '{$datetime}')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
}