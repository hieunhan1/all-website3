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
	
	function get_sql($type, $table, $fields, $values, $id=NULL){
		$this->_var1 = $type;
		$this->_var2 = $table;
		$this->_var3 = $fields;
		$this->_var4 = $values;
		$this->_var5 = $id;
	}
	function executable(){
		switch($this->_var1){
			case 1 : $action = $this->create();		break;
			case 2 : $action = $this->update();		break;
			case 3 : $action = $this->select(); 	break;
			
			default : $this->_error = $this->_list_error[0];
		}
		return $action;
	}
	
	function KiemTra(){
		if(count($this->_error) == 0) return $this->_error = $this->_list_error[89];
		else return $this->_error;
	}
	
	/* 1. create */
	function create(){
		$table  = $this->_var2;
		$field = $this->_var3;
		$value = $this->_var4;
		
		for($i=0; $i<count($field)-1; $i++){
			$str_field .= "`{$field[$i]}`,";
		}
		$str_field = rtrim($str_field,',');
		
		for($i = 0; $i < count($field)-1; $i++){
			$str_value .= "'{$value[$i]}',";
		}
		$str_value = rtrim($str_value,',');
		
		$str = "INSERT INTO  `{$table}` ( {$str_field} ) VALUES ( {$str_value} )";
		return mysql_query($str);
	}
	/* 2. update */
	function update(){
		$table = $this->_var2;
		$field = $this->_var3;
		$value = $this->_var4;
		$id = $this->_var5;
		
		for($i=0; $i<count($field)-1; $i++){
			$str .= "`{$field[$i]}`='{$value[$i]}',";
		}
		$str = rtrim($str,',');
		
		$str = "UPDATE `{$table}` SET {$str} WHERE `delete`=0 AND `id`='{$id}' ";
		return mysql_query($str);
	}
	/* 3. select */
	function select(){
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
}