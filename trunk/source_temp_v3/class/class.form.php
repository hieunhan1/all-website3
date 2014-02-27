<?php
class form {
	var $_type;
	var $_values;
	var $_properties;
	var $_views;
	var $_others;
	
	function getProperties($type,$values,$properties,$views,$others=NULL){
		$this->_type = $type;
		$this->_values = $values;
		$this->_properties = $properties;
		$this->_views = $views;
		$this->_others = $others;
	}
	
	function DisplayProperties(){
		
		switch($this->_type){
			case 1 : $display = $this->input_text();			break;
			case 2 : $display = $this->input_hidden();			break;
			case 3 : $display = $this->textarea();				break;
			case 4 : $display = $this->input_radio();			break;
			case 5 : $display = $this->select();				break;
			case 6 : $display = $this->input_button();			break;
			case 7 : $display = $this->input_checkbox();		break;
			case 8 : $display = $this->DeQuy();					break;
			case 9 : $display = $this->input_submit();			break;
			
			default : $display = 'Không có form thuộc tính bạn yêu cầu';
		}
		return $display;
	}
	
	/* 1. input_text */
	function input_text(){
		$values = $this->_values;
		$properties = $this->_properties; /*maxlength other*/
		$views = $this->_views; /*label id&name class style*/
		$others = $this->_others;
		$str = '<tr><td class="label">'.$views[0].'</td>
		<td><input type="text" name="'.$views[1].'" id="'.$views[1].'" class="'.$views[2].'" '.$views[3].' value="'.$values.'" maxlength="'.$properties[0].'" '.$properties[1].' />'.$others.'</td></tr>';
		return $str;
	}
	/* 2. input_hidden */
	function input_hidden(){
		$values = $this->_values;
		$views = $this->_views; /*name*/

		$str = '<input type="hidden" name="'.$views.'" value="'.$values.'" />';
		return $str;
	}
	/* 3. textarea */
	function textarea(){
		$values = $this->_values;
		$properties = $this->_properties; /*other*/
		$views = $this->_views; /*label id&name class style*/
		$others = $this->_others;
		$str = '<tr><td class="label">'.$views[0].'</td>
    	<td><textarea name="'.$views[1].'" id="'.$views[1].'" class="'.$views[2].'" '.$views[3].' '.$properties.'>'.$values.'</textarea></td></tr>';
		return $str;
	}
	/* 4. input_radio */
	function input_radio(){
		$values = $this->_values;
		$properties = $this->_properties; /*check*/
		$views = $this->_views; /*label name class*/
		
		foreach($values as $value){
			if($value['id'] != $properties) $check = ''; else $check = 'checked="checked"';
			$str .= '<input type="radio" name="'.$views[1].'" class="'.$views[2].'" value="'.$value['id'].'" '.$check.' /> '.$value['name'].' &nbsp; ';
		}
		
		$str = '<tr><td class="label">'.$views[0].'</td> <td>'.$str.'</td></tr>';
		return $str;
	}
	/* 5. select */
	function select(){
		$values = $this->_values;
		$properties = $this->_properties; /*check*/
		$views = $this->_views; /*label id&name class*/
		
		foreach($values as $value){
			if($value['id'] != $properties) $select = ''; else $select = 'selected="selected"';
			$str .= '<option value="'.$value['id'].'" '.$select.'>'.$value['name'].'</option>';
		}
		
		$str = '<tr><td class="label">'.$views[0].'</td>
		<td><select name="'.$views[1].'" id="'.$views[1].'" class="'.$views[2].'">'.$str.'</select></td></tr>';
		return $str;
	}
	/* 6. input_button*/
	function input_button(){
		$values = $this->_values;
		$views = $this->_views; /*label id&name class style*/
		$str = ' <input type="button" name="'.$views[1].'" id="'.$views[1].'" value="'.$views[0].'" class="'.$views[2].'" onclick="BrowseServer(\'Images:/\',\''.$values.'\')" />';
		return $str;
	}
	/* 7. input_checkbox */
	function input_checkbox(){
		$values = $this->_values;
		$properties = $this->_properties; /*check*/
		$views = $this->_views; /*label name class*/
		
		foreach($values as $value){
			if (preg_match("/,{$value['id']},/",$properties)) $check = 'checked="checked"'; else  $check = '';
			$str .= '<input type="checkbox" name="'.$views[1].'" class="'.$views[2].'" value="'.$value['id'].'" '.$check.' /> '.$value['name'].' <br />';
		}
		
		$str = '<tr><td class="label">'.$views[0].'</td> <td>'.$str.'</td></tr>';
		return $str;
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