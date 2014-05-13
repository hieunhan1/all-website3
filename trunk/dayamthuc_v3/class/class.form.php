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
			case 10 : $display = $this->text_info();			break;
			
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

		$str = '<input type="hidden" name="'.$views.'" id="'.$views.'" value="'.$values.'" />';
		return $str;
	}
	/* 3. textarea */
	function textarea(){
		$values = $this->_values;
		$properties = $this->_properties; /*other*/
		$views = $this->_views; /*label id&name class colspan*/
		$others = $this->_others;
		if($views[3]==''){
			$str = '<tr><td class="label">'.$views[0].'</td>
    		<td><textarea name="'.$views[1].'" id="'.$views[1].'" class="'.$views[2].'" '.$properties.'>'.$values.'</textarea>'.$others.'</td></tr>';
		}else{
			$str = '<tr><td colspan="2"><textarea name="'.$views[1].'" id="'.$views[1].'" class="'.$views[2].'" '.$properties.'>'.$values.'</textarea>'.$others.'</td></tr>';
		}
		return $str;
	}
	/* 4. input_radio */
	function input_radio(){
		$values = $this->_values;
		$properties = $this->_properties; /*check*/
		$views = $this->_views; /*label name class other*/
		
		foreach($values as $value){
			if($value['id'] != $properties) $check = ''; else $check = 'checked="checked"';
			$str .= '<input type="radio" name="'.$views[1].'" class="'.$views[2].'" value="'.$value['id'].'" '.$check.' /> '.$value['name'].$views[3];
		}
		
		$str = '<tr><td class="label">'.$views[0].'</td> <td>'.$str.'</td></tr>';
		return $str;
	}
	/* 5. select */
	function select(){
		$values = $this->_values;
		$properties = $this->_properties; /*check*/
		$views = $this->_views; /*label id&name class*/
		$others = $this->_others;
		
		foreach($values as $value){
			if($value['id'] != $properties) $select = ''; else $select = 'selected="selected"';
			$str .= '<option value="'.$value['id'].'" '.$select.'>'.$value['name'].'</option>';
		}
		
		if($views[0] == '') $str = '<select name="'.$views[1].'" id="'.$views[1].'" class="'.$views[2].'">'.$str.'</select>';
		else $str = '<tr><td class="label">'.$views[0].'</td> <td><select name="'.$views[1].'" id="'.$views[1].'" class="'.$views[2].'">'.$str.'</select>'.$others.'</td></tr>';
		
		return $str;
	}
	/* 6. input_button*/
	function input_button(){
		$values = $this->_values;
		$views = $this->_views; /*label id&name class style*/
		if($values != '') $values = 'onclick="BrowseServer(\'Images:/\',\''.$values.'\')"'; else $values = '';
		$str = ' <input type="button" name="'.$views[1].'" id="'.$views[1].'" value="'.$views[0].'" class="'.$views[2].'" '.$values.' />';
		return $str;
	}
	/* 7. input_checkbox */
	function input_checkbox(){
		$values = $this->_values;
		$properties = $this->_properties; /*check*/
		$views = $this->_views; /*label name class width*/
		
		foreach($values as $value){
			if (preg_match("/,{$value['id']},/",$properties)) $check = 'checked="checked"'; else  $check = '';
			$str .= '<input type="checkbox" name="'.$views[1].'" class="'.$views[2].'" value="'.$value['id'].'" '.$check.' /> '.$value['name'].' <br />';
		}
		
		if($views[3] != ''){
			if($views[0] != '') $label = "<b>{$views[0]}</b><br />";
			$str = '<div style="float:left; padding:5px; border:solid 1px #999; background-color:#FFC; overflow:auto; '.$views[3].'">'.$label.$str.'</div>';
		}
		
		return $str;
	}
	/* 9. input_submit */
	function input_submit(){
		$properties = $this->_properties; /*other*/
		$views = $this->_views; /*label id&name class style*/
		$others = $this->_others;
		$str = '<tr><td>&nbsp;</td>
		<td><input type="submit" name="'.$views[1].'" id="'.$views[1].'" class="'.$views[2].'" '.$views[3].' value="'.$views[0].'" '.$properties.' /> '.$others.'</td></tr>';
		return $str;
	}
	function DeQuy(){
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
	function text_info(){
		$values = $this->_values;
		$properties = $this->_properties; /*maxlength other*/
		$views = $this->_views; /*label id&name style*/
		$str = '<tr><td class="label">'.$views[0].'</td>
		<td><p id="'.$views[1].'" style="'.$views[2].'">'.$values.'</p>'.$properties.'</td></tr>';
		return $str;
	}
}