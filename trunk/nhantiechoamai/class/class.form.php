<?php
class form {
	var $_displayname;
	var $_name;
	var $_type;
	var $_cssclass;
	var $_value;
	var $_length;
	var $_orther;
	
	var $_cssid;
	var $_errors;
	
	function getProperties($displayname, $name, $type, $cssclass, $value = NULL, $length = NULL, $orther = NULL){
		$this->_displayname = $displayname;
		$this->_name = $name;
		$this->_type = $type;
		$this->_cssclass = $cssclass;
		$this->_value = $value;
		$this->_length = $length;
		$this->_orther = $orther;
	}
	function setProperties(){
		$this->_cssid = $this->_name;
	}
	function DisplayProperties(){
		$this->setProperties();
		switch($this->_type){
			case 1  : $display = $this->input_text();			break;
			case 2  : $display = $this->input_hidden();			break;
			case 3  : $display = $this->textarea();				break;
			case 4  : $display = $this->input_checkbox();		break;
			case 41 : $display = $this->input_checkbox_group();	break;
			case 5  : $display = $this->input_radio();			break;
			case 6  : $display = $this->select();				break;
			case 7  : $display = $this->input_button();			break;
			case 8  : $display = $this->input_submit();			break;
			case 9  : $display = $this->DeQuy();				break;
			
			default : $display = 'Không có form thuộc tính bạn yêu cầu';
		}
		return $display;
	}
	function input_text(){ // 1
		$displayname = $this->_displayname;
		$name = $this->_name;
		$cssclass = $this->_cssclass;
		$length = $this->_length;
		$value = $this->_value;
		if($this->_orther == NULL) $orther = '';
		else $orther = $this->_orther;
		$str .= "<tr><th align='right'>{$displayname}</th><td>";
		$str .= "<input type='text' name='{$name}' id='{$name}' class='{$cssclass}' maxlength='{$this->_length}' value='{$value}' />";
		$str .= $orther;
		$str .= '</td></tr>';
		
		return $str;
	}
	function input_hidden(){ // 2
		$name = $this->_name;
		$length = $this->_length;
		$value = $this->_value;
		if($this->_orther == NULL) $orther = '';
		else $orther = $this->_orther;
		$str .= "<input type='hidden' name='{$name}' id='{$name}' maxlength='{$length}' value='{$value}' />";
		$str .= $orther;
		
		return $str;
	}
	function textarea(){ // 3
		$displayname = $this->_displayname;
		$name = $this->_name;
		$cssclass = $this->_cssclass;
		$colspan = $this->_length;
		$value = $this->_value;
		if($this->_orther == NULL) $orther = '';
		else $orther = $this->_orther;
		if($colspan <= 1){
			$str .= "<tr><th align='right' valign='top'>{$displayname}</th><td>";
			$str .= "<textarea name='{$name}' id='{$name}' class='{$cssclass}'>{$value}</textarea>";
			$str .= $orther;
			$str .= '</td></tr>';
		} else {
			$str .= "<tr><td colspan='{$colspan}'><textarea name='{$name}' id='{$name}' class='{$cssclass}'>{$value}</textarea>";
			$str .= '</td></tr>';
			$str .= $orther;
		}
		
		return $str;
	}
	function input_checkbox(){ // 4
		
	}
	function input_checkbox_group(){ // 41
		$displayname = $this->_displayname;
		$name = $this->_name;
		$cssclass = $this->_cssclass;
		$checks = explode(',', $this->_length);
		$values = $this->_value;
		if($this->_orther == NULL) $orther = '';
		else $orther = $this->_orther;
		$str .= "<tr><th align='right' valign='top'>{$displayname}</th><td><div class='{$cssclass}'>";
		foreach($values as $value){
			$str .= "<input type='checkbox' name='{$name}' class='{$orther}' value='{$value[id]}' ";
			for($i=0; $i < count($checks); $i++){
				if($checks[$i] == $value['id']) $str .= " checked='checked' ";
			}
			$str .= " />&nbsp; {$value[name]} <br />";
		}
		//$str .= $orther;
		$str .= '</div></td></tr>';
		
		return $str;
	}
	function input_radio(){ // 5 
		$displayname = $this->_displayname;
		$name = $this->_name;
		$check = $this->_cssclass;
		$value = $this->_value;
		$value_k = array_keys($value);
		$value_v = array_values($value);
		if($this->_length == NULL) $orther = '';
		else $orther = $this->_length;
		$str .= "<tr><th align='right' valign='top'>{$displayname}</th><td>";
		for($i = 0; $i < count($value); $i++){
			if($value_k[$i] == $check) $checked = "checked='checked'"; else $checked = '';
			$str .= "<input type='radio' name='{$name}' id='{$name}_{$i}' {$checked} value='{$value_k[$i]}' /> {$value_v[$i]}".$orther;
		}
		$str .= '</td></tr>';
		
		return $str;
	}
	function select(){ // 6
		$displayname = $this->_displayname;
		$name = $this->_name;
		$cssclass = $this->_cssclass;
		$values = $this->_value;
		$check = $this->_length;
		$str .= "<tr><th align='right'>{$displayname}</th><td>";
		$str .= "<select name='{$name}' class='{$cssclass}'><option value='0'>-- Danh mục gốc --</option>";
		foreach($values as $value){
			if($check != $value['id']) $str .= "<option value='{$value[id]}'>$value[name]</option>";
			else $str .= "<option value='{$value[id]}' selected='selected'>$value[name]</option>";;
		}
		$str .= '</select></td></tr>';
		
		return $str;
	}
	function input_button(){ // 7
		$displayname = $this->_displayname;
		$name = $this->_name;
		$cssclass = $this->_cssclass;
		if($this->_orther == NULL) $orther = '';
		else $orther = $this->_orther;
		$str .= "<input type='button' name='{$name}' id='{$name}' value='{$displayname}' class='{$cssclass}' ";
		$str .= $orther;
		$str .= '/>';
		
		return $str;
	}
	function input_submit(){ // 8
		
	}
	function DeQuy(){ //9
		$displayname = $this->_displayname;
		$name = $this->_name;
		$value = $this->_value;
		return $this->RunDeQuy($displayname, $name, NULL, $value);
	}
	function RunDeQuy($level, $style1, $arr = NULL, $str){  //9
		if(!$arr) $arr = array();
		$style2 = $this->_cssclass;
		
		$qr = $str[0].$str[1].$level.$str[2]; // SELECT FROM, WHERE, ĐK truyền vào, Sắp xếp
		$sql = mysql_query($qr);
		while($row = mysql_fetch_array($sql)){
			$arr[] = array('id'=>$row['id'],'name'=>$style1.$row['name'],'date_create'=>$row['date_create'],'date_update'=>$row['date_update'],'order'=>$row['order'],'status'=>$row['status'],'user_create'=>$row['user_create'],'user_update'=>$row['user_update']);
			$arr = $this->RunDeQuy($row['id'],$style1.$style2, $arr, $str);
		}
		mysql_free_result($sql);
		
		return $arr;  
    }
}