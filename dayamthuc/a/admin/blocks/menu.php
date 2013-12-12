<div id="content">
    <div class="row" style="background-color:#88C4FF; font-weight:bold">
    <?php for($i=0; $i<= count($column_full); $i++) echo $column_full[$i];?>
    </div>
    
    <?php
	$field = array('id','name', 'status','user_create','date_create','user_update','date_update','order');
	$level = 0;
	$style1 = '&nbsp;';
	$style2 = '&nbsp;-- ';
	$str_query = array("SELECT id, name, date_create, date_update, `order`, status, user_create, user_update FROM menu ", " WHERE `delete`=0 AND lang='".$_SESSION['language']."' AND parent_id= ", " ORDER BY `order` ");
	$form->getProperties($level, $style1, 9, $style2, $str_query);
	$values = $form->DisplayProperties();
	foreach($values as $row){
		echo list_column($page, $row[$field[0]], $row[$field[1]], $row[$field[2]], $row[$field[3]], $row[$field[4]], $row[$field[5]], $row[$field[6]], $row[$field[7]]);
	}
	?>
    
</div>