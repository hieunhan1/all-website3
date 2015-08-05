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
			case 1 : $qr = $this->create(); if(mysql_query($qr)) $message = $this->_list_error[89]; else $message = $this->_list_error[1]; break;
			case 2 : $qr = $this->update();	if(mysql_query($qr)) $message = $this->_list_error[89]; else $message = $this->_list_error[2]; break;
			
			default : $message = $this->_list_error[0];
		}
		return $message;
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
			$strV = str_replace("'", '&#39;', $value[$i]);
			$str_value .= "'{$strV}',";
		}
		$str_value = rtrim($str_value,',');
		
		$str = "INSERT INTO  `{$table}` ( {$str_field} ) VALUES ( {$str_value} )";
		return $str;
	}
	/* 2. update */
	function update(){
		$table = $this->_var2;
		$field = $this->_var3;
		$value = $this->_var4;
		$id = $this->_var5;
		
		for($i=0; $i<count($field)-1; $i++){
			$strV = str_replace("'", '&#39;', $value[$i]);
			$str .= "`{$field[$i]}`='{$strV}',";
		}
		$str = rtrim($str,',');
		
		$str = "UPDATE `{$table}` SET {$str} WHERE `delete`=0 AND `id`='{$id}' ";
		return $str;
	}
}