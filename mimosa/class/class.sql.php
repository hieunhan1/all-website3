<?php
class sql {
	var $_var1;
	var $_var2;
	var $_var3;
	var $_var4;
	var $_var5;
	var $_error;
	var $_list_error = array(
		0  => 'Không có chức năng bạn tìm.',
		1  => 'Thêm mới không được.',
		2  => 'Cập nhật không được',
		3  => 'Xóa không được',
		4  => 'Phục hồi không được.',
		5  => 'Xóa hẵn không được',
		6  => 'Không truy vấn được',
		7  => 'Không đổi được trạng thái',
		89 => '1' //thực hiện thành công
	);
	
	function get_sql($type, $table, $field = NULL, $value = NULL, $id = NULL){
		$this->_var1 = $type;
		$this->_var2 = $table;
		$this->_var3 = $field;
		$this->_var4 = $value;
		$this->_var5 = $id;
	}
	function executable(){
		switch($this->_var1){
			case 1 : $action = $this->create();				break;
			case 2 : $action = $this->update();				break;
			case 3 : $action = $this->delete_backup();		break;
			case 4 : $action = $this->delete_restore(); 	break;
			case 5 : $action = $this->delete(); 			break;
			case 6 : return $action = $this->select(); 		break;
			case 7 : $action = $this->status(); 			break;
			case 8 : return $action = $this->select2(); 	break;
			
			default : $this->_error = $this->_list_error[0];
		}
		return $this->KiemTra();
	}
	function KiemTra(){
		if(count($this->_error) == 0) return $this->_error = $this->_list_error[89];
		else return $this->_error;
	}
	
	function _change_dau_nhay($str){
		$str = str_replace("'",'&#39;',$str);
		return $str;
	}
	function create() { //1
		$table  = $this->_var2;
		$fields = $this->_var3;
		$values = $this->_var4;
		$total_field = count($fields);
		for($i=0; $i < $total_field-1; $i++){
			$str_field .= "`{$fields[$i]}`,";
			$str_value .= "'".$this->_change_dau_nhay($values[$i])."',";
		}
		$str_field = trim($str_field,',');
		$str_value = trim($str_value,',');
		$str = "INSERT INTO `{$table}` ( {$str_field} ) VALUES ( {$str_value} )";
		mysql_query($str) or ($this->_error = $this->_list_error[2]);
	}
	function update() { //2
		$table = $this->_var2;
		$fields = $this->_var3;
		$values = $this->_var4;
		$id = $this->_var5;
		$total_field = count($fields);
		for($i=0; $i < $total_field-1; $i++){
			$str .= "`{$fields[$i]}`='".$this->_change_dau_nhay($values[$i])."',";
		}
		$str = trim($str,',');
		$str = "UPDATE `{$table}` SET {$str} WHERE `id`='{$id}' ";
		mysql_query($str) or ($this->_error = $this->_list_error[2]);
	}
	function delete_backup() { //3
		$table = $this->_var2;
		$user = $this->_var3;
		$id = $this->_var4;
		$qr = "UPDATE `{$table}` SET `delete`=1, `user_update`='{$user}' WHERE `id`='{$id}'";
		mysql_query($qr) or ($this->_error = $this->_list_error[3]);
	}
	function delete_restore() { //4
		$table = $this->_var2;
		$user = $this->_var3;
		$id = $this->_var4;
		$qr = "UPDATE `{$table}` SET `delete`=0, `user_update`='{$user}' WHERE `id`='{$id}'";
		mysql_query($qr) or ($this->_error = $this->_list_error[4]);
	}
	function delete() { //5
		$table = $this->_var2;
		$id = $this->_var5;
		$qr = "DELETE FROM `{$table}` WHERE `id`='{$id}'";
		mysql_query($qr) or ($this->_error = $this->_list_error[5]);
	}
	function select() { //6
		$table = $this->_var2;
		$field = $this->_var3; //array
		$order = $this->_var4;
		$limit = $this->_var5;//array chỉ 2 phần tử
		if(count($limit) > 0){
			$form = $limit[0];
			$max_results = $limit[1];
			$limit = " LIMIT {$form}, {$max_results}";
		} else $limit = '';
		$qr = "SELECT ";
		for($i = 0; $i < count($field); $i++){
			if($i != (count($field)-1)) $dau = ",";
			else $dau = '';
			$qr .= $field[$i].$dau;
		}
		$qr .= " FROM `{$table}` WHERE `delete`=0 AND lang='".$_SESSION['language']."' {$order} {$limit}";
		return mysql_query($qr);
	}
	function status() { //7
		$table = $this->_var2;
		$user = $this->_var3;
		$set = $this->_var4;
		$id = $this->_var5;
		$qr = "UPDATE `{$table}` SET `status`='{$set}', `user_update`='{$user}' WHERE `id`='{$id}'";
		mysql_query($qr) or ($this->_error = $this->_list_error[7]);
	}
	function select2() { //8
		$table = $this->_var2;
		$field = $this->_var3; //array
		$order = $this->_var4;
		$limit = $this->_var5;//array chỉ 2 phần tử
		if(count($limit) > 0){
			$form = $limit[0];
			$max_results = $limit[1];
			$limit = " LIMIT {$form}, {$max_results}";
		} else $limit = '';
		$qr = "SELECT ";
		for($i = 0; $i < count($field); $i++){
			if($i != (count($field)-1)) $dau = ",";
			else $dau = '';
			$qr .= $field[$i].$dau;
		}
		$qr .= " FROM `{$table}` WHERE `delete`=0 {$order} {$limit}";
		return mysql_query($qr);
	}
}